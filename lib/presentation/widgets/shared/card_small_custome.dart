import 'package:flutter/material.dart';
import 'package:semana3/presentation/widgets/shared/text_custome.dart';

class CardSmallCustome extends StatelessWidget {

  final Color colors ;
  final IconData icon;
  final String text;

  const CardSmallCustome({
    super.key, required this.colors, required this.icon, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8 ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: colors
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 40.0 ,
                  ),
                Text(
                  text,
                  style: textCustom(colors: Colors.white, fontSize: 22, fontWeight: FontWeight.w300),
                )
              ],
            ),
          ) ,
        ),
      ),
    );
  }

  
}