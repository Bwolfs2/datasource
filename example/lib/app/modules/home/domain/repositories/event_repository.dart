import '../entities/event_entity.dart';

abstract class IEventRepository {
  Future<EventEntity> getEventByid(String id);
  Future<bool> addOrUpdateEvent(EventEntity eventEntity);
  Future<List<EventEntity>> getEvents();
  Future<bool> removeEventById(String id);
  Future<Stream<List<EventEntity>>> getEventsRealtime();
}
