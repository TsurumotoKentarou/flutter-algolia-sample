// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultItem _$ResultItemFromJson(Map<String, dynamic> json) {
  return ResultItem()
    ..objectID = json['objectID'] as String
    ..name = json['name'] as String
    ..winery = json['winery'] as String
    ..place = json['place'] as String
    ..evaluation = (json['evaluation'] as num).toDouble()
    ..country = json['country'] as int
    ..freeComment = json['freeComment'] as String
    ..type = json['type'] as int
    ..Variety = json['Variety'] as int
    ..price = json['price'] as int
    ..shumi = (json['shumi'] as num).toDouble()
    ..amami = (json['amami'] as num).toDouble()
    ..kajitumi = (json['kajitumi'] as num).toDouble()
    ..nigami = (json['nigami'] as num).toDouble()
    ..volume = (json['volume'] as num).toDouble()
    ..kaori = (json['kaori'] as num).toDouble();
}

Map<String, dynamic> _$ResultItemToJson(ResultItem instance) =>
    <String, dynamic>{
      'objectID': instance.objectID,
      'name': instance.name,
      'winery': instance.winery,
      'place': instance.place,
      'evaluation': instance.evaluation,
      'country': instance.country,
      'freeComment': instance.freeComment,
      'type': instance.type,
      'Variety': instance.Variety,
      'price': instance.price,
      'shumi': instance.shumi,
      'amami': instance.amami,
      'kajitumi': instance.kajitumi,
      'nigami': instance.nigami,
      'volume': instance.volume,
      'kaori': instance.kaori,
    };
