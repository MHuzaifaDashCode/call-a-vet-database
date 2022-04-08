import 'package:call_a_vet/Screens/UserHome/components/category_item.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryItem(
            title: "Popular",
            isActive: true,
            press: () {},
          ),
          CategoryItem(
            title: "Anesthesia",
            press: () {},
          ),
          CategoryItem(
            title: "Dentistry",
            press: () {},
          ),
          CategoryItem(
            title: "Dermatology",
            press: () {},
          ),
        ],
      ),
    );
  }
}
