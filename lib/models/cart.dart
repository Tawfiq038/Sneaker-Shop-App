import 'package:flutter/material.dart';
import 'package:sneaker_shop_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan",
        price: "280",
        imagePath: "lib/images/shoe_3.png",
        description:
            "This Air Jordan a casual shoe which you can wear casually anywhere."),
    Shoe(
        name: "Shoe2",
        price: "230",
        imagePath: "lib/images/shoe_5.png",
        description:
            "This Air Jordan a casual shoe which you can wear casually anywhere."),
    Shoe(
        name: "Shoe3",
        price: "260",
        imagePath: "lib/images/shoe_6.png",
        description:
            "This Air Jordan a casual shoe which you can wear casually anywhere."),
    Shoe(
        name: "Shoe4",
        price: "290",
        imagePath: "lib/images/shoe_4.png",
        description:
            "This Air Jordan a casual shoe which you can wear casually anywhere."),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
