import 'package:flutter/material.dart';
import '../models/manga.dart';
import '../viewmodels/manga_viewmodel.dart';
import 'manga_detail_page.dart';

class HalamanDaftarManga extends StatelessWidget {
  final MangaViewModel viewModel = MangaViewModel();

  HalamanDaftarManga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Manga')),
      body: FutureBuilder<List<Manga>>(
        future: viewModel.fetchMangaList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            return ListView(
              children: snapshot.data!.map((manga) {
                return ListTile(
                  title: Text(manga.title),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HalamanDetailManga(manga: manga)),
                  ),
                );
              }).toList(),
            );
          }
          return const Text('Tidak ada data');
        },
      ),
    );
  }
}
