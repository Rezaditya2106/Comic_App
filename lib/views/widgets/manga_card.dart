import 'package:flutter/material.dart';
import '../models/manga.dart';

class MangaCard extends StatelessWidget {
  final Manga manga;

  const MangaCard({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(manga.coverUrl, height: 180, fit: BoxFit.cover),
          ),
          const SizedBox(height: 8),
          Text(manga.title, style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(manga.author, style: const TextStyle(color: Colors.black54)),
        ],
      ),
    );
  }
}
