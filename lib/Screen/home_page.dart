import 'package:flutter/material.dart';
import 'package:food_app/DataModel/dummyData.dart';
import 'package:food_app/Screen/food_detail.dart';
import 'package:food_app/Widgets/carousel.dart';
import 'package:food_app/Widgets/food_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.location_on, color: Colors.orange),
            SizedBox(width: 5),
            Text(
              'Jl. Soekarno Hatta 15A',
              style: TextStyle(color: Colors.black),
            ),
            Icon(Icons.arrow_drop_down, color: Colors.orange),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Carousel Section
            Carousel(),
            const SizedBox(height: 20),

            // Fastest Delivery Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fastest delivery 🔥',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See all'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    child: foodItemCard('Carbonara Pasta',
                        'assets/images/pasta.png', 9.5, 40, 7.5),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return FoodDetailScreen(
                            title: dishes[0].title,
                            imagePath: dishes[0].image,
                            price: dishes[0].price,
                            ingredients: dishes[0].ingredients,
                            addOnes: dishes[0].addOnes,
                            isfav: dishes[0].isFav);
                      }));
                    },
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return FoodDetailScreen(
                            title: dishes[5].title,
                            imagePath: dishes[5].image,
                            price: dishes[5].price,
                            ingredients: dishes[5].ingredients,
                            addOnes: dishes[5].addOnes,
                            isfav: dishes[5].isFav);
                      }));
                    },
                    child: foodItemCard('Caesar Salad',
                        'assets/images/salad.png', 8.5, 30, 10.0),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return FoodDetailScreen(
                            title: dishes[4].title,
                            imagePath: dishes[4].image,
                            price: dishes[4].price,
                            ingredients: dishes[4].ingredients,
                            addOnes: dishes[4].addOnes,
                            isfav: dishes[4].isFav);
                      }));
                    },
                    child: foodItemCard('Chicken Sandwich',
                        'assets/images/sandwich.png', 8.0, 20, 15.0),
                  )
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Popular Items Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular items ',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See all'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return FoodDetailScreen(
                            title: dishes[1].title,
                            imagePath: dishes[1].image,
                            price: dishes[1].price,
                            ingredients: dishes[1].ingredients,
                            addOnes: dishes[1].addOnes,
                            isfav: dishes[1].isFav);
                      }));
                    },
                    child: foodItemCard(
                        'Burger', 'assets/images/burger.png', 8.5, 50, 5.0),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return FoodDetailScreen(
                            title: dishes[2].title,
                            imagePath: dishes[2].image,
                            price: dishes[2].price,
                            ingredients: dishes[2].ingredients,
                            addOnes: dishes[2].addOnes,
                            isfav: dishes[2].isFav);
                      }));
                    },
                    child: foodItemCard('Spaghetti',
                        'assets/images/spegetti.png', 9.2, 40, 3.5),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return FoodDetailScreen(
                            title: dishes[3].title,
                            imagePath: dishes[3].image,
                            price: dishes[3].price,
                            ingredients: dishes[3].ingredients,
                            addOnes: dishes[3].addOnes,
                            isfav: dishes[3].isFav);
                      }));
                    },
                    child: foodItemCard(
                        'Pizza', 'assets/images/pizza.png', 9.0, 30, 2.8),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Discover'),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant), label: 'Restaurants'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  // Widget for Food Item Card
}
