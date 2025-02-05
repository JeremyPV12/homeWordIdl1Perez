import 'package:flutter/material.dart';
import 'package:semana3/presentation/widgets/shared/decoration_background.dart';
import 'package:semana3/presentation/widgets/shared/icon_buttom_custome.dart';
import 'package:semana3/presentation/widgets/shared/product_card_custom.dart';
import 'package:semana3/presentation/widgets/shared/text_custome.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: decorationBackground(),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.maxFinite,
              ),
              Text(
                "Products",
                style: textCustom(colors: Colors.white, fontSize: 30, fontWeight: FontWeight.w600)
              ), Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          TextUnderlineCustome(text: 'Products',color: Colors.blue,),
                          TextUnderlineCustome(text: 'Categories',color: Colors.grey,),
                          TextUnderlineCustome(text: 'Shopping cart',color: Colors.grey,),
                          TextUnderlineCustome(text: 'T-shirts',color: Colors.grey,),
                        ],
                      ),
                    ),
                    Wrap(
                      runSpacing: 20,
                      spacing: 20,
                      children: [
                        ProcutCardCustome(
                          size: size,
                          url: 'https://images.vexels.com/media/users/3/142960/isolated/lists/2a97b9b57c54506d94d0e12e57e7106b-zapatillas-rojas.png',
                          price: '\$78.00',
                          name: 'Sneakers'
                        ),
                        ProcutCardCustome(
                          size: size,
                          url: 'https://images.vexels.com/media/users/3/192444/isolated/lists/76dd6ac952f7f610ab3916ee352bd58a-botas-de-goma-de-invierno-planas.png',
                          price: '\$120.00',
                          name: 'Boots'
                        ),
                        ProcutCardCustome(
                          size: size,
                          url: 'https://cdn-icons-png.flaticon.com/256/5113/5113556.png',
                          price: '\$70.00',
                          name: 'Briefcase'
                        ),
                        ProcutCardCustome(
                          size: size,
                          url: 'https://images.vexels.com/media/users/3/131469/isolated/lists/ec9b8445ad5d410d653b9e7ae0f028c2-dibujos-animados-de-medio-pantalon-para-hombre-2.png',
                          price: '\$59.90',
                          name: 'Jeans'
                        ),
                      ],
                    )
                     
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconCustom(icon: Icons.shopping_bag,onPressed: (){
                      goToProducts(context);
                    },),
                    IconCustom(icon: Icons.add_shopping_cart_sharp,onPressed: (){
                      goToCategories(context);
                    },),
                    IconCustom(icon: Icons.person,onPressed: (){
                      goToSingUp(context);
                    },),
                    IconCustom(icon: Icons.payment,onPressed: (){
                      //goToCategories(context);
                    },),
                    IconCustom(icon: Icons.build_outlined,onPressed: (){
                      //goToCategories(context);
                    },),
                  ],
                ),
              )
            ],
          ),
        ),
      ),        
    );
  }
}





class IconStarCustom extends StatelessWidget {
  const IconStarCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.white,
      size: 20,
    );
  }
}

class TextUnderlineCustome extends StatelessWidget {
  final String text;
  final Color color;
  const TextUnderlineCustome({
    super.key, required this.color,required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style:  
      TextStyle(
        color: color,
        fontSize: 18,
        decoration: TextDecoration.underline,
        decorationThickness: 2,
        decorationColor: color
    ),);
  }
}




void goToProducts(BuildContext context){
  Navigator.of(context).pushNamed('products');
}

void goToCategories(BuildContext context){
  Navigator.of(context).pushNamed('categories');
}

void goToSingUp(BuildContext context){
  Navigator.of(context).pushNamed('sign-up');
}