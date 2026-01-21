import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/country_provider.dart';

class CountryDetailScreen extends ConsumerWidget {
  final String countryCode;

  const CountryDetailScreen({
    super.key,
    required this.countryCode,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countryAsync = ref.watch(countryDetailNotifierProvider(countryCode));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Details'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(countryDetailNotifierProvider(countryCode).notifier).refresh();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: countryAsync.when(
        data: (country) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Flag and Name
                Center(
                  child: Column(
                    children: [
                      Text(
                        country.emoji,
                        style: const TextStyle(fontSize: 80),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        country.name,
                        style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        country.native,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.grey[600],
                            ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          country.code,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                
                // Information Cards
                _buildInfoCard(
                  context,
                  icon: Icons.location_city,
                  title: 'Capital',
                  value: country.capital.isEmpty ? 'No capital' : country.capital,
                ),
                const SizedBox(height: 16),
                
                _buildInfoCard(
                  context,
                  icon: Icons.attach_money,
                  title: 'Currency',
                  value: country.currency.isEmpty ? 'No currency' : country.currency,
                ),
                const SizedBox(height: 16),
                
                // Languages Section
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: Theme.of(context).primaryColor,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Languages',
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        if (country.languages.isEmpty)
                          const Text('No languages listed')
                        else
                          ...country.languages.map((lang) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 6,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      lang.code,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Text(
                                    lang.name,
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text('Error: $error'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  ref.read(countryDetailNotifierProvider(countryCode).notifier).refresh();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
              size: 32,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey[600],
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
