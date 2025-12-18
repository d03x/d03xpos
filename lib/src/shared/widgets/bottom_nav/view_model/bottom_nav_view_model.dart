import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavModelState {
  final int index;

  BottomNavModelState({required this.index});
}

class BottomNavViewModel extends Notifier<BottomNavModelState> {
  @override
  BottomNavModelState build() {
    return BottomNavModelState(index: 0);
  }

  void onTap(int index) {
    state = BottomNavModelState(index: index);
  }
}

final bottomNavViewModelProvider =
    NotifierProvider.autoDispose<BottomNavViewModel, BottomNavModelState>(
      BottomNavViewModel.new,
    );
