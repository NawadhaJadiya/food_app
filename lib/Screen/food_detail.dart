import 'package:flutter/material.dart';

class FoodDetailScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final num price;
  final String ingredients;
  final List<String> addOnes;
  final bool isfav;

  FoodDetailScreen(
      {required this.title,
      required this.imagePath,
      required this.price,
      required this.ingredients,
      required this.addOnes,
      required this.isfav});

  @override
  Widget build(BuildContext context) {
    var heart_icon =
        isfav ? const Icon(Icons.favorite) : const Icon(Icons.favorite_border);
    final double originalPrice = price + price * 0.2;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.logout_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image of the food
            Center(
              child: Image.asset(
                imagePath,
                height: 200,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 20),

            // Title and ingredients
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      ingredients,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),

                    // Price
                    Row(
                      children: [
                        Text(
                          '€${price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '€${originalPrice.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    height: 30,
                    width: 30,
                    child: InkWell(
                      child: heart_icon,
                      onTap: () {
                        heart_icon == Icon(Icons.favorite_border)
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border);
                      },
                    ))
              ],
            ),
            SizedBox(height: 20),

            // Add-ons Section
            const Text(
              'Add more',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: addOnes.map((addOn) {
                return Row(
                  children: [
                    Icon(Icons.fastfood_outlined),
                    SizedBox(width: 10),
                    Text(addOn),
                    Spacer(),
                    Text(
                      '+€2.50',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    Radio(
                      value: false,
                      groupValue: false,
                      onChanged: (value) {},
                    )
                  ],
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Package option
            Row(
              children: [
                Icon(Icons.local_shipping_outlined),
                SizedBox(width: 10),
                Text('Package box cost'),
                Spacer(),
                Text(
                  '+€0.50',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                Radio(
                  value: false,
                  groupValue: false,
                  onChanged: (value) {},
                )
              ],
            ),
            const Spacer(),

            // Quantity selector and Add to order button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {},
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Add to order',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
