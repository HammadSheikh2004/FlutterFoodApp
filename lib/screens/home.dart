import 'package:flutter/material.dart';
import 'package:food_app/NavigationAndAppBar/appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // Color(0xFF46200A)
// Color(0xFFEEAA01)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Appbar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.zero,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          width: 60, // Set your desired width
                          height: 60, // Set your desired height
                          child: CircleAvatar(
                            radius: 30, // Half of the desired size to fit within the container
                            backgroundImage: AssetImage(images[index]),
                          ),
                        ),
                        tileColor:const Color(0xFFEEAA01),
                        title: Text(
                          foodText[index],
                          style:const TextStyle(color: Color(0xFF46200A),fontSize: 18),
                        ),
                      ),
                      SizedBox(height: 2),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List images = [
  "assets/images/food_img1.jpg",
  "assets/images/food_img2.jpg",
  "assets/images/food_img3.jpg",
  "assets/images/food_img4.jpg",
  "assets/images/food_img5jpg.jpg",
  "assets/images/food_img6.jpg",
  "assets/images/food_img7.jpg",
  "assets/images/food_img8.jpg",
  "assets/images/food_img9.jpg",
  "assets/images/food_img10.jpg",
];

List<String> foodText = [
  'Explore a world of flavors with our diverse menu!',
  'Indulge in the finest culinary creations that delight the senses!',
  'Savor the taste of fresh ingredients crafted into mouthwatering dishes!',
  'Elevate your dining experience with our chef-inspired specials!',
  'Discover the perfect balance of taste and nutrition in every bite!',
  'Treat yourself to a culinary journey of exquisite and delectable meals!',
  'Experience the joy of dining with our thoughtfully curated menu!',
  'Embrace the artistry of cooking with our signature dishes!',
  'Nourish your body and soul with our wholesome and flavorful recipes!',
  'Celebrate good food and good times with our delicious offerings!',
];

