import 'package:food_app/DataModel/dish.dart';

// Constants in Dart should be written in lowerCamelcase.
final dishes = [
  const Dish(
      title: 'Carbonara Pasta',
      addOnes: ['Parmasun cheeze', 'sause'],
      price: 7.50,
      image: 'assets/images/pasta.png',
      ingredients: 'Tomato, noodles, parsley',
      isFav: false),
  const Dish(
      title: 'Classic Burger',
      addOnes: ['Cheddar Cheese', 'Bacon', 'Lettuce'],
      price: 8.99,
      image: 'assets/images/burger.png',
      ingredients: 'Beef Patty, Tomato, Onion',
      isFav: false),
  const Dish(
      title: 'Spaghetti Bolognese',
      addOnes: ['Parmesan Cheese', 'Garlic Bread'],
      price: 9.50,
      image: 'assets/images/spegetti.png',
      ingredients: 'Ground Beef, Tomato Sauce, Garlic',
      isFav: false),

  // Pizza
  const Dish(
      title: 'Margherita Pizza',
      addOnes: ['Extra Cheese', 'Olives'],
      price: 10.99,
      image: 'assets/images/pizza.png',
      ingredients: 'Tomato Sauce, Mozzarella, Basil',
      isFav: false),

  // Sandwich
  const Dish(
      title: 'Chicken Sandwich',
      addOnes: ['Avocado', 'Pickles'],
      price: 6.75,
      image: 'assets/images/sandwich.png',
      ingredients: 'Grilled Chicken, Lettuce, Mayo',
      isFav: false),

  // Salad
  const Dish(
      title: 'Caesar Salad',
      addOnes: ['Croutons', 'Parmesan Cheese'],
      price: 7.25,
      image: 'assets/images/salad.png',
      ingredients: 'Romaine Lettuce,  Dressing, Grilled Chicken',
      isFav: false),
];
