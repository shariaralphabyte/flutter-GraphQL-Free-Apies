
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_entity.freezed.dart';
part 'country_entity.g.dart';

@freezed
class Language with _$Language {
  const factory Language({
    required String code,
    required String name,
  }) = _Language;

  factory Language.fromJson(Map<String, dynamic> json) =>
      _$LanguageFromJson(json);
}

@freezed
class Country with _$Country {
  const Country._();

  const factory Country({
    required String code,
    required String name,
    required String native,
    required String capital,
    required String emoji,
    required String currency,
    required List<Language> languages,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  // Helper methods
  String get flagAndName => '$emoji $name';
  String get displayInfo => '$capital • $currency';
  bool matchesSearch(String query) {
    final searchLower = query.toLowerCase();
    return name.toLowerCase().contains(searchLower) ||
        native.toLowerCase().contains(searchLower) ||
        capital.toLowerCase().contains(searchLower) ||
        code.toLowerCase().contains(searchLower);
  }
}