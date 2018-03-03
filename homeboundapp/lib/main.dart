import 'package:flutter/material.dart';


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

  void loginPressed() {
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

                      onSubmitted: null /* {  //FIX ME I NEED TO GO TO EXCEL
                        setState(() {
                          result = loginstr;
                        });
                        controller.text = "";
                      },
                      controller: controller */
                    ),
                    //new Text(result)

                    new TextField(
                        decoration: new InputDecoration(
                            hintText: "Password"
                        ),

                        onSubmitted: null /* {  //FIX ME I NEED TO GO TO EXCEL
                        setState(() {
                          result = loginstr;
                        });
                        controller.text = "";
                      },
                      controller: controller */
                    ),
                    //new Text(result)

                  ]
                )
              )
            )
          );
        },
      ),
    );
  }

  void registerPressed() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text('Register'),
                  backgroundColor: Colors.blueAccent[400]
              ),
              body: new Container(
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new TextField(
                                decoration: new InputDecoration(
                                    hintText: "First Name"
                                ),

                                onSubmitted: null /* {  //FIX ME I NEED TO GO TO EXCEL
                                  setState(() {
                                    result = loginstr;
                                  });
                                controller.text = "";
                              },
                             controller: controller */
                            ),
                            //new Text(result)

                            new TextField(
                                decoration: new InputDecoration(
                                    hintText: "Last Name"
                                ),

                                onSubmitted: null /* {  //FIX ME I NEED TO GO TO EXCEL
                                  setState(() {
                                    result = loginstr;
                                  });
                                controller.text = "";
                              },
                             controller: controller */
                            ),
                            //new Text(result)

                            new TextField(
                                decoration: new InputDecoration(
                                    hintText: "Username"
                                ),

                                onSubmitted: null /* {  //FIX ME I NEED TO GO TO EXCEL
                                  setState(() {
                                    result = loginstr;
                                  });
                                controller.text = "";
                              },
                             controller: controller */
                            ),
                            //new Text(result)

                            new TextField(
                                decoration: new InputDecoration(
                                    hintText: "Password"
                                ),

                                onSubmitted: null /* {  //FIX ME I NEED TO GO TO EXCEL
                                  setState(() {
                                    result = loginstr;
                                  });
                                controller.text = "";
                              },
                             controller: controller */
                            ),
                            //new Text(result)
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
              new Image.asset('images/certificate.jpg'),

              new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                child: new Text("Login", style: new TextStyle(color: Colors.white)),
                color: Colors.blueAccent[400],
                onPressed: loginPressed
              ),

              new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(10.0)),
              new RaisedButton(
                  child: new Text("Register", style: new TextStyle(color: Colors.white)),
                  color: Colors.blueAccent[400],
                  onPressed: registerPressed
              ),

            ]
          )
        )
      )
    );
  }
}
