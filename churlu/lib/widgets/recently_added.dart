import 'package:churlu/data/data.dart';
import 'package:flutter/material.dart';

class RecentlyAddedWidget extends StatelessWidget {
  final String title;
  final List<Category> categoryList;

  const RecentlyAddedWidget({
    Key key,
    @required this.title,
    @required this.categoryList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 160.0,
        color: Colors.blue.shade400,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 120.0,
              color: Colors.red.shade100,
              margin: const EdgeInsets.all(5.0),
            );
          },
        ),
      ),
    );
  }
}

class MostViewedWidget extends StatelessWidget {
  final String title;
  final List<Category> categoryList;

  const MostViewedWidget({
    Key key,
    @required this.title,
    @required this.categoryList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550.0,
      color: Colors.teal.shade300,
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          categoryList.length,
          (index) {
            return Container(
              width: 120.0,
              color: Colors.red.shade100,
              margin: const EdgeInsets.all(5.0),
            );
          },
        ),
      ),
    );
  }
}
