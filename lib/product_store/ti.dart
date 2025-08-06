// import 'dart:convert';

// class IceCreamData {


//   IceCreamData({this.icecreams});

//  IceCreamData.fromJson(Map<String, dynamic> json) {
//    if(json['icecreams']!=null){
//     icecreams = <Icecreams>[];
//     json['icecreams'].forEach((v) {
//       icecreams?.add(IceCream.fromJson(v as Map<String,dynamic>));
//     });
//    }
//   }
//     List<IceCream>icecreams;

  

//   Map<String, dynamic> toJson() => {
//         "icecreams": List<dynamic>.from(icecreams!.map((x) => x.toJson())),
//       };
// }

// class IceCream {
//   int id;
//   String name;
//   String flavor;
//   double price;
//   double rating;
//   bool available;
//   bool isFeatured;
//   String category;
//   List<Ingredient> ingredients;
//   List<String> toppings;
//   String image;
//   String description;

//   IceCream({
//     required this.id,
//     required this.name,
//     required this.flavor,
//     required this.price,
//     required this.rating,
//     required this.available,
//     required this.isFeatured,
//     required this.category,
//     required this.ingredients,
//     required this.toppings,
//     required this.image,
//     required this.description,
//   });

//   factory IceCream.fromJson(Map<String, dynamic> json) {
//     return IceCream(
//       id: json['id'] ,
//       name: json['name'] ,
//       flavor: json['flavor'],
//       price: (json['price'] as num).toDouble(),
//       rating: (json['rating'] as num).toDouble(),
//       available: json['available'],
//       isFeatured: json['isFeatured'],
//       category: json['category'],
//       ingredients: List<Ingredient>.from(
//         json['ingredients'].map((x) => Ingredient.fromJson(x)),
//       ),
//       toppings: List<String>.from(json['toppings']),
//       image: json['image'],
//       description: json['description'],
//     );
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "flavor": flavor,
//         "price": price,
//         "rating": rating,
//         "available": available,
//         "isFeatured": isFeatured,
//         "category": category,
//         "ingredients": List<dynamic>.from(ingredients.map((x) => x.toJson())),
//         "toppings": toppings,
//         "image": image,
//         "description": description,
//       };
// }

// class Ingredient {
//   String name;
//   String quantity;

//   Ingredient({required this.name, required this.quantity});

//   factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
//         name: json['name'],
//         quantity: json['quantity'],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "quantity": quantity,
//       };
// }
