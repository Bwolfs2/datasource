import '../entities/event_entity.dart';
import '../repositories/event_repository.dart';

class GetEvents {
  final IEventRepository _eventRepository;

  GetEvents(this._eventRepository);
  Future<List<EventEntity>> call() async {
    return await _eventRepository.getEvents();
  }
}
