import 'package:dompetku/src/home/widgets/app_bar_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//HOME SCREEN
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: AppBarHome(title: "Home"));
  }
}
