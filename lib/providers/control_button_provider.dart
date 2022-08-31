import 'package:flutter/material.dart';

class ControlButtonProvider extends ChangeNotifier {
  bool _isPlay = false;

  bool get isPlay => _isPlay;

  set isPlay(bool value) {
    _isPlay = value;
    notifyListeners();
  }

  IconData get iconPlay => (_isPlay) ? Icons.play_arrow : Icons.stop;

  bool _isAddButton = false;
  bool get isAddButton => _isAddButton;
  set isAddButton(bool value) {
    _isAddButton = value;
    notifyListeners();
  }

  IconData get iconAdd => (_isAddButton) ? Icons.delete : Icons.add;
}
