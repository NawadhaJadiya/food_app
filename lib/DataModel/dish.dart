class Dish {
  const Dish({
    required this.title,
    required this.ingredients,
    required this.image,
    required this.price,
    required this.addOnes,
    required this.isFav,
  });
  final String ingredients;
  final String title;
  final String image;
  final num price;
  final List<String> addOnes;
  final bool isFav;
}
