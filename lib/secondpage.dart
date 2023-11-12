//le package as usual
import 'package:flutter/material.dart';

//no main (only one duuh), call next stateful widget
class PlayGame extends StatefulWidget {
  const PlayGame({super.key});

  @override
  State<PlayGame> createState() => _PlayGameState();
}

class _PlayGameState extends State<PlayGame> {
  //variables, declare em
  String _pics = 'assets/cat-spin.gif';
  bool _pressed = false;

  //code

  //1 code go back to home page
  void backHome(BuildContext context) {
    Navigator.pop(context);
  }

  //to change pictures, set state is a must to update variable
  void changePic() {
    //if button pressed change pic, press again change again
    if (_pressed) {
      setState(() {
        _pics = 'assets/cat-petpet.gif';
      });
    } else {
      setState(() {
        _pics = 'assets/cat-spin.gif';
      });
    }
  }

  //interface
  @override
  Widget build(BuildContext context) {
    //material app as usual
    return MaterialApp(
      //uhuh keep going
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Meow"),
          backgroundColor: const Color.fromARGB(255, 54, 51, 42),
        ),
        drawer: const Text("Suprise Meow"),
        //container dont forget
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber[100],
          //column yup
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //le image is SPECIAL
              Image.asset(
                //uses variable name instead of link
                _pics,
                height: 200,
                width: 200,
              ),
              //title
              const Text(
                "Pet Cat",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              //this is nothing, just to give space and make things pretty
              const SizedBox(
                height: 10,
              ),
              //button 1, pet cat
              ElevatedButton(
                onPressed: () {
                  //set boolean if button is presssssed
                  setState(() {
                    _pressed = !_pressed;
                  });
                  //call functionss
                  changePic();
                },
                child: Text("Pet Cat"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 54, 51, 42),
                ),
              ),

              //more pretty boxes
              const SizedBox(
                height: 10,
              ),

              //button 2, GO HOME
              ElevatedButton(
                onPressed: () {
                  backHome(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 54, 51, 42),
                ),
                child: const Text("Go Back"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
