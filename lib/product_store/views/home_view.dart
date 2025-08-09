import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/model/app_state_model.dart';
import 'package:store_pro/product_store/views/cart_view.dart';
import 'package:store_pro/product_store/views/icecream_view.dart';
import 'package:store_pro/product_store/views/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final model=Provider.of<AppStateModel>(context);
    return Scaffold(
      body: SafeArea(
        
            child: IndexedStack(
            index : model.currentIndex,
            children:const [
              IceCreamView(),
              SearchView(),
              CartView(),

            ]
    // Icecreams List
          
        ),
      ),

      bottomNavigationBar: NavigationBar
      
      (
        selectedIndex: model.currentIndex,
        onDestinationSelected: (value){
          model.changeIndex(value);
          

        },

        destinations:const [
        NavigationDestination(
          icon: Icon(Ionicons.ice_cream_outline),
          label: 'Icecreams',
        ),
         NavigationDestination(
          icon: Icon(Ionicons.search_outline),
          label: 'Search',
        ),

        NavigationDestination(
          icon: Icon(Ionicons.cart_outline),
          label: 'Cart',
        ),
       

      ]) ,

    );
  }
}