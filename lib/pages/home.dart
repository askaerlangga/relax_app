import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relax_app/pages/settings.dart';
import 'package:relax_app/providers/audio_card_list_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SettingsPage()));
        },
        backgroundColor: Colors.green[200],
        child: Icon(
          Icons.add,
          color: Colors.grey[900],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Relax'),
        centerTitle: true,
      ),
      body: Consumer<AudioCardListProvider>(builder: (context, value, child) {
        return ListView(
            padding: const EdgeInsets.all(10),
            children: value.widgets.values.toList());
      }),
    );
  }
}
