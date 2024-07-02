import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/provider.dart';

// ignore: camel_case_types
class ver_item_widget extends StatelessWidget {
  const ver_item_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Items_list_prov.isselectedcategory ? 500.r : 300.r,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: Items_list_prov.isselectedcategory
            ? Items_list_prov.onselectcategoryitems.length
            : Items_list_prov.items.length - 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0).r,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20).r,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                    ),
                  ]),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      Items_list_prov.isselectedcategory
                          ? Items_list_prov.onselectcategoryitems[index].image
                          : Items_list_prov.items[index + 5].image,
                      height: 150.r,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Text(
                            Items_list_prov.isselectedcategory
                                ? Items_list_prov
                                    .onselectcategoryitems[index].name
                                : Items_list_prov.items[index + 5].name,
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.45,
                          child: Text(
                            Items_list_prov.isselectedcategory
                                ? Items_list_prov
                                    .onselectcategoryitems[index].descr
                                : Items_list_prov.items[index + 5].descr,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Text(
                          Items_list_prov.isselectedcategory
                              ? Items_list_prov
                                  .onselectcategoryitems[index].price
                              : Items_list_prov.items[index + 5].price,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
