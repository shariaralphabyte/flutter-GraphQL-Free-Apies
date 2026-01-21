// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$graphQLClientHash() => r'c51d0e3f7efc6db988c415054e27b2fa3893994c';

/// See also [graphQLClient].
@ProviderFor(graphQLClient)
final graphQLClientProvider = AutoDisposeProvider<GraphQLClient>.internal(
  graphQLClient,
  name: r'graphQLClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$graphQLClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GraphQLClientRef = AutoDisposeProviderRef<GraphQLClient>;
String _$countryRemoteDataSourceHash() =>
    r'25ea3560278096ec46c8d816637ee4748cc41543';

/// See also [countryRemoteDataSource].
@ProviderFor(countryRemoteDataSource)
final countryRemoteDataSourceProvider =
    AutoDisposeProvider<CountryRemoteDataSource>.internal(
  countryRemoteDataSource,
  name: r'countryRemoteDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$countryRemoteDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CountryRemoteDataSourceRef
    = AutoDisposeProviderRef<CountryRemoteDataSource>;
String _$countryRepositoryHash() => r'b253ea953b2460b7d1e7ae812d22306e8c6b82dc';

/// See also [countryRepository].
@ProviderFor(countryRepository)
final countryRepositoryProvider =
    AutoDisposeProvider<CountryRepository>.internal(
  countryRepository,
  name: r'countryRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$countryRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CountryRepositoryRef = AutoDisposeProviderRef<CountryRepository>;
String _$getCountryHash() => r'4ef08e5f66a4b2ab80e9f0bfe42a4fd61c1cd13f';

/// See also [getCountry].
@ProviderFor(getCountry)
final getCountryProvider = AutoDisposeProvider<GetCountry>.internal(
  getCountry,
  name: r'getCountryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCountryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCountryRef = AutoDisposeProviderRef<GetCountry>;
String _$getCountriesHash() => r'c1e82ba11285e174d38064bc31e32c8e867040ed';

/// See also [getCountries].
@ProviderFor(getCountries)
final getCountriesProvider = AutoDisposeProvider<GetCountries>.internal(
  getCountries,
  name: r'getCountriesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCountriesRef = AutoDisposeProviderRef<GetCountries>;
String _$searchCountriesHash() => r'0d0f96e63aa1461aa9856cd91e645a05260f3ccf';

/// See also [searchCountries].
@ProviderFor(searchCountries)
final searchCountriesProvider = AutoDisposeProvider<SearchCountries>.internal(
  searchCountries,
  name: r'searchCountriesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$searchCountriesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef SearchCountriesRef = AutoDisposeProviderRef<SearchCountries>;
String _$getCountriesByContinentHash() =>
    r'e1c32299c9b9ffea9ce5622cbbfd17bcfddb1e41';

/// See also [getCountriesByContinent].
@ProviderFor(getCountriesByContinent)
final getCountriesByContinentProvider =
    AutoDisposeProvider<GetCountriesByContinent>.internal(
  getCountriesByContinent,
  name: r'getCountriesByContinentProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCountriesByContinentHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCountriesByContinentRef
    = AutoDisposeProviderRef<GetCountriesByContinent>;
String _$getCountriesByLanguageHash() =>
    r'a43cc6d8deaff3bd6bea5f741d8cf77b65c5632b';

/// See also [getCountriesByLanguage].
@ProviderFor(getCountriesByLanguage)
final getCountriesByLanguageProvider =
    AutoDisposeProvider<GetCountriesByLanguage>.internal(
  getCountriesByLanguage,
  name: r'getCountriesByLanguageProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCountriesByLanguageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCountriesByLanguageRef
    = AutoDisposeProviderRef<GetCountriesByLanguage>;
String _$countryDetailHash() => r'09d467529c2b87110dac1a994f3ce11b06ca090d';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [countryDetail].
@ProviderFor(countryDetail)
const countryDetailProvider = CountryDetailFamily();

/// See also [countryDetail].
class CountryDetailFamily extends Family<AsyncValue<Country>> {
  /// See also [countryDetail].
  const CountryDetailFamily();

  /// See also [countryDetail].
  CountryDetailProvider call({
    required String code,
  }) {
    return CountryDetailProvider(
      code: code,
    );
  }

  @override
  CountryDetailProvider getProviderOverride(
    covariant CountryDetailProvider provider,
  ) {
    return call(
      code: provider.code,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countryDetailProvider';
}

/// See also [countryDetail].
class CountryDetailProvider extends AutoDisposeFutureProvider<Country> {
  /// See also [countryDetail].
  CountryDetailProvider({
    required String code,
  }) : this._internal(
          (ref) => countryDetail(
            ref as CountryDetailRef,
            code: code,
          ),
          from: countryDetailProvider,
          name: r'countryDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countryDetailHash,
          dependencies: CountryDetailFamily._dependencies,
          allTransitiveDependencies:
              CountryDetailFamily._allTransitiveDependencies,
          code: code,
        );

  CountryDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.code,
  }) : super.internal();

  final String code;

  @override
  Override overrideWith(
    FutureOr<Country> Function(CountryDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CountryDetailProvider._internal(
        (ref) => create(ref as CountryDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        code: code,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Country> createElement() {
    return _CountryDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountryDetailProvider && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountryDetailRef on AutoDisposeFutureProviderRef<Country> {
  /// The parameter `code` of this provider.
  String get code;
}

class _CountryDetailProviderElement
    extends AutoDisposeFutureProviderElement<Country> with CountryDetailRef {
  _CountryDetailProviderElement(super.provider);

  @override
  String get code => (origin as CountryDetailProvider).code;
}

String _$paginatedCountriesHash() =>
    r'1175852ffbb4ee4ae779665759242ab287972370';

/// See also [paginatedCountries].
@ProviderFor(paginatedCountries)
const paginatedCountriesProvider = PaginatedCountriesFamily();

/// See also [paginatedCountries].
class PaginatedCountriesFamily extends Family<AsyncValue<List<Country>>> {
  /// See also [paginatedCountries].
  const PaginatedCountriesFamily();

  /// See also [paginatedCountries].
  PaginatedCountriesProvider call({
    int limit = 20,
    int offset = 0,
  }) {
    return PaginatedCountriesProvider(
      limit: limit,
      offset: offset,
    );
  }

  @override
  PaginatedCountriesProvider getProviderOverride(
    covariant PaginatedCountriesProvider provider,
  ) {
    return call(
      limit: provider.limit,
      offset: provider.offset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'paginatedCountriesProvider';
}

/// See also [paginatedCountries].
class PaginatedCountriesProvider
    extends AutoDisposeFutureProvider<List<Country>> {
  /// See also [paginatedCountries].
  PaginatedCountriesProvider({
    int limit = 20,
    int offset = 0,
  }) : this._internal(
          (ref) => paginatedCountries(
            ref as PaginatedCountriesRef,
            limit: limit,
            offset: offset,
          ),
          from: paginatedCountriesProvider,
          name: r'paginatedCountriesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$paginatedCountriesHash,
          dependencies: PaginatedCountriesFamily._dependencies,
          allTransitiveDependencies:
              PaginatedCountriesFamily._allTransitiveDependencies,
          limit: limit,
          offset: offset,
        );

  PaginatedCountriesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.limit,
    required this.offset,
  }) : super.internal();

  final int limit;
  final int offset;

  @override
  Override overrideWith(
    FutureOr<List<Country>> Function(PaginatedCountriesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PaginatedCountriesProvider._internal(
        (ref) => create(ref as PaginatedCountriesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        limit: limit,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Country>> createElement() {
    return _PaginatedCountriesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PaginatedCountriesProvider &&
        other.limit == limit &&
        other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PaginatedCountriesRef on AutoDisposeFutureProviderRef<List<Country>> {
  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `offset` of this provider.
  int get offset;
}

class _PaginatedCountriesProviderElement
    extends AutoDisposeFutureProviderElement<List<Country>>
    with PaginatedCountriesRef {
  _PaginatedCountriesProviderElement(super.provider);

  @override
  int get limit => (origin as PaginatedCountriesProvider).limit;
  @override
  int get offset => (origin as PaginatedCountriesProvider).offset;
}

String _$countryListNotifierHash() =>
    r'f6d4871c95e8b82e07941d619b7d3dac1854b31a';

abstract class _$CountryListNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Country>> {
  late final int limit;
  late final int offset;

  FutureOr<List<Country>> build({
    int limit = 20,
    int offset = 0,
  });
}

/// See also [CountryListNotifier].
@ProviderFor(CountryListNotifier)
const countryListNotifierProvider = CountryListNotifierFamily();

/// See also [CountryListNotifier].
class CountryListNotifierFamily extends Family<AsyncValue<List<Country>>> {
  /// See also [CountryListNotifier].
  const CountryListNotifierFamily();

  /// See also [CountryListNotifier].
  CountryListNotifierProvider call({
    int limit = 20,
    int offset = 0,
  }) {
    return CountryListNotifierProvider(
      limit: limit,
      offset: offset,
    );
  }

  @override
  CountryListNotifierProvider getProviderOverride(
    covariant CountryListNotifierProvider provider,
  ) {
    return call(
      limit: provider.limit,
      offset: provider.offset,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countryListNotifierProvider';
}

/// See also [CountryListNotifier].
class CountryListNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    CountryListNotifier, List<Country>> {
  /// See also [CountryListNotifier].
  CountryListNotifierProvider({
    int limit = 20,
    int offset = 0,
  }) : this._internal(
          () => CountryListNotifier()
            ..limit = limit
            ..offset = offset,
          from: countryListNotifierProvider,
          name: r'countryListNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countryListNotifierHash,
          dependencies: CountryListNotifierFamily._dependencies,
          allTransitiveDependencies:
              CountryListNotifierFamily._allTransitiveDependencies,
          limit: limit,
          offset: offset,
        );

  CountryListNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.limit,
    required this.offset,
  }) : super.internal();

  final int limit;
  final int offset;

  @override
  FutureOr<List<Country>> runNotifierBuild(
    covariant CountryListNotifier notifier,
  ) {
    return notifier.build(
      limit: limit,
      offset: offset,
    );
  }

  @override
  Override overrideWith(CountryListNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CountryListNotifierProvider._internal(
        () => create()
          ..limit = limit
          ..offset = offset,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        limit: limit,
        offset: offset,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CountryListNotifier, List<Country>>
      createElement() {
    return _CountryListNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountryListNotifierProvider &&
        other.limit == limit &&
        other.offset == offset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountryListNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Country>> {
  /// The parameter `limit` of this provider.
  int get limit;

  /// The parameter `offset` of this provider.
  int get offset;
}

class _CountryListNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CountryListNotifier,
        List<Country>> with CountryListNotifierRef {
  _CountryListNotifierProviderElement(super.provider);

  @override
  int get limit => (origin as CountryListNotifierProvider).limit;
  @override
  int get offset => (origin as CountryListNotifierProvider).offset;
}

String _$countryDetailNotifierHash() =>
    r'dd4775793bc51366e5123b07072c0f66ca4c5365';

abstract class _$CountryDetailNotifier
    extends BuildlessAutoDisposeAsyncNotifier<Country> {
  late final String code;

  FutureOr<Country> build(
    String code,
  );
}

/// See also [CountryDetailNotifier].
@ProviderFor(CountryDetailNotifier)
const countryDetailNotifierProvider = CountryDetailNotifierFamily();

/// See also [CountryDetailNotifier].
class CountryDetailNotifierFamily extends Family<AsyncValue<Country>> {
  /// See also [CountryDetailNotifier].
  const CountryDetailNotifierFamily();

  /// See also [CountryDetailNotifier].
  CountryDetailNotifierProvider call(
    String code,
  ) {
    return CountryDetailNotifierProvider(
      code,
    );
  }

  @override
  CountryDetailNotifierProvider getProviderOverride(
    covariant CountryDetailNotifierProvider provider,
  ) {
    return call(
      provider.code,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countryDetailNotifierProvider';
}

/// See also [CountryDetailNotifier].
class CountryDetailNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<CountryDetailNotifier,
        Country> {
  /// See also [CountryDetailNotifier].
  CountryDetailNotifierProvider(
    String code,
  ) : this._internal(
          () => CountryDetailNotifier()..code = code,
          from: countryDetailNotifierProvider,
          name: r'countryDetailNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countryDetailNotifierHash,
          dependencies: CountryDetailNotifierFamily._dependencies,
          allTransitiveDependencies:
              CountryDetailNotifierFamily._allTransitiveDependencies,
          code: code,
        );

  CountryDetailNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.code,
  }) : super.internal();

  final String code;

  @override
  FutureOr<Country> runNotifierBuild(
    covariant CountryDetailNotifier notifier,
  ) {
    return notifier.build(
      code,
    );
  }

  @override
  Override overrideWith(CountryDetailNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: CountryDetailNotifierProvider._internal(
        () => create()..code = code,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        code: code,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<CountryDetailNotifier, Country>
      createElement() {
    return _CountryDetailNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountryDetailNotifierProvider && other.code == code;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, code.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountryDetailNotifierRef on AutoDisposeAsyncNotifierProviderRef<Country> {
  /// The parameter `code` of this provider.
  String get code;
}

class _CountryDetailNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<CountryDetailNotifier,
        Country> with CountryDetailNotifierRef {
  _CountryDetailNotifierProviderElement(super.provider);

  @override
  String get code => (origin as CountryDetailNotifierProvider).code;
}

String _$countrySearchNotifierHash() =>
    r'2d0d919c82cbf789244269feb687b69d85051423';

/// See also [CountrySearchNotifier].
@ProviderFor(CountrySearchNotifier)
final countrySearchNotifierProvider = AutoDisposeAsyncNotifierProvider<
    CountrySearchNotifier, List<Country>>.internal(
  CountrySearchNotifier.new,
  name: r'countrySearchNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$countrySearchNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CountrySearchNotifier = AutoDisposeAsyncNotifier<List<Country>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
