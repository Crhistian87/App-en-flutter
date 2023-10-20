class Restaurant {
  final int id;
  final String restaurantname;
  final String address;
  final String category;

  const Restaurant({
    required this.id,
    required this.restaurantname,
    required this.address,
    required this.category,
  });
}

const allRestaurants = [
  Restaurant(
      id: 1,
      restaurantname: "Doña Rosa Chalco",
      address: "C. 12 de Octubre 139 Cp.56600",
      category: "Comida corrida"),
  Restaurant(
      id: 2,
      restaurantname: "Birreria Ahome",
      address: "Av. Cuauhtemoc Pte. S/N Cp.56604",
      category: "Birria - Tacos"),
  Restaurant(
      id: 3,
      restaurantname: "La Hamburguesa perfecta",
      address: "Av. Cuauhtemoc Pte. S/N Cp.56604",
      category: "Hamburguesas - Hotdogs"),
  Restaurant(
      id: 4,
      restaurantname: "Espartacos Chalco",
      address:
          "Esquina codigo agrario carretera federal México-Cuautla km 34 Cp.56608",
      category: "Antojitos Méxicanos - Tacos- Sopes"),
  Restaurant(
      id: 5,
      restaurantname: "Central de Alitas",
      address: "Av. Cuauhtemoc Pte. 872 Cp.56604",
      category: "Alitas - Boneless"),
  Restaurant(
      id: 6,
      restaurantname: "Restaurante Los Cochinitos",
      address: "México 115 Manzana 025 Cp.56608",
      category: "Tacos - Carnitas"),
  Restaurant(
      id: 7,
      restaurantname: "Mariscos Mi lindo Veracruz",
      address: "Av. Cuauhtemoc Ote. 40 Col. Granjas Cp. 56600",
      category: "Mariscos"),
];
