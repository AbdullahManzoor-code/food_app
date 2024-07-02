import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/item.dart';
import 'package:food_app/provider.dart';

// ignore: camel_case_types
class categ_widget extends StatefulWidget {
  const categ_widget({
    super.key,
  });

  @override
  State<categ_widget> createState() => _categ_widgetState();
}

// ignore: camel_case_types
class _categ_widgetState extends State<categ_widget> {
  @override
  Widget build(BuildContext context) {
    filteritem(int index) {
      List<Item> filteredItems = [];
      filteredItems = Items_list_prov.items
          .where((item) =>
              item.category == Items_list_prov.categoryList[index].name)
          .toList();
      return filteredItems;
    }

    // ignore: no_leading_underscores_for_local_identifiers
    void _selectItem(int index) {
      setState(() {
        for (int i = 0; i < Items_list_prov.categoryList.length; i++) {
          Items_list_prov.categoryList[i].isselected = i == index;
          if (i == index) {
            Items_list_prov.onselectcategoryitems = filteritem(index);

            Items_list_prov.isselectedcategory =
                Items_list_prov.onselectcategoryitems.isNotEmpty;
          }
        }
      });
    }

    return SizedBox(
      height: 100.r,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Items_list_prov.categoryList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Container(
              decoration: BoxDecoration(
                  color: Items_list_prov.categoryList[index].isselected
                      ? Colors.black
                      : Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.all(const Radius.circular(20).r),
                  image: DecorationImage(
                      image: AssetImage(
                          Items_list_prov.categoryList[index].image))),
              width: 85.r,
              height: 100.r,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectItem(index);
                  });
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
