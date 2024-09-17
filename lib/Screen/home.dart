import 'package:flutter/material.dart';
import 'package:untitled2/cart.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  
  const Home({super.key,this.data});
    // ignore: prefer_typing_uninitialized_variables
    final data;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.blue[800],
        title: const Text('Mary St'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.data['image']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),

            
            Text(
                widget.data['title'],
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
               widget.data["description"],
              style: const TextStyle(fontSize: 18),
            ),
            Text(
             widget.data["price"],
              style:const TextStyle(fontSize: 18, color: Colors.green),
            ),
           const SizedBox(height: 29,),
            ElevatedButton(
  style: ElevatedButton.styleFrom(
    primary: Colors.blue[800], // background color
    onPrimary: Colors.white, // text color
    elevation: 10, // shadow
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20), // rounded corners
    ),
  ),
  child:const Text(
    'add to cart',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  onPressed: () {


   showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:const Text("Buying"),
          content:const Text("This item has been moved to the shopping cart"),
          actions: [
            ElevatedButton(
              child:const Text("OK"),
              onPressed: () {
                 Provider.of<CartProvider>(context, listen: false).addToCart(widget.data);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  },
)
            
          ],
        ),
      ),
    );
  }
}