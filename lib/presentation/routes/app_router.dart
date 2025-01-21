import 'package:flutter/material.dart';
import 'package:semana3/presentation/login/login_screen.dart';
import 'package:semana3/presentation/screens/categories_screen.dart';
import 'package:semana3/presentation/screens/products_screen.dart';

Map<String, Widget Function(BuildContext)> get appRouter {
  return{
    'sign-up' : (_) => LoginScreen(),
    'categories' : (_) => CategoriesScreen(),
    'products' : (_) => ProductsScreen(),
  };
} 