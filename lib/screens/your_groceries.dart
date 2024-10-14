import 'package:flutter/material.dart';
import 'package:shopping_list/widgets/groceries.dart';

class YourGroceries extends StatelessWidget {
  const YourGroceries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Groceries',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
      body: const Groceries(),
    );
  }
}
