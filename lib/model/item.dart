class Item {
  final String name;
  final String image;
  final double price;
  final String quantity;
  final List<String> category;
  int count;

  Item(
      {required this.name,
      required this.image,
      required this.price,
      required this.quantity,
      required this.category,
      this.count = 0});
}
