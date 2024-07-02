import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/provider.dart';

// ignore: must_be_immutable, camel_case_types
class item_widget extends StatelessWidget {
  item_widget({super.key, this.scrollDirect = Axis.horizontal});
  Axis scrollDirect;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.r,
      child: ListView.builder(
        scrollDirection: scrollDirect,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return NewWidget(
            index: index,
          );
        },
      ),
    );
  }
}

// ignore: must_be_immutable
class NewWidget extends StatelessWidget {
  NewWidget({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0).r,
      child: Container(
        width: 150.r,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20).r,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Items_list_prov.isselectedcategory
                    ? Items_list_prov.onselectcategoryitems[index].image
                    : Items_list_prov.items[index].image,
                height: 150.r,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Items_list_prov.isselectedcategory
                        ? Items_list_prov.onselectcategoryitems[index].name
                        : Items_list_prov.items[index].name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Container(
                    child: Text(
                      Items_list_prov.isselectedcategory
                          ? Items_list_prov.onselectcategoryitems[index].descr
                          : Items_list_prov.items[index].descr,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: MediaQuery.of(context).size.width * 0.033),
                    ),
                  ),
                  Text(
                      Items_list_prov.isselectedcategory
                          ? Items_list_prov.onselectcategoryitems[index].price
                          : Items_list_prov.items[index].price,
                      style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
