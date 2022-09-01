import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:relax_app/widgets/audio_card.dart';
import 'package:relax_app/widgets/control_button.dart';
import 'package:relax_app/widgets/leading_card.dart';

class AudioCardListProvider extends ChangeNotifier {
  Map<String, Widget> _widgets = {
    'leading': const LeadingCard(),
    'water': const AudioCard(
      label: 'Water',
      icon: FontAwesomeIcons.water,
      button: ControlButton(audioName: 'water'),
    ),
    'bird': const AudioCard(
      label: 'Bird',
      icon: FontAwesomeIcons.crow,
      button: ControlButton(audioName: 'bird'),
    ),
  };

  Map<String, Widget> get widgets => {..._widgets};

  set widgets(Map<String, Widget> value) {
    _widgets = value;
    notifyListeners();
  }

  void addWidget(Map<String, Widget> mapWidget) {
    _widgets.addAll(mapWidget);
    notifyListeners();
  }

  void removeWidget(String key) {
    _widgets.remove(key);
    notifyListeners();
  }
}
