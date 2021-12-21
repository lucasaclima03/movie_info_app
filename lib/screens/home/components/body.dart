import 'package:flutter/material.dart';
import 'package:movie_info_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CategoryList(),
      ],
    );
  }
}

class CategoryList extends StatefulWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  List<String> categories = ["In Theater", "Box Office", "Comming Soon"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index, context)),
    );
  }

  Padding buildCategory(int index, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            categories[index],
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(
                  fontWeight: FontWeight.w600,
                  color: index == selectedCategory ? kTextColor : Colors.black.withOpacity(0.4)
                  
                  ),
                
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
            height: 6,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: index == selectedCategory ? kSecondaryColor : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
