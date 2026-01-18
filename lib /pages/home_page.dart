import 'package:flutter/material.dart';
import 'package:foodie/widget/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool icecream=false, pizza=false, burger=false, salad=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Hello Patel Ved,", style: AppWidget.boldTextFieldStyle()),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  padding: EdgeInsets.all(3.0),
                  child: Icon(Icons.shopping_cart, color: Colors.orange,),
                )
              ],
            ),
            SizedBox(height: 10.0,),
            Text("Delicious Food,", style: AppWidget.HeadlineTextFieldStyle(),),
            Text("Discover and get great food", style: AppWidget.LightTextFieldStyle(),),
            SizedBox(height: 20.0,),
            Container(
                margin: EdgeInsets.only(right: 20.0),
                child: showItem()
            ),
            SizedBox(height: 30.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("lib/images/salad2.png", width: 150, height: 150, fit: BoxFit.cover,),
                            Text("Veggie Taco Hash", style: AppWidget.semiBoolTextFieldStyle(),),
                            SizedBox(height: 5.0,),
                            Text("Fresh and Healthy", style: AppWidget.LightTextFieldStyle(),),
                            SizedBox(height: 5.0,),
                            Text("\$25", style: AppWidget.semiBoolTextFieldStyle(),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    margin: EdgeInsets.all(8),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("lib/images/salad3.png", width: 150, height: 150, fit: BoxFit.cover,),
                            Text("Mix Veg salaad", style: AppWidget.semiBoolTextFieldStyle(),),
                            SizedBox(height: 5.0,),
                            Text("Spicy with onion", style: AppWidget.LightTextFieldStyle(),),
                            SizedBox(height: 5.0,),
                            Text("\$50", style: AppWidget.semiBoolTextFieldStyle(),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0,),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment:  CrossAxisAlignment.start,
                    children: [
                      Image.asset("lib/images/salad2.png", height: 120, width: 120, fit: BoxFit.cover,),
                      SizedBox(width: 20.0,),
                      Column(
                        children: [
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("Mediterranean Chickpea salad", style: AppWidget.semiBoolTextFieldStyle(),)
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("Honey goot cheese", style: AppWidget.LightTextFieldStyle(),)
                          ),
                          SizedBox(height: 5.0,),
                          Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("\$30", style: AppWidget.semiBoolTextFieldStyle(),)
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget showItem(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            icecream=true;
            pizza=false;
            burger=false;
            salad=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(color: icecream? Colors.orange: Colors.white, borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8),
              child: Image.asset("lib/images/ice-cream.png", width: 50, height: 50, fit: BoxFit.cover, color: icecream? Colors.white: Colors.orange,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            icecream=false;
            pizza=true;
            burger=false;
            salad=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(color: pizza? Colors.orange: Colors.white, borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8),
              child: Image.asset("lib/images/pizza.png", width: 50, height: 50, fit: BoxFit.cover, color: pizza? Colors.white: Colors.orange,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            icecream=false;
            pizza=false;
            burger=true;
            salad=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(color: burger? Colors.orange: Colors.white, borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8),
              child: Image.asset("lib/images/burger.png", width: 50, height: 50, fit: BoxFit.cover, color: burger? Colors.white: Colors.orange,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            icecream=false;
            pizza=false;
            burger=false;
            salad=true;
            setState(() {

            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              decoration: BoxDecoration(color: salad? Colors.orange: Colors.white, borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.all(8),
              child: Image.asset("lib/images/salad.png", width: 50, height: 50, fit: BoxFit.cover, color: salad? Colors.white: Colors.orange,),
            ),
          ),
        ),
      ],
    );
  }
}
