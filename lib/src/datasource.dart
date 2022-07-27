import 'package:cloud_firestore/cloud_firestore.dart';

import 'entity.dart';
import 'mapper.dart';

abstract class Datasource<T extends Entity> extends Mapper<T> {
  late CollectionReference _collection;
  Datasource(String collection) {
    _collection = FirebaseFirestore.instance.collection(collection);
  }

  CollectionReference get collection => _collection;

  Future<bool> addOrUpdate(T eventEntity) async {
    _collection.doc(eventEntity.id).set(toMap(eventEntity));
    return true;
  }

  Future<T> getByid(String id) async {
    var result = await _collection.doc(id).get();
    return fromMap(result.data() as Map);
  }

  Future<List<T>> getAll() async {
    var result = await _collection.get();
    return result.docs.map((e) => fromMap(e.data() as Map)).toList();
  }

  Future<bool> removeById(String id) async {
    await _collection.doc(id).delete();
    return true;
  }

  Future<Stream<List<T>>> getStream() async {
    var result = _collection.snapshots();
    return result.map((events) => events.docs.map((e) => fromMap(e.data() as Map)).toList());
  }
}
