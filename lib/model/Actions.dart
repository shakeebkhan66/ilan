import 'LockDoors.dart';
import 'OpenDoors.dart';
import 'FullOpenDoors.dart';

class Actions {
  Actions({
      required this.lockdoors,
      required this.opendoors,
      required this.fullopendoors,});

  Actions.fromJson(dynamic json) {
    lockdoors = json['lock-doors'] != null ? LockDoors.fromJson(json['lock-doors']) : null;
    opendoors = json['open-doors'] != null ? OpenDoors.fromJson(json['open-doors']) : null;
    fullopendoors = json['full-open-doors'] != null ? FullOpenDoors.fromJson(json['full-open-doors']) : null;
  }
  LockDoors? lockdoors;
  OpenDoors? opendoors;
  FullOpenDoors? fullopendoors;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    final lockdoors = this.lockdoors;
    if (lockdoors != null) {
      map['lock-doors'] = lockdoors.toJson();
    }
    final opendoors = this.opendoors;
    if (opendoors != null) {
      map['open-doors'] = opendoors.toJson();
    }
    final fullopendoors = this.fullopendoors;
    if (fullopendoors != null) {
      map['full-open-doors'] = fullopendoors.toJson();
    }
    return map;
  }

}