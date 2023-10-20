import 'package:flutter/material.dart';
import 'package:flutter_restaurant_application/ui/Lists/restaurant_list.dart';
import 'package:flutter_restaurant_application/ui/Lists/products_restaurant.dart';

class productsView extends StatelessWidget {
  final Restaurant restaurant;

  productsView({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  static String id = "products_view";

  @override
  Widget build(BuildContext context) {
    List<Product> products = allProducts
        .where((element) => element.restaurantId == restaurant.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Menú ${restaurant.restaurantname}",
          style: const TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 35, 35),
      ),
      body: Center(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final plate = products[index];
              return Card(
                color: const Color.fromARGB(255, 255, 163, 8),
                shadowColor: const Color.fromARGB(255, 30, 30, 30),
                elevation: 5,
                child: ListTile(
                  leading: const CircleAvatar(
                      radius: 19,
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/antojitos.png")),
                  title: Text(plate.plate),
                  subtitle: Text(plate.price.toString()),
                ),
              );
            }),
      ),
    );
  }
}
