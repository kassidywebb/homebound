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
              decoration: new BoxDecoration(color: Colors.white),
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

                    new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                    new Padding(padding: new EdgeInsets.all(10.0)),
                    new RaisedButton(
                        child: new Text("Submit", style: new TextStyle(color: Colors.white)),
                        color: Colors.blueAccent[400],
                        onPressed: submitPressed
                    ),

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
                  decoration: new BoxDecoration(color: Colors.white),
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
                                    hintText: "School"
                                ),

                                onSubmitted: (String str) {
                                  setState(() {
                                    result = str;
                                  });
                                controller.text = "";
                              },
                             controller: controller
                            ),


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

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Submit", style: new TextStyle(color: Colors.white)),
                                color: Colors.blueAccent[400],
                                onPressed: submitPressed
                            ),
                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }


  void submitPressed() {
    Navigator.of(context).push(

      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Profile", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Image.asset('images/propic.jpg'),
                            new Text("Kedron Abbott", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Find Ride"),
                                color: Colors.white,
                                onPressed: findRidePressed
                            ),

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Give Ride"),
                                color: Colors.white,
                                onPressed: giveRidePressed
                            ),
                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }

  void findRidePressed() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Find Ride", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Rides show here", style: new TextStyle(color: Colors.white)),

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Tallahassee, FL"),
                                color: Colors.white,
                                onPressed: tallahasseePressed
                            ),

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Tuscaloosa, AL"),
                                color: Colors.white,
                                onPressed: tuscaloosaPressed
                            ),
                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }


  void giveRidePressed() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Give Ride", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new TextField(

                                style: new TextStyle(color: Colors.white),
                                decoration:
                                new InputDecoration(
                                    hintText: "Where are you going? (City, State)",

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
                                style: new TextStyle(color: Colors.white),
                                decoration: new InputDecoration(
                                    hintText: "How many people can you take?"
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
                                style: new TextStyle(color: Colors.white),
                                decoration: new InputDecoration(
                                    hintText: "When are you leaving?"
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
                                style: new TextStyle(color: Colors.white),
                                decoration: new InputDecoration(
                                    hintText: "What color and type of car will you be driving?"
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
                                style: new TextStyle(color: Colors.white),
                                decoration: new InputDecoration(
                                    hintText: "Where should everyone meet you?"
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

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Submit Ride"),
                                color: Colors.white,
                                onPressed: submitRidePressed
                            ),
                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }


  void submitRidePressed() {
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Your Ride Info", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Going to Tallahassee, FL", style: new TextStyle(color: Colors.white)),
                            new Text("Leaving at 9:30am, March 9th", style: new TextStyle(color: Colors.white)),
                            new Text("Current people in car include:", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/sbobpropic.jpg'),
                            new Text("Spongebob Squarepants", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/propic.jpg'),
                            new Text("Kedron Abbott", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),
                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }

  void tallahasseePressed() {
    Navigator.of(context).push(

      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Going to Tallahassee, FL", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Current people in car:", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/sbobpropic.jpg'),
                            new Text("Spongebob Squarepants", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                            new Text("Leaving at 10:30am, March 10th", style: new TextStyle(color: Colors.white)),
                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Join Car"),
                                color: Colors.white,
                                onPressed: joinCarTallahasseePressed
                            ),

                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }

  void tuscaloosaPressed() {
    Navigator.of(context).push(

      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Going to Tuscaloosa, AL", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Current people in car:", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/sbobpropic.jpg'),
                            new Text("Spongebob Squarepants", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                            new Text("Leaving at 9:30am, March 9th", style: new TextStyle(color: Colors.white)),

                            new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
                            new Padding(padding: new EdgeInsets.all(10.0)),
                            new RaisedButton(
                                child: new Text("Join Car"),
                                color: Colors.white,
                                onPressed: joinCarTuscaloosaPressed
                            ),

                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }

  void joinCarTallahasseePressed() {
    Navigator.of(context).push(

      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Tallahassee", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Congrats! Have a fun trip!", style: new TextStyle(color: Colors.white)),

                            new Text("You'll be going to Tallahassee with:", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/sbobpropic.jpg'),
                            new Text("Spongebob Squarepants", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/propic.jpg'),
                            new Text("Kedron Abbott", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                          ]
                      )
                  )
              )
          );
        },
      ),
    );
  }

  void joinCarTuscaloosaPressed() {
    Navigator.of(context).push(

      new MaterialPageRoute(
        builder: (context) {
          //what you want page to do

          return new Scaffold(
              appBar: new AppBar(
                  title: new Text("Tuscaloosa", style: new TextStyle(color: Colors.black)),
                  backgroundColor: Colors.white
              ),
              body: new Container(
                  decoration: const BoxDecoration(
                    //color: Colors.white
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: const AssetImage("images/uabckgrd.jpg"),
                    ),
                  ),
                  child: new Center(
                      child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text("Congrats! Have a fun trip!", style: new TextStyle(color: Colors.white)),

                            new Text("You'll be going to Tuscaloosa with:", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/sbobpropic.jpg'),
                            new Text("Spongebob Squarepants", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

                            new Image.asset('images/propic.jpg'),
                            new Text("Kedron Abbott", style: new TextStyle(color: Colors.white)),
                            new Text("The University of Alabama", style: new TextStyle(color: Colors.white)),

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
        decoration: new BoxDecoration(color: Colors.white),
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
