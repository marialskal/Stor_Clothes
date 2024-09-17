import 'package:flutter/material.dart';
import 'package:untitled2/Screen/cartscrren.dart';
import 'package:untitled2/Screen/home.dart';
import 'package:untitled2/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List _items = [
    {
      "image": "images/m.webp",
      "title": "T_Shirt",
      "price": "10\$",
      "description":"A short wool T-shirt made of the best types of wool, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
    {
      "image": "images/mm.webp",
      "title": "Cotton sweater",
      "price": "18\$",
       "description":" Sweater made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
    {
      "image": "images/mmm.webp",
      "title": "Sweater",
      "price": "15\$",
      "description":" Sweater made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
    {
      "image": "images/mmmm.webp",
      "title": "Cute sweater",
      "price": "16\$",
      "description":" Sweater made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
    {
      "image": "images/v.webp",
      "title": "Skirt",
      "price": "20\$",
      "description":" Skirt made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
     {
      "image": "images/vv.webp",
      "title": "T_Shirt",
      "price": "12\$",
      "description":" T_shirt made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },

 {
      "image": "images/vvv.webp",
      "title": "Set",
      "price": "22\$",
      "description":" Set made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
     {
      "image": "images/b.webp",
      "title": "Jacket",
      "price": "12\$",
      "description":" Waterproof leather Jaccket, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
 {
      "image": "images/bb.webp",
      "title": " Cute Sweater",
      "price": "16\$",
      "description":" Sweater made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
 {
      "image": "images/bbb.webp",
      "title": "Sweater",
      "price": "19\$",
      "description":" Sweater made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
 {
      "image": "images/bbbb.webp",
      "title": "Cotton Sweater ",
      "price": "10\$",
      "description":" Sweater made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },
 {
      "image": "images/bbbbb.webp",
      "title": "Skirt",
      "price": "23\$",
      "description":" Skirt made of the best types of cotton, available in three colors Green, black and blue And the measurements are 40 42 44 46 ."
    },



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('Mary St'),
         actions: [
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        showSearch(context: context, delegate: SearchDelegateExample());
      },
    ),
  ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 10.0,
            child: InkWell(

                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Home(
                                data : _items[index],
                              )));
                    },
              child: Container(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: AssetImage(_items[index]["image"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        _items[index]["title"],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        _items[index]["price"],
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      
       floatingActionButton: FloatingActionButton(
      onPressed: () {
          Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CartScreen()),
    );
      },
      tooltip: 'Add new item',
      backgroundColor: Colors.blue[800],
      foregroundColor: Colors.white,
      child: const Icon(Icons.shopping_cart),
    ),
    );
  }
}
