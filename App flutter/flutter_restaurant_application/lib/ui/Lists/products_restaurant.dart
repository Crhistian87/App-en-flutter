class Product {
  final int id;
  final int restaurantId;
  final String plate;
  final int price;

  const Product({
    required this.id,
    required this.restaurantId,
    required this.plate,
    required this.price,
  });
}

const allProducts = [
  Product(
      id: 1, restaurantId: 1, plate: "Chilaquiles verdes con pollo", price: 50),
  Product(
      id: 2,
      restaurantId: 1,
      plate: "Chilaquiles rojos con costilla",
      price: 70),
  Product(id: 3, restaurantId: 1, plate: "Comidad correda del día", price: 85),
  Product(id: 4, restaurantId: 2, plate: "Plato de birria ", price: 140),
  Product(id: 5, restaurantId: 2, plate: "Quesabirria", price: 100),
  Product(id: 6, restaurantId: 3, plate: "Hamburguesa Sencilla", price: 60),
  Product(id: 7, restaurantId: 3, plate: "Hamburguesa Hawaiana", price: 70),
  Product(id: 8, restaurantId: 3, plate: "Hamburguesa Doble", price: 80),
  Product(id: 9, restaurantId: 4, plate: "Chilaquiles con huevo", price: 50),
  Product(
      id: 10,
      restaurantId: 4,
      plate: "Chilaquiles con costilla/bistek",
      price: 70),
  Product(id: 11, restaurantId: 4, plate: "Orden de sopes", price: 80),
  Product(id: 12, restaurantId: 5, plate: "Orden de alitas", price: 130),
  Product(id: 13, restaurantId: 5, plate: "Media orden de alitas", price: 70),
  Product(id: 14, restaurantId: 5, plate: "Orden Boneless", price: 130),
  Product(id: 15, restaurantId: 6, plate: "Taco de carnitas", price: 45),
  Product(id: 16, restaurantId: 6, plate: "Carnitas x kilo", price: 500),
  Product(id: 17, restaurantId: 6, plate: "Quesadillas", price: 40),
  Product(id: 18, restaurantId: 7, plate: "Coctel de camaron chico", price: 90),
  Product(
      id: 19, restaurantId: 7, plate: "Coctel de camaron grande", price: 130),
  Product(id: 20, restaurantId: 7, plate: "Mojarra frita", price: 70),
];
