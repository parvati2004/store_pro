import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import 'package:store_pro/product_store/model/app_state_model.dart';
import 'package:store_pro/themes/styles.dart';

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
DateTime? dateTime=DateTime.now();
final formKey = GlobalKey<FormState>();

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
    mobile=value;
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

  Widget _buildTimePicker(){
    return InkWell(
      onTap:()async{
         final newTime= await showDatePicker (
        context: context,
          initialDate:dateTime,
           firstDate:DateTime.now(), 
           lastDate: DateTime(2025
          ),
          
          );
      if(newTime!=null && newTime!=dateTime){
        setState(() {
          dateTime = newTime;
        });
      }
      },
      child: Column(
        children:<Widget> [
        
          Row(
      
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              const Row(
                children: <Widget> [
              Icon(
                Ionicons.time_outline,
                size:28,
              ),
              SizedBox(width:6),
              Text('Delivery time',
              style:Styles.deliveryTimeLabel,
      
              )
            ],
            ),
            Text(
              DateFormat.yMMMd().add_jm().format(dateTime!),
              style: Styles.deliveryTime,
      
            )
        ],
      ),
      
      ]
      ),
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
              ExpansionTile(title: Text("Address Detail"),
              children:[
              Form(


              ],
              ),
              const Divider(),
              if(value.productsInCart.isNotEmpty)
              ListView.builder(
                itemBuilder:(context,index){
                  return CartItem();
                },
                itemCount:value.productsInCart.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              )
             
            ],
          );

        },
        
      ),
    );
  }
}