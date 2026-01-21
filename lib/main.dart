import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'core/graphql_client.dart';
import 'features/countries/presentation/screens/country_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for GraphQL cache
  await initHiveForFlutter();

  runApp(
    ProviderScope(
      child: GraphQLProvider(
        client: GraphQLConfig.initializeClient(),
        child: const CountriesApp(),
      ),
    ),
  );
}

class CountriesApp extends StatelessWidget {
  const CountriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Countries Explorer',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CountryListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}