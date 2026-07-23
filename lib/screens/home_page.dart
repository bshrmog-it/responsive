import 'package:flutter/material.dart';
import 'package:responseive/helper/const.dart' show kBreakPoint, kmainColor;
import 'package:responseive/models/item_model.dart';
import 'package:responseive/widgets/app_draw.dart';
import 'package:responseive/widgets/item_grid_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> items = ItemModel.dummyList;
    bool isMobile = MediaQuery.of(context).size.width <= kBreakPoint;
    return Scaffold(
      floatingActionButton: isMobile
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: kmainColor,
              child: const Icon(Icons.add, color: Colors.white),
            )
          : null,
      appBar: isMobile
          ? AppBar(
              title: const Text(
                "Product Inventory",
                style: TextStyle(color: kmainColor, fontWeight: .bold),
              ),
            )
          : null,
      drawer: isMobile ? AppDraw() : null,
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width > kBreakPoint)
            const SizedBox(width: 250, child: AppDraw()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!isMobile)
                        Row(
                          children: [
                            const Text(
                              "Product Inventory",
                              style: TextStyle(
                                fontSize: 20,
                                color: kmainColor,
                                fontWeight: .bold,
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all(
                                  kmainColor,
                                ),
                              ),
                              child: const Text(
                                "Add New Product ",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),

                      const Text(
                        "Manage your catalog, prices, and stock levels.",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(height: 12),
                      TextField(
                        decoration: InputDecoration(
                          hintText:
                              "Search products by name, ID, or category...",
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return ItemGridBuilder(items: items);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
