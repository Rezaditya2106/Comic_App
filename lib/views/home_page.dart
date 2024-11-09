import 'package:flutter/material.dart';
import '../viewmodels/user_viewmodel.dart';
import 'widgets/manga_card.dart';
import '../models/manga.dart';
import 'manga_detail_page.dart';

class HalamanUtama extends StatelessWidget {
  final List<Manga> rekomendasi = [
    Manga(
      title: 'Solo Leveling',
      author: 'GEE So-Lyung',
      coverUrl: 'https://example.com/solo_leveling.jpg',
      rating: 4.9,
      chapters: 150,
      language: 'ENG',
      description: 'Di dunia di mana makhluk yang terbangun disebut "Pemburu"...',
    ),
  ];

  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[700],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(radius: 24, backgroundImage: NetworkImage('https://example.com/profile.jpg')),
                  SizedBox(width: 8),
                  Text('Jackky Malia', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Cari',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Rekomendasi', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: rekomendasi.map((manga) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HalamanDetailManga(manga: manga)),
                      ),
                      child: MangaCard(manga: manga),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
