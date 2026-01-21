
import 'package:flutter/material.dart';

class CountrySearchBar extends StatefulWidget {
  final Function(String) onSearch;
  final VoidCallback onClear;x
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
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    widget.onSearch(value);
  }

  void _clearSearch() {
    _controller.clear();
    _focusNode.unfocus();
    widget.onClear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      focusNode: _focusNode,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(
          icon: const Icon(Icons.clear),
          onPressed: _clearSearch,
        )
            : null,
        hintText: 'Search countries...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      onChanged: _onSearchChanged,
    );
  }
}