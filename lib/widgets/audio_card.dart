import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:relax_app/widgets/control_button.dart';

class AudioCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final String audioName;
  const AudioCard({
    Key? key,
    required this.label,
    required this.icon,
    required this.audioName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: SizedBox(
          height: 100,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 50,
                ),
                Text(label)
              ],
            ),
            const Spacer(),
            ControlButton(
              icon: Icons.play_arrow,
              onPressed: () async {
                final player = AudioPlayer(playerId: audioName);
                await player.play(AssetSource('sounds/$audioName.mp3'));

                // player.play(source)
              },
            ),
            ControlButton(
              icon: Icons.stop,
              onPressed: () async {
                final player = AudioPlayer(playerId: audioName);
                await player.stop();
              },
            ),
          ]),
        ),
      ),
    );
  }
}
