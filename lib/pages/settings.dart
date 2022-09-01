import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:relax_app/providers/audio_card_list_provider.dart';
import 'package:relax_app/widgets/add_button.dart';
import 'package:relax_app/widgets/audio_card.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Relax'),
        centerTitle: true,
      ),
      body: Consumer<AudioCardListProvider>(
        builder: (BuildContext context, value, Widget? child) => ListView(
          padding: const EdgeInsets.all(10),
          children: const [
            AudioCard(
                label: 'Fire',
                icon: FontAwesomeIcons.fire,
                button: AddButton(
                  audioName: 'fire',
                  icon: FontAwesomeIcons.fire,
                )),
            AudioCard(
                label: 'Rain',
                icon: FontAwesomeIcons.cloudRain,
                button: AddButton(
                  audioName: 'rain',
                  icon: FontAwesomeIcons.cloudRain,
                )),
            AudioCard(
                label: 'Wind',
                icon: FontAwesomeIcons.wind,
                button: AddButton(
                  audioName: 'wind',
                  icon: FontAwesomeIcons.wind,
                )),
          ],
        ),
      ),
    );
  }
}
