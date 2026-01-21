import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLConfig {
  static const String _graphqlEndpoint = 'https://countries.trevorblades.com/';

  static HttpLink get httpLink => HttpLink(_graphqlEndpoint);

  static GraphQLClient getClient() {
    return GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }

  static ValueNotifier<GraphQLClient> initializeClient() {
    return ValueNotifier(
      GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(
          store: InMemoryStore(),
        ),
      ),
    );
  }
}