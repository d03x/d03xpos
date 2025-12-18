import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotifikasiScreen extends StatelessWidget {
  const NotifikasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Notifiakasi"),
          bottom: const TabBar(
            labelStyle: TextStyle(fontSize: 14),
            labelColor: Colors.blue, // Warna teks aktif
            unselectedLabelColor: Colors.grey, // Warna teks tidak aktif
            indicatorColor: Colors.blue, // Garis bawah biru
            indicatorSize: TabBarIndicatorSize.tab, // Garis selebar tab
            tabs: [
              Tab(text: "Transaksi"),
              Tab(text: "Penggajian"),
              Tab(text: "Info Promo"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SizedBox(child: Text("Tidak Ada Transaksi")),
            SizedBox(child: Text("Tidak ada tugas baru")),
            SizedBox(child: Text("Tidak ada permintaan cuti")),
          ],
        ),
      ),
    );
  }
}
