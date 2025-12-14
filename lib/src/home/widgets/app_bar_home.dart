import 'package:dompetku/core/routers/app_router_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("POS APP"),
      actions: [
        Padding(
          padding: .only(right: 9.sp),
          child: Row(
            children: [
              IconButton(
                onPressed: () => AppRouterHelpers.pushNamed(AppRoute.qrcode),
                icon: Icon(Icons.search),
              ),
              IconButton(
                onPressed: () => AppRouterHelpers.pushNamed(AppRoute.qrcode),
                icon: Icon(Icons.qr_code_2_outlined),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
