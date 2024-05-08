import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
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
                    Text('Mens Shoes'),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.shop))
            ],
          ),
        ),
        body: Column(children: [Container(height: 300, width: 300, decoration:  BoxDecoration(color: Colors.red),
        ),
        Container(
          child: Column(children: [ Text('Best Seller')],),
        )
        ],
        ),

    );
  }
}