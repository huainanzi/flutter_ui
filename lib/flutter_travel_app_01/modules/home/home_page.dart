import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ui/flutter_travel_app_01/modules/home/widgets/most_popular.dart';
import 'package:flutter_ui/flutter_travel_app_01/modules/home/widgets/travel_blog.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Travel Blog",
                style: TextStyle(fontSize: 36.0),
              ),
            ),
            Expanded(flex: 2, child: TravelBlog()),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Most popular",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 16.0, color: Colors.deepOrange),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: MostPopular(),
            )
          ],
        ),
      ),
    );
  }
}
