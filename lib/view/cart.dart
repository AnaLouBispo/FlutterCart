import 'package:flutter/material.dart';
import '../widget/cardCart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 232, 232),
      body: Center(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: 560,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "9:41",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 415,
                          ),
                          Icon(Icons.signal_cellular_4_bar_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.wifi),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.battery_0_bar_rounded),
                        ],
                      ),
                      Text(
                        "My Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      cardCart(),
                      cardCart(),
                      cardCart(),
                      cardCart(),
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 540,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 45, 126, 48), // Define a cor de fundo do botão
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Go to Checkout',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 60),
                      Container(
                        width: 55,
                        height: 25,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(199, 11, 85, 14),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            '\$12.96',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
