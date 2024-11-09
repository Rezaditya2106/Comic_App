import 'package:flutter/material.dart';
import '../models/manga.dart';

class MangaListItem extends StatelessWidget {
  final Manga manga;

  const MangaListItem({super.key, required this.manga});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(manga.title),
      subtitle: Text(manga.author),
    );
  }
}
