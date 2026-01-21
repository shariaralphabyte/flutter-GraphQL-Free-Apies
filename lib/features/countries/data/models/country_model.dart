
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/country_entity.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel {
  const CountryModel._();

  const factory CountryModel({
    required String code,
    required String name,
    required String native,
    required String capital,
    required String emoji,
    required String currency,
    required List<LanguageModel> languages,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}

// Extension for toEntity method
extension CountryModelX on CountryModel {
  Country toEntity() => Country(
    code: code,
    name: name,
    native: native,
    capital: capital,
    emoji: emoji,
    currency: currency,
    languages: languages.map((lang) => lang.toEntity()).toList(),
  );
}

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String code,
    required String name,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}

// Extension for toEntity method
extension LanguageModelX on LanguageModel {
  Language toEntity() => Language(code: code, name: name);
}