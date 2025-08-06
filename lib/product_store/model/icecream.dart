import 'dart:convert';

import 'package:store_pro/product_store/model/product.dart';

class IceCreamData {
  List<Icecreams> icecreams;

  IceCreamData({required this.icecreams});

  factory IceCreamData.fromJson(Map<String, dynamic> json) {
  return IceCreamData(
    icecreams: json['icecreams'] != null
        ? (json['icecreams'] as List<dynamic>)
            .map<Icecreams>((x) => Icecreams.fromJson(x as Map<String, dynamic>))
            .toList()
        : [],
  );
}


  Map<String, dynamic> toJson() => {
        "icecreams": List<dynamic>.from(icecreams.map((x) => x.toJson())),
      };

  static IceCreamData icecreamDataFromJson(String str) {
    final jsonData = json.decode(str) as Map<String, dynamic>;
    return IceCreamData.fromJson(jsonData);
  }

  static String icecreamDataToJson(IceCreamData data) {
    final dyn = data.toJson();
    return json.encode(dyn);
  }
}

class Icecreams extends Product {
  int id;
  String name;
  String flavor;
  double price;
  double rating;
  bool available;
  bool isFeatured;
  String category;
  List<Ingredient> ingredients;
  List<String> toppings;
  String image;
  String description;

   Icecreams ({
    required this.id,
    required this.name,
    required this.flavor,
    required this.price,
    required this.rating,
    required this.available,
    required this.isFeatured,
    required this.category,
    required this.ingredients,
    required this.toppings,
    required this.image,
    required this.description,
  });

  factory Icecreams.fromJson(Map<String, dynamic> json) {
    return Icecreams(
      id: json['id'] as int,
      name: json['name'] as String,
      flavor: json['flavor'] as String,
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      available: json['available'] as bool,
      isFeatured: json['isFeatured'] as bool,
      category: json['category'] as String,
      ingredients: json['ingredients'] != null
    ? (json['ingredients'] as List<dynamic>)
        .map<Ingredient>((x) => Ingredient.fromJson(x as Map<String, dynamic>))
        .toList()
    : [],

      toppings: json['toppings'] != null
          ? List<String>.from(json['toppings'] as List)
          : [],
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "flavor": flavor,
        "price": price,
        "rating": rating,
        "available": available,
        "isFeatured": isFeatured,
        "category": category,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
        "toppings": List<dynamic>.from(toppings),
        "image": image,
        "description": description,
      };

  @override
  String toString() {
    return 'IceCream(name: $name, flavor: $flavor, price: $price)';
  }
}

class Ingredient {
  String name;
  String quantity;

  Ingredient({required this.name, required this.quantity});

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        name: json['name'] as String,
        quantity: json['quantity'] as String,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "quantity": quantity,
      };
}
