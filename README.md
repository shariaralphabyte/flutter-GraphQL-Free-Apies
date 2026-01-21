# Countries Explorer

A Flutter application that demonstrates GraphQL integration with Clean Architecture, Riverpod state management, and modern Flutter development practices.

## Features

- Browse all countries with pagination
- View detailed country information (capital, currency, languages)
- Search countries by name, native name, code, or capital
- Filter countries by continent
- Filter countries by language
- Pull-to-refresh functionality
- Caching with GraphQL

## Screenshots

The app displays:
- **Country List**: Shows country flag, name, native name, capital, currency, and languages
- **Country Detail**: Detailed view with all country information
- **Search**: Real-time search across multiple fields

## Architecture

This project follows **Clean Architecture** principles with three main layers:

```
lib/
├── core/
│   └── graphql_client.dart          # GraphQL configuration
├── features/
│   └── countries/
│       ├── data/
│       │   ├── datasources/         # Remote data sources (GraphQL queries)
│       │   ├── models/              # Data models with JSON serialization
│       │   └── repositories/        # Repository implementations
│       ├── domain/
│       │   ├── entities/            # Business entities
│       │   ├── repositories/        # Repository interfaces
│       │   └── usecases/            # Business logic use cases
│       └── presentation/
│           ├── providers/           # Riverpod state management
│           ├── screens/             # UI screens
│           └── widgets/             # Reusable widgets
└── main.dart
```

### Layers

| Layer | Responsibility |
|-------|---------------|
| **Data** | GraphQL queries, JSON parsing, API communication |
| **Domain** | Business logic, entities, repository contracts |
| **Presentation** | UI components, state management with Riverpod |

## Tech Stack

| Technology | Purpose |
|------------|---------|
| [Flutter](https://flutter.dev/) | UI Framework |
| [GraphQL Flutter](https://pub.dev/packages/graphql_flutter) | GraphQL client |
| [Riverpod](https://riverpod.dev/) | State management |
| [Freezed](https://pub.dev/packages/freezed) | Immutable data classes |
| [JSON Serializable](https://pub.dev/packages/json_serializable) | JSON parsing |

## API

This app uses the [Countries GraphQL API](https://countries.trevorblades.com/) by Trevor Blades.

### Available Queries

```graphql
# Get all countries
query GetCountries {
  countries {
    code
    name
    native
    capital
    emoji
    currency
    languages { code name }
  }
}

# Get single country
query GetCountry($code: ID!) {
  country(code: $code) {
    code
    name
    native
    capital
    emoji
    currency
    languages { code name }
  }
}

# Get countries by continent
query GetCountriesByContinent($continentCode: ID!) {
  continent(code: $continentCode) {
    countries { ... }
  }
}
```

## Getting Started

### Prerequisites

- Flutter SDK >= 3.0.0
- Dart SDK >= 3.0.0

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd graphQl
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate code (Freezed, JSON Serializable, Riverpod):
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Run the app:
   ```bash
   flutter run
   ```

### Development

When modifying models or providers, regenerate the code:

```bash
# One-time build
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (rebuilds on file changes)
flutter pub run build_runner watch --delete-conflicting-outputs
```

## Project Structure

### Key Files

| File | Description |
|------|-------------|
| `lib/core/graphql_client.dart` | GraphQL client configuration |
| `lib/features/countries/data/datasources/country_remote_data_source.dart` | GraphQL queries |
| `lib/features/countries/data/models/country_model.dart` | Data models with Freezed |
| `lib/features/countries/domain/entities/country_entity.dart` | Domain entities |
| `lib/features/countries/domain/repositories/country_repository.dart` | Repository interface |
| `lib/features/countries/presentation/providers/country_provider.dart` | Riverpod providers |
| `lib/features/countries/presentation/screens/country_list_screen.dart` | Main list screen |
| `lib/features/countries/presentation/screens/country_detail_screen.dart` | Detail screen |

### Use Cases

| Use Case | Description |
|----------|-------------|
| `GetCountry` | Fetch a single country by code |
| `GetCountries` | Fetch all countries with pagination |
| `SearchCountries` | Search countries by query string |
| `GetCountriesByContinent` | Filter countries by continent code |
| `GetCountriesByLanguage` | Filter countries by language code |

## State Management

The app uses **Riverpod** with code generation for type-safe providers:

```dart
// Provider definition
@riverpod
class CountryListNotifier extends _$CountryListNotifier {
  @override
  FutureOr<List<Country>> build({int limit = 20, int offset = 0}) async {
    return ref.watch(getCountriesProvider).call(limit: limit, offset: offset);
  }
}

// Usage in widget
final countriesAsync = ref.watch(countryListNotifierProvider(limit: 20, offset: 0));
```

## Dependencies

```yaml
dependencies:
  flutter_riverpod: ^2.4.0
  riverpod_annotation: ^2.3.0
  graphql_flutter: ^5.1.0
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  equatable: ^2.0.5
  shimmer: ^3.0.0

dev_dependencies:
  build_runner: ^2.4.7
  riverpod_generator: ^2.3.0
  freezed: ^2.4.5
  json_serializable: ^6.7.1
```

## License

This project is for educational purposes.
