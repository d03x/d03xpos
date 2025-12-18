import 'package:dompetku/src/home/screens/home_screen.dart';
import 'package:dompetku/src/home/widgets/app_bar_home.dart';
import 'package:dompetku/src/notifikasi/screens/notifikasi_screen.dart';
import 'package:dompetku/src/profile/screens/profile_screen.dart';
import 'package:dompetku/src/qrcode/view/qr_code_screen.dart';
import 'package:dompetku/src/shared/widgets/bottom_nav/bottom_nav.dart';
import 'package:dompetku/src/shared/widgets/bottom_nav/view_model/bottom_nav_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

//HOME SCREEN
class MainLayout extends ConsumerWidget {
  MainLayout({super.key});
  final List<NavItemData> _items = [
    NavItemData(icon: Iconsax.home_1_copy, title: "Home", page: HomeScreen()),
    NavItemData(
      icon: Iconsax.camera_copy,
      title: "Absen",
      page: QrCodeScreen(),
    ),
    NavItemData(
      icon: Iconsax.notification_1_copy,
      title: "Notifikasi",
      page: NotifikasiScreen(),
    ),
    NavItemData(
      icon: Iconsax.user_tag_copy,
      title: "Akun",
      page: ProfileScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomNavViewModelProvider);
    return Scaffold(
      bottomNavigationBar: BottomNav(items: _items),
      body: IndexedStack(
        index: state.index,
        children: _items.map((item) => item.page).toList(),
      ),
    );
  }
}
