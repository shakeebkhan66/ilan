class LockDoors {
  LockDoors({
      required this.url,
      required this.method,
      required this.label,
      required this.type,
      required this.buttonType,
      required this.buttonClasses,
      required this.disabled,});

  LockDoors.fromJson(dynamic json) {
    url = json['url'];
    method = json['method'];
    label = json['label'];
    type = json['type'];
    buttonType = json['button_type'];
    buttonClasses = json['button_classes'];
    disabled = json['disabled'];
  }
  String? url;
  String? method;
  String? label;
  String? type;
  String? buttonType;
  String? buttonClasses;
  bool? disabled;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['method'] = method;
    map['label'] = label;
    map['type'] = type;
    map['button_type'] = buttonType;
    map['button_classes'] = buttonClasses;
    map['disabled'] = disabled;
    return map;
  }

}