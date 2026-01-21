import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/country_entity.dart';
import '../screens/country_detail_screen.dart';

class CountryCard extends ConsumerWidget {
  final Country country;

  const CountryCard({
    super.key,
    required this.country,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      child: InkWell(
        onTap: () {
          // Navigate to detail screen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CountryDetailScreen(countryCode: country.code),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Flag and Name
              Row(
                children: [
                  Text(
                    country.emoji,
                    style: const TextStyle(fontSize: 32),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          country.name,
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          country.native,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Colors.grey[600],
                              ),
                        ),
                      ],
                    ),
                  ),
                  // Country Code Badge
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      country.code,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Capital and Currency
              Row(
                children: [
                  const Icon(Icons.location_city, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    country.capital.isEmpty ? 'No capital' : country.capital,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(width: 16),
                  const Icon(Icons.attach_money, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    country.currency.isEmpty ? 'No currency' : country.currency,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              // Languages
              if (country.languages.isNotEmpty) ...[
                const SizedBox(height: 8),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: country.languages.take(3).map((lang) {
                    return Chip(
                      label: Text(
                        lang.name,
                        style: const TextStyle(fontSize: 12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

