import 'package:flutter/material.dart';
import 'package:myapp/models/category.dart';
class CategoryItem extends StatelessWidget {
  //1 categoryItem - 1 category object
  Category category;
  CategoryItem({this.category});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Color _color = this.category.color;
    return Container(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Now change font's family from "Google Fonts"
            Text(this.category.content,
                style: Theme.of(context).textTheme.title),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _color.withOpacity(0.8),
              _color
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
          ),
          color:_color,
          borderRadius: BorderRadius.circular(20)
        ),
      )
    );
  }
}