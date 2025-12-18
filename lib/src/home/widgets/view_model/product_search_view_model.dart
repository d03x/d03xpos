import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductSearchState {
  final String? searchQuery;

  ProductSearchState({this.searchQuery});
}

class ProductSearchViewModel extends Notifier<ProductSearchState> {
  @override
  ProductSearchState build() {
    return ProductSearchState(searchQuery: "");
  }

  void search(String value) {
    state = ProductSearchState(searchQuery: value);
  }

  void reset() {
    state = ProductSearchState(searchQuery: "");
    ref.read(searchControllerProvider).clear();
  }
}

final searchControllerProvider = Provider.autoDispose<TextEditingController>((
  ref,
) {
  final controller = TextEditingController();
  ref.onDispose(() {
    controller.dispose();
  });
  return controller;
});
final productSerachViewModel =
    NotifierProvider.autoDispose<ProductSearchViewModel, ProductSearchState>(
      ProductSearchViewModel.new,
    );
