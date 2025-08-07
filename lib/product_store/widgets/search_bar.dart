import 'package:flutter/material.dart';
import 'package:store_pro/themes/styles.dart';

class MySearchBar extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;

  const MySearchBar({
    Key? key,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              const Icon(Icons.search), // Made constant for better performance
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: controller,
                  focusNode: focusNode,
                  style: Styles.searchText, // Make sure this is defined correctly
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  controller.clear();
                  focusNode.unfocus();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
