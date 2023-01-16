import 'Results.dart';

class ButtonModel {
  ButtonModel({
      required this.count,
      this.next,
      this.previous,
      required this.results,});

  ButtonModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }
  int? count;
  dynamic next;
  dynamic previous;
  List<Results>? results;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['next'] = next;
    map['previous'] = previous;
    final results = this.results;
    if (results != null) {
      map['results'] = results.map((v) => v.toJson()).toList();
    }
    return map;
  }

}