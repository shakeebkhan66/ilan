// class ButtonModel {
//   int? _count;
//   dynamic _next;
//   dynamic _previous;
//   List<Results>? _results;
//
//   ButtonModel({int? count, dynamic next, dynamic previous, List<Results>? results}) {
//
//     this._count = count!;
//     this._next = next;
//     this._previous = previous;
//     this._results = results!;
//   }
//
//   int? get count => _count;
//   set count(int? count) => _count = count;
//   dynamic get next => _next;
//   set next(dynamic next) => _next = next;
//   dynamic get previous => _previous;
//   set previous(dynamic previous) => _previous = previous;
//   List<Results>? get results => _results;
//   set results(List<Results>? results) => _results = results;
//
//   ButtonModel.fromJson(Map<String, dynamic> json) {
//     _count = json['count'];
//     _next = json['next'];
//     _previous = json['previous'];
//     if (json['results'] != null) {
//       _results = <Results>[];
//       json['results'].forEach((v) {
//         _results?.add(Results.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data =  Map<String, dynamic>();
//     data['count'] = this._count;
//     data['next'] = this._next;
//     data['previous'] = this._previous;
//     final _results = this._results;
//     if (_results != null) {
//       data['results'] = _results.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Results {
//   int? _pk;
//   String? _name;
//   String? _deviceName;
//   String? _areaName;
//   List<AccessProfiles>? _accessProfiles;
//   String? _freeAccessScheduleName;
//   int? _freeAccessSchedule;
//   String? _deviceId;
//   int? _areaId;
//   String? _stateDisplay;
//   int? _grantedUsersCount;
//   Actions? _actions;
//
//   Results(
//       { int? pk,
//          String? name,
//          String? deviceName,
//          String? areaName,
//          List<AccessProfiles>? accessProfiles,
//          String? freeAccessScheduleName,
//          int? freeAccessSchedule,
//          String? deviceId,
//          int? areaId,
//          String? stateDisplay,
//          int? grantedUsersCount,
//          Actions? actions}) {
//     this._pk = pk!;
//     this._name = name!;
//     this._deviceName = deviceName!;
//     this._areaName = areaName!;
//     this._accessProfiles = accessProfiles!;
//     this._freeAccessScheduleName = freeAccessScheduleName!;
//     this._freeAccessSchedule = freeAccessSchedule!;
//     this._deviceId = deviceId!;
//     this._areaId = areaId!;
//     this._stateDisplay = stateDisplay!;
//     this._grantedUsersCount = grantedUsersCount!;
//     this._actions = actions!;
//   }
//
//   int? get pk => _pk;
//   set pk(int? pk) => _pk = pk!;
//   String? get name => _name;
//   set name(String? name) => _name = name!;
//   String? get deviceName => _deviceName;
//   set deviceName(String? deviceName) => _deviceName = deviceName!;
//   String? get areaName => _areaName;
//   set areaName(String? areaName) => _areaName = areaName!;
//   List<AccessProfiles>? get accessProfiles => _accessProfiles;
//   set accessProfiles(List<AccessProfiles>? accessProfiles) =>
//       _accessProfiles = accessProfiles!;
//   String? get freeAccessScheduleName => _freeAccessScheduleName;
//   set freeAccessScheduleName(String? freeAccessScheduleName) =>
//       _freeAccessScheduleName = freeAccessScheduleName!;
//   int? get freeAccessSchedule => _freeAccessSchedule;
//   set freeAccessSchedule(int? freeAccessSchedule) =>
//       _freeAccessSchedule = freeAccessSchedule!;
//   String? get deviceId => _deviceId;
//   set deviceId(String? deviceId) => _deviceId = deviceId!;
//   int? get areaId => _areaId;
//   set areaId(int? areaId) => _areaId = areaId!;
//   String? get stateDisplay => _stateDisplay;
//   set stateDisplay(String? stateDisplay) => _stateDisplay = stateDisplay!;
//   int? get grantedUsersCount => _grantedUsersCount;
//   set grantedUsersCount(int? grantedUsersCount) =>
//       _grantedUsersCount = grantedUsersCount!;
//   Actions? get actions => _actions;
//   set actions(Actions? actions) => _actions = actions!;
//
//   Results.fromJson(Map<String, dynamic> json) {
//     _pk = json['pk'];
//     _name = json['name'];
//     _deviceName = json['device_name'];
//     _areaName = json['area_name'];
//     if (json['access_profiles'] != null) {
//       _accessProfiles = <AccessProfiles>[];
//       json['access_profiles'].forEach((v) {
//         _accessProfiles?.add(AccessProfiles.fromJson(v));
//       });
//     }
//     _freeAccessScheduleName = json['free_access_schedule_name'];
//     _freeAccessSchedule = json['free_access_schedule'];
//     _deviceId = json['device_id'];
//     _areaId = json['area_id'];
//     _stateDisplay = json['state_display'];
//     _grantedUsersCount = json['granted_users_count'];
//     _actions =
//     (json['actions'] != null ? Actions.fromJson(json['actions']) : null)!;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['pk'] = this._pk;
//     data['name'] = this._name;
//     data['device_name'] = this._deviceName;
//     data['area_name'] = this._areaName;
//     final _accessProfiles = this._accessProfiles;
//     if (_accessProfiles != null) {
//       data['access_profiles'] =
//           _accessProfiles.map((v) => v.toJson()).toList();
//     }
//     data['free_access_schedule_name'] = this._freeAccessScheduleName;
//     data['free_access_schedule'] = this._freeAccessSchedule;
//     data['device_id'] = this._deviceId;
//     data['area_id'] = this._areaId;
//     data['state_display'] = this._stateDisplay;
//     data['granted_users_count'] = this._grantedUsersCount;
//     final _actions = this._actions;
//     if (_actions != null) {
//       data['actions'] = _actions.toJson();
//     }
//     return data;
//   }
// }
//
// class AccessProfiles {
//   String? _url;
//   int? _pk;
//   String? _name;
//
//   AccessProfiles({String? url, int? pk, String? name}) {
//     this._url = url;
//     this._pk = pk;
//     this._name = name;
//   }
//
//   String? get url => _url;
//   set url(String? url) => _url = url;
//   int? get pk => _pk;
//   set pk(int? pk) => _pk = pk;
//   String? get name => _name;
//   set name(String? name) => _name = name;
//
//   AccessProfiles.fromJson(Map<String, dynamic> json) {
//     _url = json['url'];
//     _pk = json['pk'];
//     _name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['url'] = this._url;
//     data['pk'] = this._pk;
//     data['name'] = this._name;
//     return data;
//   }
// }
//
// class Actions {
//   LockDoors? _lockDoors;
//   LockDoors? _openDoors;
//   LockDoors? _fullOpenDoors;
//
//   Actions({LockDoors? lockDoors, LockDoors? openDoors, LockDoors? fullOpenDoors}) {
//     this._lockDoors = lockDoors;
//     this._openDoors = openDoors;
//     this._fullOpenDoors = fullOpenDoors;
//   }
//
//   LockDoors? get lockDoors => _lockDoors;
//   set lockDoors(LockDoors? lockDoors) => _lockDoors = lockDoors;
//   LockDoors? get openDoors => _openDoors;
//   set openDoors(LockDoors? openDoors) => _openDoors = openDoors;
//   LockDoors? get fullOpenDoors => _fullOpenDoors;
//   set fullOpenDoors(LockDoors? fullOpenDoors) => _fullOpenDoors = fullOpenDoors;
//
//   Actions.fromJson(Map<String, dynamic> json) {
//     _lockDoors = json['lock-doors'] != null
//         ? LockDoors.fromJson(json['lock-doors'])
//         : null;
//     _openDoors = json['open-doors'] != null
//         ?  LockDoors.fromJson(json['open-doors'])
//         : null;
//     _fullOpenDoors = json['full-open-doors'] != null
//         ?  LockDoors.fromJson(json['full-open-doors'])
//         : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     final _lockDoors = this._lockDoors;
//     if (_lockDoors != null) {
//       data['lock-doors'] = _lockDoors.toJson();
//     }
//     final _openDoors = this._openDoors;
//     if (_openDoors != null) {
//       data['open-doors'] = _openDoors.toJson();
//     }
//     final _fullOpenDoors = this._fullOpenDoors;
//     if (_fullOpenDoors != null) {
//       data['full-open-doors'] = _fullOpenDoors.toJson();
//     }
//     return data;
//   }
// }
//
// class LockDoors {
//   String? _url;
//   String? _method;
//   String? _label;
//   String? _type;
//   String? _buttonType;
//   String? _buttonClasses;
//   bool? _disabled;
//
//   LockDoors(
//       {String? url,
//         String? method,
//         String? label,
//         String? type,
//         String? buttonType,
//         String? buttonClasses,
//         bool? disabled}) {
//     this._url = url;
//     this._method = method;
//     this._label = label;
//     this._type = type;
//     this._buttonType = buttonType;
//     this._buttonClasses = buttonClasses;
//     this._disabled = disabled;
//   }
//
//   String? get url => _url;
//   set url(String? url) => _url = url;
//   String? get method => _method;
//   set method(String? method) => _method = method;
//   String? get label => _label;
//   set label(String? label) => _label = label;
//   String? get type => _type;
//   set type(String? type) => _type = type;
//   String? get buttonType => _buttonType;
//   set buttonType(String? buttonType) => _buttonType = buttonType;
//   String? get buttonClasses => _buttonClasses;
//   set buttonClasses(String? buttonClasses) => _buttonClasses = buttonClasses;
//   bool? get disabled => _disabled;
//   set disabled(bool? disabled) => _disabled = disabled;
//
//   LockDoors.fromJson(Map<String, dynamic> json) {
//     _url = json['url'];
//     _method = json['method'];
//     _label = json['label'];
//     _type = json['type'];
//     _buttonType = json['button_type'];
//     _buttonClasses = json['button_classes'];
//     _disabled = json['disabled'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = Map<String, dynamic>();
//     data['url'] = this._url;
//     data['method'] = this._method;
//     data['label'] = this._label;
//     data['type'] = this._type;
//     data['button_type'] = this._buttonType;
//     data['button_classes'] = this._buttonClasses;
//     data['disabled'] = this._disabled;
//     return data;
//   }
// }
