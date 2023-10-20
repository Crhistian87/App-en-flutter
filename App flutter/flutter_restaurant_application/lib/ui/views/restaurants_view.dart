import 'package:flutter/material.dart';
import 'package:flutter_restaurant_application/ui/views/products_view.dart';
import 'package:flutter_restaurant_application/ui/Lists/restaurant_list.dart';

class restaurantsView extends StatefulWidget {
  static String id = "restaurants_view";

  restaurantsView({Key? key}) : super(key: key);

  @override
  State<restaurantsView> createState() => _restaurantsViewState();
}

class _restaurantsViewState extends State<restaurantsView> {
  List<Restaurant> restaurants = allRestaurants;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "EN DONDE COMER",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 36, 35, 35),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.02),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: "De que tienes antojo?",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.blue))),
                onChanged: searchRestaurant,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: restaurants.length,
                  itemBuilder: (context, index) {
                    final restaurant = restaurants[index];
                    return Card(
                      color: Color.fromRGBO(255, 193, 7, 1),
                      shadowColor: const Color.fromARGB(255, 30, 30, 30),
                      elevation: 5,
                      child: ListTile(
                        leading: const CircleAvatar(
                            radius: 19,
                            backgroundColor: Colors.white,
                            backgroundImage:
                                AssetImage("assets/antojitos.png")),
                        title: Text(restaurant.restaurantname,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(
                            "${restaurant.address} - ${restaurant.category}"),
                        trailing: const Icon(Icons.arrow_forward),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                productsView(restaurant: restaurant),
                          ));
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void searchRestaurant(String query) {
    final result = allRestaurants.where((restaurant) {
      final name = restaurant.category.toLowerCase();
      final input = query.toLowerCase();

      return name.contains(input);
    }).toList();
    setState(() => restaurants = result);
  }
}
