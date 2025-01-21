import 'package:flutter/material.dart';
import 'package:semana3/presentation/widgets/shared/card_category_custom.dart';
import 'package:semana3/presentation/widgets/shared/card_small_custome.dart';
import 'package:semana3/presentation/widgets/shared/decoration_background.dart';
import 'package:semana3/presentation/widgets/shared/icon_buttom_custome.dart';
import 'package:semana3/presentation/widgets/shared/text_custome.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
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
                "Categories",
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
                          CardSmallCustome(text: 'Glasses' , colors: Colors.orangeAccent.shade100, icon: Icons.remove_red_eye_sharp,),
                          CardSmallCustome(text: 'Sneakers', colors: Colors.redAccent.shade100, icon: Icons.sledding_sharp,),
                          CardSmallCustome(text: 'T-shirts', colors: Colors.lightBlueAccent.shade100,icon: Icons.shield_rounded),
                        ],
                      ),
                    ),
                    
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            Center(
                              child: Text(
                                'Our products', 
                                style: textCustom(colors: Colors.black87, fontSize: 22, fontWeight: FontWeight.w600),)),
                          ],
                     ),
                   ),
                    Wrap(
                      runSpacing: 30,
                      spacing: 30,
                      children: [
                        CardCategoryCustom(size: size, text: 'Sneakers',icon: Icons.energy_savings_leaf,),
                        CardCategoryCustom(size: size, text: 'T-shirts',icon: Icons.shield_rounded,),
                        CardCategoryCustom(size: size, text: 'Sneakers',icon: Icons.sledding_sharp,),
                        CardCategoryCustom(size: size, text: 'products',icon: Icons.production_quantity_limits,),
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
                      
                    },),
                    IconCustom(icon: Icons.person,onPressed: (){
                      
                    },),
                    IconCustom(icon: Icons.payment,onPressed: (){
                      
                    },),
                    IconCustom(icon: Icons.build_outlined,onPressed: (){
                      
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

void goToProducts(BuildContext context){
  Navigator.of(context).pushNamed('products');
}





