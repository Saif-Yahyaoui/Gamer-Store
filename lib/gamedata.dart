class GameData {
  final String title;
  final String image;
  final int? price;
  final String? description;
  final int? quantity;
  GameData({
    required this.title,
    required this.image,
    this.price,
    this.description,
    this.quantity,
  });
}
