import 'Actions.dart';

class Results {
  Results({
      required this.pk,
      required this.name,
      required this.deviceName,
      this.areaName, 
      required this.accessProfiles,
      required this.freeAccessScheduleName,
      required this.freeAccessSchedule,
      required this.deviceId,
      this.areaId, 
      required this.stateDisplay,
      required this.grantedUsersCount,
      required this.actions,});

  Results.fromJson(dynamic json) {
    pk = json['pk'];
    name = json['name'];
    deviceName = json['device_name'];
    areaName = json['area_name'];
    if (json['access_profiles'] != null) {
      accessProfiles = [];
      json['access_profiles'].forEach((v) {
        accessProfiles?.add(Results.fromJson(v));
      });
    }
    freeAccessScheduleName = json['free_access_schedule_name'];
    freeAccessSchedule = json['free_access_schedule'];
    deviceId = json['device_id'];
    areaId = json['area_id'];
    stateDisplay = json['state_display'];
    grantedUsersCount = json['granted_users_count'];
    actions = json['actions'] != null ? Actions.fromJson(json['actions']) : null;
  }
  int? pk;
  String? name;
  String? deviceName;
  dynamic areaName;
  List<dynamic>? accessProfiles;
  String? freeAccessScheduleName;
  int? freeAccessSchedule;
  String? deviceId;
  dynamic areaId;
  String? stateDisplay;
  int? grantedUsersCount;
  Actions? actions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pk'] = pk;
    map['name'] = name;
    map['device_name'] = deviceName;
    map['area_name'] = areaName;
    final accessProfiles = this.accessProfiles;
    if (accessProfiles != null) {
      map['access_profiles'] = accessProfiles.map((v) => v.toJson()).toList();
    }
    map['free_access_schedule_name'] = freeAccessScheduleName;
    map['free_access_schedule'] = freeAccessSchedule;
    map['device_id'] = deviceId;
    map['area_id'] = areaId;
    map['state_display'] = stateDisplay;
    map['granted_users_count'] = grantedUsersCount;
    final actions = this.actions;
    if (actions != null) {
      map['actions'] = actions.toJson();
    }
    return map;
  }

}