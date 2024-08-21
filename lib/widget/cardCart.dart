import 'package:flutter/material.dart';

void main() {
  runApp(const Cardcart());
}

class Cardcart extends StatelessWidget {
  const Cardcart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello, World!'),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  cardCart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardCart extends StatelessWidget {
  const cardCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 200,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        border: Border.all(
          color: const Color.fromARGB(255, 235, 235, 235),
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://obahortifruti.vtexassets.com/arquivos/ids/4855512/Morango-200-G.png?v=638257053976100000',
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    'Morango',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.close)
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Preço: 1 kg',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // função do button
                    },
                    child: const Text('-'),
                  ),
                  const SizedBox(width: 10),
                  const Text('1'),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      print("clicou");
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(width: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              const SizedBox(height: 94),
              Text(
                'R\$ 20,00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
