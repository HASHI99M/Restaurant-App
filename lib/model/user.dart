import 'package:restaurant_app/model/ps_object.dart';

class User extends PsObject<User> {
  final int id;

  User({this.id});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          hashCode == other.hashCode;

  @override
  int get hashCode {
    int hash = 7;
    hash = hash * 37 + id.hashCode;
    return hash;
  }

  @override
  User fromMap(dynamicData) {
    // TODO: implement fromMap
    throw UnimplementedError();
  }

  @override
  List<User> fromMapList(List dynamicDataList) {
    // TODO: implement fromMapList
    throw UnimplementedError();
  }

  @override
  String getPrimaryKey() {
    // TODO: implement getPrimaryKey
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap(User object) {
    // TODO: implement toMap
    throw UnimplementedError();
  }

  @override
  List<Map<String, dynamic>> toMapList(List<User> objectList) {
    // TODO: implement toMapList
    throw UnimplementedError();
  }
}
