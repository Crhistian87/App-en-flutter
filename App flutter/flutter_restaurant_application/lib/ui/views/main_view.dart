import 'package:flutter/material.dart';
import 'package:flutter_restaurant_application/ui/views/restaurants_view.dart';
import 'package:flutter_restaurant_application/ui/Lists/restaurant_list.dart';

class mainView extends StatefulWidget {
  static String id = "main_view";

  mainView({Key? key}) : super(key: key);

  @override
  State<mainView> createState() => _mainViewState();
}

class _mainViewState extends State<mainView> {
  List<Restaurant> restaurants = allRestaurants;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(
          "ANTOJITOS APP",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 35, 35),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/antojitos.png'),
            IconButton(
                iconSize: 50,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => restaurantsView(),
                  ));
                },
                icon: const Icon(Icons.arrow_circle_right)),
          ],
        ),
      ),
    );
  }
}
