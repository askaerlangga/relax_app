import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relax_app/providers/control_button_provider.dart';

class ControlButton extends StatelessWidget {
  const ControlButton({
    Key? key,
    required this.audioName,
  }) : super(key: key);

  final String audioName;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ControlButtonProvider(),
      child: Consumer<ControlButtonProvider>(
          builder: (context, value, child) => ElevatedButton(
              onPressed: () async {
                final player = AudioPlayer(playerId: audioName);
                player.setReleaseMode(ReleaseMode.loop);
                if (value.isPlay == false) {
                  await player.play(AssetSource('sounds/$audioName.mp3'));
                  value.isPlay = true;
                } else {
                  await player.stop();
                  value.isPlay = false;
                }
              },
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.grey[900],
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(15)),
              child: Icon(
                (value.isPlay == true) ? Icons.stop : Icons.play_arrow,
                color: Colors.green[200],
              ))),
    );
  }
}
