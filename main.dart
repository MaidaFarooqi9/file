import 'package:flutter/material.dart';
import 'ProductModel.dart';
import 'ProductScreen.dart';
import 'CheckoutScreen.dart';




void main() => runApp(MaterialApp(home:MainScreen()));


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<ProductModel> cart = [];
  int sum = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart App"),
          bottom: new TabBar(
            tabs: <Widget>[
             new Tab(text: "Products",),
              new Tab(text: "Checkout",),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ProductScreen((selectedProduct){
              setState(() {
                cart.add(selectedProduct); //update
                sum = 0;
                cart.forEach((item){
                  sum = sum + item.price;
                });
              });
            },(unSelectedProduct){setState(() {
              cart.remove(unSelectedProduct);
              //update
              sum=sum-unSelectedProduct.price;
            });
            }
              ),
            CheckoutScreen(cart, sum),
          ],
        ),
      ),
    );
  }
}