import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  List productsList = [
    {
      'id': '1',
      'imageUrl':
          'https://img.paisawapas.com/ovz3vew9pw/2022/08/29131335/Frame-1-12.jpg',
      'weight': '120g',
      'title': 'Macaroon cake filled with pineapple',
      'price': '5.00',
      'country': 'Wales'
    },
    {
      'id': '2',
      'imageUrl':
          'https://target.scene7.com/is/image/Target/3_Wk2_Grocery_Bakery_Freshness_SH_Small165107-190218_1550529353566?wid=668&qlt=60&fmt=pjpeg',
      'weight': '100g',
      'title': 'Chocolate and vanilla cupcakes',
      'price': '8.00',
      'country': 'Wales'
    },
    {
      'id': '3',
      'imageUrl':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-m4kd4RZfSs2elXH_1eaFYy4-Mub9JtkWjA&usqp=CAU',
      'weight': '100g',
      'title': 'Liqid laundy deteger Ex Matic - US',
      'price': '25.42',
      'country': 'US'
    }
  ];

  @override
  Widget build(BuildContext context) {
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bakery',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Great bread selections for any meal',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
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
        const SizedBox(height: 16),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: productsList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              double marginLeft = index == 0 ? 16 : 0;

              return Container(
                width: 156,
                margin: EdgeInsets.only(
                  right: 16,
                  left: marginLeft,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 104,
                      width: 156,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          productsList[index]['imageUrl'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productsList[index]['weight'],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          productsList[index]['country'],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      productsList[index]['title'],
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.fade,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '\$ ${productsList[index]['price']}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black,
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          SizedBox(width: 8),
                          Text(
                            'Add To Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    )
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

class $ {}
