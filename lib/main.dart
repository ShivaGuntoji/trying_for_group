import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF243441),
      ),
      home:CalculatorUI(),
    );
  }
}
class CalculatorUI extends StatefulWidget {
  @override
  _CalculatorUIState createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: <Widget>[
            Expanded(
              child:Container(),
            ),
            Expanded(
              flex: 2,
              child:Column(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RawMaterialButton(
                            hoverElevation: 40.0,
                            onPressed: (){
                              print('hello');
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  //color: Colors.white, //background color of box
                                  BoxShadow(
                                    color: Colors.white12,
                                    blurRadius: 0, // soften the shadow
                                    spreadRadius: 2.0, //extend the shadow
                                    offset: Offset(
                                      0.0, // Move to right 10  horizontally
                                      1.0, // Move to bottom 10 Vertically
                                    ),
                                  )
                                ],
                                //color: Colors.white,
                                color:Colors.black,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              margin: EdgeInsets.all(8),
                              child: Center(
                                child:Text('AC',style: TextStyle(fontSize: 20,color:Colors.orange),),
                              ),
                            ),
                          ),
                        ),
                        Expanded(),
                        Expanded(),
                        Expanded(),
                      ],
                    ),
                  ),
                  Expanded(),
                  Expanded(),
                  Expanded(),
                  Expanded(),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
