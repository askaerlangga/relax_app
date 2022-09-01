import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relax_app/providers/audio_card_list_provider.dart';
import 'package:relax_app/widgets/audio_card.dart';
import 'package:relax_app/widgets/control_button.dart';

class AddButton extends StatelessWidget {
  final String audioName;
  final IconData icon;

  const AddButton({
    Key? key,
    required this.audioName,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioCardListProvider>(builder: (context, value, child) {
      var data = {
        audioName: AudioCard(
          label: audioName[0].toUpperCase() + audioName.substring(1),
          icon: icon,
          button: ControlButton(audioName: audioName),
        )
      };

      return ElevatedButton(
          onPressed: () {
            if (value.widgets.containsKey(audioName)) {
              value.removeWidget(audioName);
            } else {
              value.addWidget(data);
            }
          },
          style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Colors.grey[900],
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(15)),
          child: Icon((value.widgets.containsKey(audioName))
              ? Icons.delete
              : Icons.add));
    });
  }
}
