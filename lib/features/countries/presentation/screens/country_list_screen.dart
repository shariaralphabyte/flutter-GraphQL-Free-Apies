
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/country_entity.dart';
import '../providers/country_provider.dart';
import '../widgets/country_card.dart';
import '../widgets/country_search_bar.dart';


class CountryListScreen extends ConsumerStatefulWidget {
  const CountryListScreen({super.key});

  @override
  ConsumerState<CountryListScreen> createState() => _CountryListScreenState();
}

class _CountryListScreenState extends ConsumerState<CountryListScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      ref.read(countryListNotifierProvider(limit: 20, offset: 0).notifier).loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    final countriesAsync = ref.watch(countryListNotifierProvider(limit: 20, offset: 0));
    final searchResultsAsync = ref.watch(countrySearchNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        actions: [
          IconButton(
            onPressed: () => ref.read(countryListNotifierProvider(limit: 20, offset: 0).notifier).refresh(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CountrySearchBar(
              onSearch: (query) =>
                  ref.read(countrySearchNotifierProvider.notifier).search(query),
              onClear: () =>
                  ref.read(countrySearchNotifierProvider.notifier).clear(),
            ),
          ),
          // Results
          Expanded(
            child: searchResultsAsync.when(
              data: (searchResults) {
                if (searchResults.isNotEmpty) {
                  return _buildSearchResults(searchResults);
                }
                return _buildCountryList(countriesAsync);
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCountryList(AsyncValue<List<Country>> countriesAsync) {
    return countriesAsync.when(
      data: (countries) {
        return RefreshIndicator(
          onRefresh: () =>
              ref.read(countryListNotifierProvider(limit: 20, offset: 0).notifier).refresh(),
          child: ListView.builder(
            controller: _scrollController,
            itemCount: countries.length + 1,
            itemBuilder: (context, index) {
              if (index < countries.length) {
                return CountryCard(country: countries[index]);
              }
              return const Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, _) => Center(child: Text('Error: $error')),
    );
  }

  Widget _buildSearchResults(List<Country> results) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return CountryCard(country: results[index]);
      },
    );
  }
}