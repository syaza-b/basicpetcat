//le import, material for basic packages of building app
//import second page for navigation
import 'package:appdemo/secondpage.dart';
import 'package:flutter/material.dart';

//call home page
void main(List<String> args) {
  runApp(const MaterialApp(home: Cat()));
}

//1 class, 1 page
//many type of class, stateful one of em, go read flutter official docs if curious
// when u name ur class differently, dont forget check left side, look for folder test
//in folter test, inside widget_test.dart got error, change default MyApp name to your class name
class Cat extends StatefulWidget {
  const Cat({super.key});

  @override
  State<Cat> createState() => _CatState();
}

class _CatState extends State<Cat> {
  //code, where u change to next page
  void changePage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const PlayGame()));
  }

  //interface aka widget
  @override
  Widget build(BuildContext context) {
    //basic bod of app
    return MaterialApp(
      //basic interface of app
      home: Scaffold(
        //the top little rectangle in app, put title and colouur
        appBar: AppBar(
          title: const Text("Meow"),
          backgroundColor: const Color.fromARGB(255, 54, 51, 42),
        ),
        //slide to right or click three line symbol to reveal drawer
        //drawer is where u put menu of pages
        drawer: const Text("Suprise Meow"),

        //container for background, infinity so the colour is based on size of device's screen
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber[100],

          //column where it goes from top to down
          //this child belong to container, can put 1 widget only
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //this children belong to column, can put many widget
            children: [
              //widget 1 le pictures, dont forget look up how to edit pubsec.yaml to allow import pics
              Image.asset(
                'assets/catspinfront.gif',
                height: 200,
                width: 200,
              ),
              //Widget 2 titles
              const Text(
                "Meow",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              //widget 3 the buttons
              ElevatedButton(
                onPressed: () {
                  //call functionnns
                  changePage(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 54, 51, 42),
                ),
                child: const Text("Play game"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
