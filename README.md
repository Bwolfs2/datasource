This package will help to consume a Cloud Firebase using a Generic Datasource

## Usage

You just need to implement new features, because the Datasource will provide addOrUpdate, getByid, getAll, removeById and getStream for your Datasource.
PS: Don`t forget to implement your Mapper :C

```dart
class YourDatasourceImpl extends Datasource<YourEntity> with YourMapper implements IYourDatasource {
  YourDatasourceImpl() : super('events_entity');

  @override
  Future<String> getLastName() {
    throw UnimplementedError();
  }
}
```
