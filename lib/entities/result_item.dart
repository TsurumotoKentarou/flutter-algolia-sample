import 'package:json_annotation/json_annotation.dart';

part 'result_item.g.dart';

@JsonSerializable()
class ResultItem {
  String objectID = "";

  String name = "";

  String winery = "";

  String place = "";

  double evaluation = 0.0;

  int country = 0;

  String freeComment = "";

  int type = 0;

  int Variety = 0;

  int price = 0;

  double shumi = 0.0;

  double amami = 0.0;

  double kajitumi = 0.0;

  double nigami = 0.0;

  double volume = 0.0;

  double kaori = 0.0;

  ResultItem();

  factory ResultItem.fromJson(Map<String, dynamic> json) =>
      _$ResultItemFromJson(json);
  Map<String, dynamic> toJson() => _$ResultItemToJson(this);
}
