import 'package:assignment/view/page2/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.1),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.rounded_corner),
            onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Page2()),
            );
          },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 20,
              ),
              const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Store Loaction'),
                    Text(
                      'Mandolibug, Sylhet',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.shop))
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: '🔍 Looking for shoes',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIconContainer("assets/images/icon2.png"),
                _buildIconContainer("assets/images/icon3.png"),
                _buildIconContainer("assets/images/iocn4.png"),
                _buildIconContainer("assets/images/iocn5.png"),
                _buildIconContainer("assets/images/iocn5.png"),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Popular Shoes',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'see all',
                        style: TextStyle(color: Colors.blue),
                      ))
                ],
              ),
            ),
            Row(
  children: [
    _buildShoeContainer(
      shoeImage: "assets/images/shoe4.png",
      shoeName: "Nike Jordan",
      price: "\$150",
    ),
    SizedBox(width: 10),
    _buildShoeContainer(
      shoeImage: "assets/images/shoe2.png",
      shoeName: "Adidas UltraBoost",
      price: "\$180",
    ),
  ],
),
SizedBox(height: 20,),
Container(
  width: MediaQuery.of(context).size.width*.5,
  decoration: BoxDecoration(color: Colors.white),
  child: Row(
    children: [
      SizedBox(width: 10),
      _buildShoeDetailsColumn(
        title: "Best Choice",
        shoeName: "Nike Air Jordan",
        price: "\$200",
      ),
       Image.asset(
        "assets/images/shoe1.png",
        width: 100,
        height: 100,
        fit: BoxFit.contain,
      ),
    ],
  ),
)

          ],
        ),
      );
  }
















  Widget _buildIconContainer(String iconPath) {
    return Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(iconPath),
    );
  }


Widget _buildShoeContainer({
  String? shoeImage,
  String? shoeName,
  String? price,
}) {
  return Container(
    width: MediaQuery.of(context).size.width*.4,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Image.asset(
          shoeImage!,
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
        SizedBox(height: 10),
        Text(
          'Best Seller',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          shoeName!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        SizedBox(height: 10),
      ],
    ),
  );
}


Widget _buildShoeDetailsColumn({
  String? title,
  String? shoeName,
  String? price,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          shoeName!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ],
    ),
  );
}

}
