import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturedBrands extends StatelessWidget {
  const FeaturedBrands({super.key});

  @override
  Widget build(BuildContext context) {
    List productsList = [
      {
        'id': '1',
        'imageUrl':
            'https://img.paisawapas.com/ovz3vew9pw/2022/08/29131335/Frame-1-12.jpg',
      },
      {
        'id': '2',
        'imageUrl':
            'https://target.scene7.com/is/image/Target/3_Wk2_Grocery_Bakery_Freshness_SH_Small165107-190218_1550529353566?wid=668&qlt=60&fmt=pjpeg',
      },
      {
        'id': '3',
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-m4kd4RZfSs2elXH_1eaFYy4-Mub9JtkWjA&usqp=CAU',
      },
      {
        'id': '4',
        'imageUrl':
            'https://img.paisawapas.com/ovz3vew9pw/2022/08/29131335/Frame-1-12.jpg',
      },
      {
        'id': '5',
        'imageUrl':
            'https://target.scene7.com/is/image/Target/3_Wk2_Grocery_Bakery_Freshness_SH_Small165107-190218_1550529353566?wid=668&qlt=60&fmt=pjpeg',
      },
      {
        'id': '6',
        'imageUrl':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-m4kd4RZfSs2elXH_1eaFYy4-Mub9JtkWjA&usqp=CAU',
      },
      {
        'id': '7',
        'imageUrl':
            'https://img.paisawapas.com/ovz3vew9pw/2022/08/29131335/Frame-1-12.jpg',
      },
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Featured Brands',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/arrow-right.svg',
                  width: 24,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 64,
          child: ListView.builder(
            itemCount: productsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              double marginLeft = index == 0 ? 16 : 0;
              return Container(
                width: 64,
                margin: EdgeInsets.only(
                  right: 16,
                  left: marginLeft,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 64,
                      width: 64,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          productsList[index]['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
