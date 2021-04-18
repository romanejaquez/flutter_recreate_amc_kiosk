import 'package:amc_flutter_app/widgets/amcbottombar.dart';
import 'package:amc_flutter_app/widgets/amcheader.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AmcHeader(),
          Expanded(
            child: Container()
          ),
          AmcBottomBar()
        ]
      )
    );
  }

}