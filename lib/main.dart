import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:relax_app/pages/home.dart';
import 'package:relax_app/providers/audio_card_list_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => AudioCardListProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
