import 'dart:async';

import 'package:flutter/material.dart';

class CountrySearchBar extends StatefulWidget {
  final Function(String) onSearch;
  final VoidCallback onClear;

  const CountrySearchBar({
    super.key,
    required this.onSearch,
    required this.onClear,
  });

  @override
  State<CountrySearchBar> createState() => _CountrySearchBarState();
}

class _CountrySearchBarState extends State<CountrySearchBar> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (query.isEmpty) {
        widget.onClear();
      } else {
        widget.onSearch(query);
      }
    });
  }

  void _clearSearch() {
    _controller.clear();
    widget.onClear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: _onSearchChanged,
      decoration: InputDecoration(
        hintText: 'Search countries...',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: _clearSearch,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Theme.of(context).cardColor,
      ),
    );
  }
}