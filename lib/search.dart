import 'package:flutter/material.dart';
import 'package:untitled2/Screen/home.dart';


class SearchDelegateExample extends SearchDelegate {
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
  Widget buildResults(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        if (_items[index]['title'].toLowerCase().contains(query.toLowerCase())) {
          return ListTile(
            title: Text(_items[index]['title']),
            subtitle: Text(_items[index]['price']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home( data : _items[index],),
                ),
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        if (_items[index]['title'].toLowerCase().contains(query.toLowerCase())) {
          return ListTile(
            title: Text(_items[index]['title']),
            subtitle: Text(_items[index]['price']),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home( data : _items[index],),
                ),
              );
            },
          );
        } else {
          return Container();
        }
      },
    );
  }
  
  @override
  List<Widget>? buildActions(BuildContext context) {
    
   
  }
  
  @override
  Widget? buildLeading(BuildContext context) {
    
   
  }
  
 
}

