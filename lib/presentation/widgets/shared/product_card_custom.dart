import 'package:flutter/material.dart';
import 'package:semana3/presentation/screens/products_screen.dart';
import 'package:semana3/presentation/widgets/shared/text_custome.dart';

class ProcutCardCustome extends StatelessWidget {


  final String name ;
  final String price ;
  final String url ;


  const ProcutCardCustome({
    super.key,
    required this.size, required this.name, required this.price, required this.url,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue.shade200,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(70),
              color: Colors.white
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(url),
            )
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(name, style: textCustom(colors: Colors.black,fontSize: 20, fontWeight: FontWeight.w800),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(price, style: textCustom(colors: Colors.white,fontSize: 25, fontWeight: FontWeight.w400),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconStarCustom(),
              IconStarCustom(),
              IconStarCustom(),
              IconStarCustom(),
              IconStarCustom(),
            ],
          )
        ],
      ),
    );
  }
}