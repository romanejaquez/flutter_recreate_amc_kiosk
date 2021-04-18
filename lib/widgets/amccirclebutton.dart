import 'package:amc_flutter_app/helpers/amc-colors.dart';
import 'package:flutter/material.dart';

class AmcCircleButton extends StatelessWidget {

  final IconData icon;
  final String label;
  Function onTap;

  AmcCircleButton({ this.label, this.icon, @required this.onTap });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: AmcColors.MAIN_PINK
              ),
              child: Icon(
                this.icon,
                size: 100,
                color: Colors.white  
              )
            ),
            Container(
              width: 180, 
              child: Text(this.label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30  
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

}