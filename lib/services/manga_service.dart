import '../models/manga.dart';

class MangaService {
  Future<List<Manga>> getMangaList() async {
    return [
      Manga(
        title: 'Solo Leveling',
        author: 'GEE So-Lyung',
        coverUrl: 'https://example.com/solo_leveling.jpg',
        rating: 4.9,
        chapters: 150,
        language: 'ENG',
        description: 'Deskripsi dari Solo Leveling...',
      ),
    ];
  }
}
