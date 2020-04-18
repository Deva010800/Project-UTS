import 'package:flutter/material.dart';

import 'volume.dart';

import 'about.dart';



void main(){

  runApp(new MaterialApp(

    home: new Home(),

    routes: <String, WidgetBuilder>{

      '/Halsatu' : (BuildContext context) => new Home(),

      '/Haldua' : (BuildContext context) => new MyProfil(),
    },

  ));

}



class Home extends StatefulWidget {

  @override

  _HomeState createState() => new _HomeState();

}



class _HomeState extends State<Home> {



  int tinggi = 0;

  int jari = 0;



  String _jk="";



  void _pilihJk(String value){

    setState(() {

      _jk = value;

    });

  }



  var _nomor = new TextEditingController();



  @override

  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(

        leading: new Icon(Icons.menu, color : Colors.white),

        title: new Text('Volume-Tabung'),

        centerTitle: true,

        backgroundColor: Colors.lightBlue,

        actions: <Widget>[

          new IconButton(

            icon: Icon(Icons.person, color : Colors.white),

            onPressed: (){

              Navigator.pushNamed(context, '/Haldua');

            },

          )

        ],

      ),



      body: ListView(

        children: <Widget>[

          new Container(

            padding: new EdgeInsets.all(20.0),

            child: new Column(

              children: <Widget>[

                new TextField(

                  controller: _nomor,
                  maxLength: 15,

                  decoration: new InputDecoration(

                      labelText: "Nama",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tinggi = int.parse(txt);
                    });
                  },



                  keyboardType: TextInputType.number,


                  decoration: new InputDecoration(

                      labelText: "Jari-Jari Tabung",

                      border: new OutlineInputBorder(

                          borderRadius: new BorderRadius.circular(10.0)

                      )

                  ),

                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),



                new TextField(

                  onChanged: (txt) {

                    setState(() {

                      jari = int.parse(txt);

                    });

                  },
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      labelText: "Tinggi Tabung",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                Container(

                  //height: double.infinity,

                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),

                  child: RaisedButton(

                    onPressed: () {

                      var route = new MaterialPageRoute(

                        builder: (BuildContext) =>

                        new VOLUMEResult(nama : _nomor.text,Ttinggi: tinggi,Tjari: jari, jk: _jk),


                      );

                      Navigator.of(context).push(route);
                    },

                    padding: EdgeInsets.all(10.0),

                    color: Colors.lightGreen,

                    textColor: Colors.white,

                    child: Text(

                      'SUBMIT',

                      style:

                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),



                    ),

                  ),

                ),

              ],

            ),

          ),

        ],

      ),

    );

  }

}