import 'package:flutter/material.dart';
import 'package:semana3/presentation/widgets/shared/text_custome.dart';

class CardCategoryCustom extends StatelessWidget {

  final String text;
  final IconData icon;

  const CardCategoryCustom({
    super.key,
    required this.size, required this.text, required this.icon,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height:  200,
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 60,
            ),
          Text(
            text,
            style: textCustom(colors: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}