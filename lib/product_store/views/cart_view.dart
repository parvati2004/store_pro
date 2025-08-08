import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/model/app_state_model.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {

String? name;
String? email;
String? mobile;
String? address;
String? pin;
DateTime? dateTime=DateTime.now();

Widget _buildName(){
  return TextFormField(
    decoration: const InputDecoration
    (
    border:OutlineInputBorder(),
    labelText: 'Name',prefixIcon:
       Icon(Ionicons.person_outline,),
    ),
   keyboardType: TextInputType.name,
   validator: (String? value){
      if(value==null || value.isEmpty){
        return 'Please enter your name';
      }
      return null;
   },
   onSaved: (String? value){
      name=value;
      },
      onChanged: (value)=>setState(()=>name=value),
      );
    }


Widget _buildEmail(){
  return TextFormField(
    decoration:
     const InputDecoration(
       border:OutlineInputBorder(),
      labelText: 'Email',
      prefixIcon:
       Icon(Ionicons.mail_outline,),
      ),
    keyboardType: TextInputType.emailAddress,
    validator: (String? value){
      if(value==null || value.isEmpty){
        return 'Email is Required';
      }
      if(!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)){
        return 'Please enter a valid email';
      }
      return null;
    },
    onSaved: (String? value){
      email=value;
    },
    onChanged: (value)=>setState(()=>email=value),
  );
}

Widget _buildMobile(){
  return TextFormField(
    decoration: const InputDecoration(
      border:OutlineInputBorder(),
      labelText:'Mobile',prefixIcon:
       Icon(Ionicons.call_outline,
       )
       ),
    keyboardType: TextInputType.phone,
    validator: (String? value){
      if(value!.isEmpty)
      {
        return 'Moile is Required';

      }
       return null;
    },
   onSaved: (String? value){
    mobile:value;
   },

    onChanged: (value)=>setState(()=>mobile=value),
  );
}
  

  Widget _buildAddress() {
    return TextFormField(
      decoration: 
      const InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Address',
         prefixIcon:Icon(Ionicons.location_outline,),
         ),
      keyboardType: TextInputType.streetAddress,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Address is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        address = value;
      },
      onChanged: (value) => setState(() => address = value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:const Text('Cart'),
      ),
      body:Consumer<AppStateModel>(
        builder: (context,value,child){
          return ListView(
            children: [
              _buildName(),
              _buildEmail(),
              _buildMobile(),
              _buildAddress(),
            ],


          );

        },
        
      ),
    );
  }
}