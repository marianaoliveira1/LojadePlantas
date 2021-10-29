import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planta/models/plant.dart';

class PlantScreen extends StatefulWidget {

  final Plant plant;

  PlantScreen({required this.plant});

  @override
  _PlantScreenState createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 30.0,
                    right: 30.0,
                    top: 60.0
                  ),
                  height: 520.0,
                  color: Color(0xFF32A060),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                              Icons.arrow_back,
                              size: 30.0,
                              color: Colors.white
                          ),
                          Icon(
                              Icons.shopping_cart,
                              size: 30.0,
                              color: Colors.black
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
