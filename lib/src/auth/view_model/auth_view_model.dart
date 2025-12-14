import 'package:dompetku/core/network/dio_provider.dart';
import 'package:dompetku/src/auth/repos/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(dio: ref.read(dioClientProvider));
});

class AuthState {
  final String name;
  AuthState({required this.name});
}

class AuthViewModel extends AsyncNotifier<dynamic> {
  @override
  Future<dynamic> build() async {
    final authRepo = ref.watch(authRepositoryProvider);
    return await authRepo.getUser();
  }

  Future<void> changeName() async {
    state = const AsyncValue.loading();
    final authRepo = ref.watch(authRepositoryProvider);
    state = await AsyncValue.guard(() async {
      return await authRepo.getUser();
    });
  }
}

final authViewModel = AsyncNotifierProvider<AuthViewModel, dynamic>(
  AuthViewModel.new,
);
