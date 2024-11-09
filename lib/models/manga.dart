class Manga {
  final String title;
  final String author;
  final String imagePath;
  final double rating;
  final int chapters;
  final String language;
  final String description;

  Manga({
    required this.title,
    required this.author,
    required this.imagePath,
    required this.rating,
    required this.chapters,
    required this.language,
    required this.description,
  });

  // Data sample untuk daftar manga
  static List<Manga> getRecommendations() {
    return [
      Manga(
        title: "Solo Leveling",
        author: "Chugong",
        imagePath: "assets/images/Solo.jpg",
        rating: 4.9,
        chapters: 150,
        language: "ENG",
        description:
            "In a world where awakened beings called 'Hunters' must battle deadly monsters to protect humanity, Sung Jinwoo, nicknamed 'the weakest hunter of all mankind,' finds...",
      ),
      Manga(
        title: "GoH",
        author: "Yongje Park",
        imagePath: "assets/images/GoH.jpg",
        rating: 4.8,
        chapters: 120,
        language: "ENG",
        description:
            "Jin Mori, a Taekwondo specialist, joins 'The God of High School' tournament, a competition to select the best high school fighter in Korea. But is there more than meets the eye?",
      ),
      Manga(
        title: "Tower Of God",
        author: "SIU",
        imagePath: "assets/images/TowerOfGod.jpg",
        rating: 4.7,
        chapters: 500,
        language: "ENG",
        description:
            "Bam, a young boy who has lived outside the Tower his whole life, enters the Tower to chase after his only friend, Rachel, only to discover a harsh and unforgiving world inside.",
      ),
    ];
  }

  // Data sample untuk daftar pembaruan harian
  static List<Manga> getDailyUpdates() {
    return [
      Manga(
        title: "My Hero Academia",
        author: "Kohei Horikoshi",
        imagePath: "assets/images/myhero.jpg",
        rating: 4.6,
        chapters: 308,
        language: "ENG",
        description:
            "Izuku Midoriya, a boy born without quirks in a world where superpowers are common, aspires to be the greatest hero and follows his idol, All Might.",
      ),
      Manga(
        title: "Monster",
        author: "Naoya Matsumoto",
        imagePath: "assets/images/monster.jpg",
        rating: 4.5,
        chapters: 31,
        language: "ENG",
        description:
            "When Dr. Tenma saves the life of a young boy, he unknowingly sets into motion a chain of events that will lead to a terrifying and monstrous truth.",
      ),
      Manga(
        title: "Jujutsu Kaisen",
        author: "Gege Akutami",
        imagePath: "assets/images/jujutsu.jpg",
        rating: 4.7,
        chapters: 185,
        language: "ENG",
        description:
            "Yuji Itadori, a high school student with incredible physical strength, accidentally swallows a powerful cursed object and enters the world of jujutsu sorcerers.",
      ),
    ];
  }
}
