import 'package:datasource/datasource.dart';

import '../../domain/entities/event_entity.dart';
import '../../infra/datasource/event_datasource.dart';
import '../mappers/event_mapper.dart';

class EventDatasourceImpl extends Datasource<EventEntity> with EventMapper implements IEventDatasource {
  EventDatasourceImpl() : super('events_entity');

  @override
  Future<String> getLastName() {
    throw UnimplementedError();
  }
}
