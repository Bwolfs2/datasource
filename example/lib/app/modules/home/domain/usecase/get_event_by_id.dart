import '../entities/event_entity.dart';
import '../repositories/event_repository.dart';

class GetEventByid {
  final IEventRepository _eventRepository;

  GetEventByid(this._eventRepository);
  Future<EventEntity> call(String id) async {
    return await _eventRepository.getEventByid(id);
  }
}
