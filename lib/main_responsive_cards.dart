import 'package:flutter/material.dart';

import 'responsive_cards.dart';

class MainResponsiveCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ResponsiveCards(),
    );
  }
}
