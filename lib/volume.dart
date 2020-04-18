import 'package:flutter/material.dart';
import 'dart:math';
import 'about.dart';

class VOLUMEResult extends StatelessWidget {


  VOLUMEResult({@required this.Ttinggi, @required this.nama, @required this.Tjari, @required this.jk});
  final int Ttinggi;
  final int Tjari;
  final String nama;
  final String jk;
  int tvolume;
  String cVOLUME;
  int volume;


  @override
  Widget build(BuildContext context) {
    double volume = (Tjari * Tjari * 3.14 * Ttinggi);


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20,child: Container(
              color: Colors.white,
            ),),
            new Text(
              "Halo ${nama} ,",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: Colors.black87
              ),
            ),

            SizedBox(height: 10,child: Container(
              color: Colors.white,
            ),),

            Text(
              'Hasil volume lingkaran adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $volume ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),

          ],
        ),
      ),
    );
  }
}