import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // the first player is oh
  bool ohTurn = true;

  List<String> displayExOh = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: GridView.builder(
        itemCount: 9,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              _tapped(index);
              },
              child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade700),
              ),
              child: Center(
                child: Text(
                  displayExOh[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _tapped(int index) {
    setState(() {
     if(ohTurn){
       displayExOh[index] = 'o';
     } else {
       displayExOh[index] = 'x';
     }

     ohTurn = !ohTurn;
     _checkWinner();

    });
  }

  void _checkWinner() {

  }

  void _showWinDialog() {

  }
}
