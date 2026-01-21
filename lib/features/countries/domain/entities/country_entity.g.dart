// GENERATED CODE - DO NOT MODIFY BY HAND


// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


import 'country_entity.dart';

Language _$LanguageFromJson(Map<String, dynamic> json) => Language(
  code: json['code'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$LanguageToJson(Language instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
};

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
  code: json['code'] as String,
  name: json['name'] as String,
  native: json['native'] as String,
  capital: json['capital'] as String,
  emoji: json['emoji'] as String,
  currency: json['currency'] as String,
  languages: (json['languages'] as List<dynamic>)
      .map((e) => Language.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'native': instance.native,
  'capital': instance.capital,
  'emoji': instance.emoji,
  'currency': instance.currency,
  'languages': instance.languages.map((e) => e.toJson()).toList(),
};