import 'package:dompetku/core/routers/app_router_helpers.dart';
import 'package:dompetku/src/home/widgets/app_bar_home.dart';
import 'package:dompetku/src/home/widgets/product_lists.dart';
import 'package:dompetku/src/home/widgets/product_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//HOME SCREEN
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.shopping_cart_checkout_outlined),
        onPressed: () {
          AppRouterHelpers.pushNamed("/wkwkw");
        },
        label: Text(24.toString()),
      ),
      appBar: AppBarHome(),
      body: Column(children: [ProductSearch(), ProductLists()]),
    );
  }
}
