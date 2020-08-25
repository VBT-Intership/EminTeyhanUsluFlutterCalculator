import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  double sonuc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('VBT Calculator'),
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'First Number',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Second Number',
                    ),
                  ),
                ),
                Row(

                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('+',style: new TextStyle(fontSize: 25.0)),
                      onPressed: (){
                        setState(() {
                          sonuc = double.parse(nameController.text) + double.parse(passwordController.text);
                        });
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('-',style: new TextStyle(fontSize: 25.0)),
                      onPressed: (){
                        setState(() {
                          sonuc = double.parse(nameController.text) - double.parse(passwordController.text);
                        });
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    ),
                  ],
                ),
                Row(

                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(

                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('*',style: new TextStyle(fontSize: 25.0)),
                      onPressed: (){
                        setState(() {
                          sonuc = double.parse(nameController.text) * double.parse(passwordController.text);
                        });
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    ),
                    RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('/',style: new TextStyle(fontSize: 25.0)),
                      onPressed: (){
                        setState(() {
                          sonuc = double.parse(nameController.text) / double.parse(passwordController.text);
                        });
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    ),
                  ],
                ),


                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(sonuc.toString(),style: new TextStyle(fontSize: 25.0)),
                )
              ],
            )
        )
    );
  }
}