abstract class Mapper<T> {
  Map<String, dynamic> toMap(T event);
  T fromMap(Map<dynamic, dynamic> map);
}
