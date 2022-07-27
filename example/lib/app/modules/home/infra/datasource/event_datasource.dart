import '../../domain/entities/event_entity.dart';

abstract class IEventDatasource {
  Future<EventEntity> getByid(String id);
  Future<bool> addOrUpdate(EventEntity eventEntity);
  Future<List<EventEntity>> getAll();
  Future<bool> removeById(String id);
  Future<Stream<List<EventEntity>>> getStream();
  Future<String> getLastName();
}
