import '../entities/event_entity.dart';
import '../repositories/event_repository.dart';

class UpdateEvent {
  final IEventRepository _eventRepository;

  UpdateEvent(this._eventRepository);
  Future<bool> call(EventEntity eventEntity) async {
    return await _eventRepository.addOrUpdateEvent(eventEntity);
  }
}
