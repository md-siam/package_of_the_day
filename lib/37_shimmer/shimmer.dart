import 'package:flutter/material.dart';
import 'package:package_of_the_day/37_shimmer/widget/shimmer_widget.dart';

import 'data/foods.dart';
import 'model/food_model.dart';

class MyShimmer extends StatefulWidget {
  const MyShimmer({Key? key}) : super(key: key);

  @override
  State<MyShimmer> createState() => _MyShimmerState();
}

class _MyShimmerState extends State<MyShimmer> {
  bool isLoading = false;
  List<Food> foods = [];

  @override
  void initState() {
    super.initState();
    // activate the loader
    loadData();
  }

  // loaded the food from data/foods.dart
  Future loadData() async {
    setState(() => isLoading = true);
    await Future.delayed(const Duration(seconds: 3), () {});
    foods = List.of(allFoods);
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Shimmer')),
      body: ListView.builder(
        itemCount: isLoading ? 3 : foods.length,
        itemBuilder: (BuildContext context, int index) {
          if (isLoading) {
            return buildFoodShimmer();
          } else {
            final food = foods[index];
            return buildFood(food);
          }
        },
      ),
    );
  }

  Widget buildFood(Food food) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(food.urlImage),
        ),
      ),
      title: Text(
        food.title,
        style: const TextStyle(fontSize: 16),
      ),
      subtitle: Text(
        food.description,
        style: const TextStyle(fontSize: 14),
        maxLines: 1,
      ),
    );
  }

  Widget buildFoodShimmer() {
    return const ListTile(
      leading: ShimmerWidget.circular(width: 64, hight: 64),
      title: ShimmerWidget.rectangular(hight: 16),
      subtitle: ShimmerWidget.rectangular(hight: 14),
    );
  }
}
