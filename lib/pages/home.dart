import 'package:flutter/material.dart';
import 'package:relax_app/widgets/audio_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Relax'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: const [
          AudioCard(
            label: 'Water',
            icon: Icons.water,
            audioName: 'water',
          ),
        ],
      ),
    );
  }
}
