// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryModelImpl _$$CountryModelImplFromJson(Map<String, dynamic> json) =>
    _$CountryModelImpl(
      code: json['code'] as String,
      name: json['name'] as String,
      native: json['native'] as String? ?? '',
      capital: json['capital'] as String? ?? '',
      emoji: json['emoji'] as String? ?? '',
      currency: json['currency'] as String? ?? '',
      languages: (json['languages'] as List<dynamic>?)
              ?.map((e) => LanguageModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CountryModelImplToJson(_$CountryModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'native': instance.native,
      'capital': instance.capital,
      'emoji': instance.emoji,
      'currency': instance.currency,
      'languages': instance.languages,
    };

_$LanguageModelImpl _$$LanguageModelImplFromJson(Map<String, dynamic> json) =>
    _$LanguageModelImpl(
      code: json['code'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$LanguageModelImplToJson(_$LanguageModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
    };
