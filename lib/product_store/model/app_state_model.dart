import 'package:flutter/material.dart';
import 'package:store_pro/product_store/data/product_repo.dart';
import 'package:store_pro/product_store/model/icecream.dart';

const double _salesTaxRate = 0.018;
const double _shippingCostPerItem = 10;

class AppStateModel extends ChangeNotifier {

  int currentIndex = 0;

   void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
  List<Icecreams> _availableProducts = [];

  // Product ID -> Quantity
  final Map<int, int> _productsInCart = {};

  /// Return a copy of the cart
  Map<int, int> get productsInCart => Map.from(_productsInCart);

  /// Get all available products
  List<Icecreams> getProducts() => _availableProducts;

  /// Get all cart items with full product info
  List<Icecreams> getCartItems() {
    return _productsInCart.keys.map((productId) {
      return _availableProducts.firstWhere(
        (product) => product.id == productId,
        orElse: () => throw Exception('Product ID $productId not found'),
      );
    }).toList();
  }

  /// Total quantity in cart
  int get totalCartQuantity =>
      _productsInCart.values.fold(0, (sum, val) => sum + val);

  /// Subtotal cost (price * quantity)
  double get subtotalCost {
    return _productsInCart.entries.map((entry) {
      final product = _availableProducts.firstWhere(
        (p) => p.id == entry.key,
        orElse: () => throw Exception('Product ID ${entry.key} not found'),
      );
      return product.price * entry.value;
    }).fold(0.0, (sum, val) => sum + val);
  }

  /// Shipping cost = $10 per item
  double get shippingCost =>
      _shippingCostPerItem * totalCartQuantity.toDouble();

  /// Tax cost = subtotal * tax rate
  double get tax => subtotalCost * _salesTaxRate;

  /// Total cost = subtotal + shipping + tax
  double get totalCost => subtotalCost + shippingCost + tax;

  /// Add product to cart
  void addProductToCart(int productId) {
    _productsInCart.update(productId, (quantity) => quantity + 1,
        ifAbsent: () => 1);
    notifyListeners();
  }

  /// Remove one quantity of product from cart
  void removeItemFromCart(int productId) {
    if (!_productsInCart.containsKey(productId)) return;

    final currentQuantity = _productsInCart[productId]!;
    if (currentQuantity == 1) {
      _productsInCart.remove(productId);
    } else {
      _productsInCart[productId] = currentQuantity - 1;
    }
    notifyListeners();
  }

  /// Clear entire cart
  void clearCart() {
    _productsInCart.clear();
    notifyListeners();
  }

  /// Search products by flavor
  List<Icecreams> search(String query) {
    return _availableProducts
        .where((product) =>
            product.flavor.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  /// Load all products from repository
  Future<void> loadProducts() async {
    _availableProducts = await ProductRepo.loadAllIcecreams();
    notifyListeners();
  }
}
