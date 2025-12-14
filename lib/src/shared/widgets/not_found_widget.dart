import 'package:dompetku/core/routers/app_router_helpers.dart';
import 'package:flutter/material.dart';

class NotFoundWidget extends StatelessWidget {
  const NotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Text("404", style: Theme.of(context).textTheme.titleLarge),
            Text("Halaman tidak ditemukan!"),
            IconButton(
              onPressed: () {
                AppRouterHelpers.goBack();
              },
              icon: Icon(Icons.home_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
