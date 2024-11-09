import '../models/manga.dart';
import '../services/manga_service.dart';

class MangaViewModel {
  final MangaService _mangaService = MangaService();

  Future<List<Manga>> fetchMangaList() async {
    return await _mangaService.getMangaList();
  }
}
