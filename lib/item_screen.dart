import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/categ_widget.dart';
import 'package:food_app/provider.dart';
import 'item_widget_first.dart';
import 'second_item_widget.dart';

// ignore: camel_case_types
class Item_screen extends StatefulWidget {
  const Item_screen({super.key});

  @override
  State<Item_screen> createState() => _Item_screenState();
}

// ignore: camel_case_types
class _Item_screenState extends State<Item_screen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
          PageView(physics: const AlwaysScrollableScrollPhysics(), children: [
        Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "HI Abdullah,",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_cart)),
                      )
                    ],
                  ),
                  Text(
                    "Delicious Food",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "Explore and Get Great Food",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const categ_widget(),
                  Visibility(
                    visible: Items_list_prov.isselectedcategory == false,
                    child: item_widget(),
                  )

                  // SizedBox(
                  //   height: 300.r,
                  //   child: GridView.builder(
                  //     shrinkWrap: true,
                  //     gridDelegate:
                  //         const SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //     ),
                  //     itemCount: 8,
                  //     itemBuilder: (BuildContext context, int index) {
                  //       return NewWidget(index: index);
                  //     },
                  //   ),
                  // ),
                  ,
                  const ver_item_widget()
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
