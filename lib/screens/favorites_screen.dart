// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen(this.favoriteMeals);

  final List<Meal> favoriteMeals;


  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty){
      return Center(child: Text('No favorite meals'),);
    }else{
       return ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              complexity: favoriteMeals[index].complexity,
              imageUrl: favoriteMeals[index].imageUrl,
              duration: favoriteMeals[index].duration,
              affordability: favoriteMeals[index].affordability,
            );
          },
          itemCount: favoriteMeals.length,
        );
    }
  }
}