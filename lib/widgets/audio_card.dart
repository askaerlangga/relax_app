import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AudioCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final Widget button;

  const AudioCard({
    Key? key,
    required this.label,
    required this.icon,
    required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: SizedBox(
          height: 100,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  icon,
                  size: 40,
                  color: Colors.grey[900],
                ),
                Text(
                  label,
                  style: TextStyle(color: Colors.grey[900]),
                )
              ],
            ),
            const Spacer(),
            button
          ]),
        ),
      ),
    );
  }
}
