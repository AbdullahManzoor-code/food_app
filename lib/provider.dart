import 'package:food_app/item.dart';

// ignore: camel_case_types
class Items_list_prov {
  static List<Item> onselectcategoryitems = [];
  static bool isselectedcategory = false;
  static List<ListItem> categoryList = [
    ListItem(
      name: "Ice Cream",
      image: "assets/images/ice_cream.jpg",
      isselected: false,
    ),
    ListItem(
      name: "Burger",
      image: "assets/images/burger.jpg",
      isselected: false,
    ),
    ListItem(
      name: "Fruits",
      image: "assets/images/fruits.jpg",
      isselected: false,
    ),
    ListItem(
      name: "Pizza",
      image: "assets/images/pizza.jpg",
      isselected: false,
    ),
  ];

  static List<Item> items = [
    Item(
      name: "Apple",
      descr: "Fresh red apple",
      price: "£0.50",
      category: "Fruits",
      image: "assets/fruits/4.jpg",
    ),
    Item(
      name: "Banana",
      descr: "Ripe yellow banana",
      price: "£0.30",
      category: "Fruits",
      image: "assets/fruits/5.jpg",
    ),
    Item(
      name: "Orange",
      descr: "Juicy orange",
      price: "£0.60",
      category: "Fruits",
      image: "assets/fruits/3.jpg",
    ),
    Item(
      name: "Strawberries",
      descr: "Sweet strawberries",
      price: "£2.00",
      category: "Fruits",
      image: "assets/fruits/2.jpg",
    ),
    Item(
      name: "Grapes",
      descr: "Fresh green grapes",
      price: "£1.50",
      category: "Fruits",
      image: "assets/fruits/1.jpg",
    ),
    Item(
      name: "Margherita Pizza",
      descr: "Classic pizza with cheese and tomato",
      price: "£7.00",
      category: "Pizza",
      image: "assets/pizza/1.jpg",
    ),
    Item(
      name: "Pepperoni Pizza",
      descr: "Pizza with pepperoni slices",
      price: "£8.00",
      category: "Pizza",
      image: "assets/pizza/2.jpg",
    ),
    Item(
      name: "BBQ Chicken Pizza",
      descr: "Pizza with BBQ chicken",
      price: "£8.50",
      category: "Pizza",
      image: "assets/pizza/3.jpg",
    ),
    Item(
      name: "Veggie Pizza",
      descr: "Pizza with assorted vegetables",
      price: "£7.50",
      category: "Pizza",
      image: "assets/pizza/4.jpg",
    ),
    Item(
      name: "Hawaiian Pizza",
      descr: "Pizza with ham and pineapple",
      price: "£8.00",
      category: "Pizza",
      image: "assets/pizza/5.jpg",
    ),
    Item(
      name: "Classic Burger",
      descr: "Beef patty with lettuce, tomato, and cheese",
      price: "£5.00",
      category: "Burger",
      image: "assets/burger/burger1.jpg",
    ),
    Item(
      name: "Cheese Burger",
      descr: "Beef patty with melted cheese",
      price: "£5.50",
      category: "Burger",
      image: "assets/burger/burger2.jpg",
    ),
    Item(
      name: "Bacon Burger",
      descr: "Beef patty with crispy bacon",
      price: "£6.00",
      category: "Burger",
      image: "assets/burger/burger3.jpg",
    ),
    Item(
      name: "Veggie Burger",
      descr: "Vegetable patty with lettuce and tomato",
      price: "£4.50",
      category: "Burger",
      image: "assets/burger/burger4.jpg",
    ),
    Item(
      name: "Chicken Burger",
      descr: "Grilled chicken with lettuce and mayo",
      price: "£5.50",
      category: "Burger",
      image: "assets/burger/burger5.jpg",
    ),
    Item(
      name: "Vanilla Ice Cream",
      descr: "Creamy vanilla ice cream",
      price: "£3.00",
      category: "Ice Cream",
      image: "assets/ice_cream/1.jpg",
    ),
    Item(
      name: "Chocolate Ice Cream",
      descr: "Rich chocolate ice cream",
      price: "£3.50",
      category: "Ice Cream",
      image: "assets/ice_cream/2.jpg",
    ),
    Item(
      name: "Strawberry Ice Cream",
      descr: "Sweet strawberry ice cream",
      price: "£3.00",
      category: "Ice Cream",
      image: "assets/ice_cream/3.jpg",
    ),
    Item(
      name: "Mint Chocolate Chip",
      descr: "Mint ice cream with chocolate chips",
      price: "£3.75",
      category: "Ice Cream",
      image: "assets/ice_cream/4.jpg",
    ),
    Item(
      name: "Cookie Dough Ice Cream",
      descr: "Ice cream with chunks of cookie dough",
      price: "£4.00",
      category: "Ice Cream",
      image: "assets/ice_cream/5.jpg",
    ),
  ];
}
