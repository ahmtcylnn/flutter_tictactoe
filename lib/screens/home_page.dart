import 'package:flutter/material.dart';
import 'package:flutter_tictactoe/screens/Oyuncu_Karsi.dart';

import 'package:flutter_tictactoe/screens/game_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey();
    final TextEditingController player1Controller = TextEditingController();
    final TextEditingController player2Controller = TextEditingController();

    return Scaffold(
        backgroundColor: Colors.grey[400],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OyuncuKarsi()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Oyuncuya Karşı Oyna",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Bot' a Karşı Oyna",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ));
  }
}
