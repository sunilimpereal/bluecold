import 'package:bluecold/home/calculator/cold_room_calculator.dart';
import 'package:bluecold/home/screen/widgets/calculator_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Calculators",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.notifications,
                color: Colors.black38,
              )
            ],
          ),
        ),
        calculatorSelectorSection(),
      ],
    ));
  }

  Widget calculatorSelectorSection() {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.5,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8,
        ),
        children: [
          CalculatorCard(
            name: "Cold \nRoom",
            color: Colors.blue.shade800,
            image: "cold-storage.png",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ColdRoomCalculatorScreen()));
            },
          ),
          CalculatorCard(
            name: "Blast \nRoom",
            color: Colors.teal.shade800,
            image: "blast-room.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
