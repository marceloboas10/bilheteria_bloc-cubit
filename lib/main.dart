import 'package:bilheteria_bloc/screens/home.dart';
import 'package:bilheteria_bloc/themes/my_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const VilasBoasTicket());
}

class VilasBoasTicket extends StatelessWidget {
  const VilasBoasTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vilas Boas Ticket',
      theme: MyThemes.getTheme('default'),
      home: const Home(),
    );
  }
}
