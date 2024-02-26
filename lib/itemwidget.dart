import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({super.key});
  final List img = [
    'Black Coffee',
    'Cold Coffee',  
    'Espresso',
    'Latte',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 195),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff212325),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        "images/${img[i]}.png",
                        width: 120,
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                 Padding(padding: const EdgeInsets.only(bottom: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(img[i],style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                  ],
                ),
              ),
              ),
                ],
              )),
      ],
    );
  }
}

//                  Container(
//                     color: Colors.red,
//                   ),
//                   Container(
//                     color: Colors.red,
//                   ),
//                   Container(
//                     color: Colors.red,
//                   ),
//                   Container(
//                     color: Colors.red,
//                   ),