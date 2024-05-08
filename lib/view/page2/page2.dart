import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(.1),
            appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
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
                      Text('Mens Shoes'),
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.shop))
              ],
            ),
          ),
          body: Column(children: [Center(
            child: SizedBox(height: 300, width: 300, 
            child: Image.asset('assets/images/shoe2.png'),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.5,
            width: MediaQuery.of(context).size.width*.99,
            decoration: const BoxDecoration(color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),

            child:  const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [ 
                  Text('Best Seller', style: TextStyle(color: Colors.blue),),
                  Text('Nike Air Jordan', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                  Text('Rs: 967.800', style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
                  Text('Air Jordan is an American brand of basketball\n shoes athletic,\n casual, and style clothing\n produced by Nike....', style: TextStyle(color: Colors.grey, fontSize: 12),),
                  ],),
            ),
          )
          ],
          ),
      );
  }
}