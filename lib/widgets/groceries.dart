import 'package:flutter/material.dart';
import 'package:shopping_list/data/dummy_items.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: groceryItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            groceryItems[index].name,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          leading: Container(
            color: groceryItems[index].category.color,
            height: 24,
            width: 24,
          ),
          trailing: Text(
            groceryItems[index].quantity.toString(),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
        );
      },
    );
  }
}
