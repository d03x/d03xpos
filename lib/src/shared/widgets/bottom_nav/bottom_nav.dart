import 'package:dompetku/src/shared/widgets/bottom_nav/view_model/bottom_nav_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavItemData {
  final String title;
  final IconData icon;
  final Widget page;
  NavItemData({required this.icon, required this.title, required this.page});
}

class BottomNav extends StatelessWidget {
  final List<NavItemData> items;
  const BottomNav({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final state = ref.watch(bottomNavViewModelProvider);
        final stateNotif = ref.read(bottomNavViewModelProvider.notifier);
        return NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorShape: StadiumBorder(),
            labelTextStyle: .resolveWith((state) {
              if (state.contains(WidgetState.selected)) {
                return TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12.sp,
                );
              }
              return TextStyle(fontSize: 12.sp);
            }),
            iconTheme: .resolveWith((state) {
              if (state.contains(WidgetState.selected)) {
                return IconThemeData(
                  color: Theme.of(context).primaryColor,
                  size: 20.sp,
                );
              }
              return IconThemeData(size: 22.sp);
            }),
            indicatorColor: const Color.fromARGB(255, 238, 238, 238),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: BorderDirectional(
                top: BorderSide(
                  width: 1,
                  color: const Color.fromARGB(255, 233, 233, 233),
                ),
              ),
            ),
            height: 65.sp,
            child: NavigationBar(
              labelTextStyle: .all(
                TextStyle(fontWeight: .w700, fontSize: 12.sp),
              ),
              backgroundColor: Colors.white,
              selectedIndex: state.index,
              onDestinationSelected: stateNotif.onTap,
              destinations: items.map((e) {
                return NavigationDestination(
                  icon: Icon(e.icon),
                  label: e.title,
                  tooltip: e.title,
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
