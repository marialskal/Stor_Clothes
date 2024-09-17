import 'package:flutter/material.dart';
import 'package:untitled2/cart.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Cart'),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          return ListView.builder(
            itemCount: cartProvider.cartItems.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 10.0,
                child: Container(
                  padding:const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              margin:const EdgeInsets.only(bottom: 10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      cartProvider.cartItems[index]['image']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(
                              cartProvider.cartItems[index]['title'],
                              style:const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          const  SizedBox(height: 5.0),
                            Text(
                              cartProvider.cartItems[index]['price'],
                              style:const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title:const Text("Confirmation"),
                                  content:const Text("Are you sure you want to confirm this item from the cart?"),
                                  actions: [
                                    ElevatedButton(
                                      child:const Text("OK"),
                                      onPressed: () {
                                        cartProvider.removeFromCart(index);
                                          Navigator.of(context).pop();
                                      },
                                    ),
                                    ElevatedButton(
                                      child:const Text("Cancel"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon:const Icon(Icons.check_circle, color: Colors.green, size: 40),
                        ),
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title:const Text("Confirmation"),
                                  content:const Text("Are you sure you want to delete this item from the cart?"),
                                  actions: [
                                    ElevatedButton(
                                      child:const Text("OK"),
                                      onPressed: () {
                                        cartProvider.removeFromCart(index);
                                          Navigator.of(context).pop();
                                      },
                                    ),
                                    ElevatedButton(
                                      child:const Text("Cancel"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          icon:const Icon(Icons.cancel_outlined, color: Colors.red, size: 40),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}