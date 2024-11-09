import 'package:flutter/material.dart';
import 'views/home_page.dart';
import 'utils/theme.dart';

void main() {
  runApp(AplikasiSaya());
}

class AplikasiSaya extends StatelessWidget {
  const AplikasiSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Manga',
      theme: temaAplikasi,
      home: HalamanUtama(),
    );
  }
}
