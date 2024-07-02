class Item {
  Item({
    required this.name,
    required this.descr,
    required this.price,
    required this.category,
    required this.image,
  });

  String name;
  String descr;
  String price;
  String category;
  String image;
}

class ListItem {
  ListItem({
    required this.name,
    required this.image,
    this.isselected = false,
  });

  String name;
  String image;
  bool isselected;
}
