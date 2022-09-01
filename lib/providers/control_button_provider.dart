import 'package:flutter/material.dart';

class ControlButtonProvider extends ChangeNotifier {
  bool _isPlay = false;

  bool get isPlay => _isPlay;

  set isPlay(bool value) {
    _isPlay = value;
    notifyListeners();
  }

  IconData get iconPlay => (_isPlay) ? Icons.stop : Icons.play_arrow;
}
