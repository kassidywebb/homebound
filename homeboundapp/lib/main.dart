import 'package:flutter/material.dart';
/* Thanks for this Quesadilla */
void main() {
  runApp(
    new MaterialApp(
      home: new Button()
    )
  );
}

class Button extends StatefulWidget {
  @override
  ButtonState createState() => new ButtonState();
}

class ButtonState extends State<Button> {

  final TextEditingController controller = new TextEditingController();

  String displayedString = "";
  String result = "";

  void onPressed() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
         //what you want page to do

          return new Scaffold(
            appBar: new AppBar(
              title: new Text('Login'),
              backgroundColor: Colors.blueAccent[400]
            ),
            body: new Container(
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new TextField(
                      decoration: new InputDecoration(
                        hintText: "Username"
                      ),
                      onSubmitted: (String str) {
                        setState(() {
                          result = str;
                        });
                        controller.text = "";
                      },
                      controller: controller
                    ),
                    new Text(result)
                  ]
                )
              )
            )
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Home Page"),
          backgroundColor: Colors.blueAccent[400]
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                child: new Text("Login", style: new TextStyle(color: Colors.white)),
                color: Colors.blueAccent[400],
                onPressed: onPressed
              )
            ]
          )
        )
      )
    );
  }
}
