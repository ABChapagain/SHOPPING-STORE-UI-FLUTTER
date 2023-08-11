import 'package:flutter/material.dart';
import 'package:shopping_store_ui/constants/constant.dart';

class CategorySlider extends StatefulWidget {
  const CategorySlider({super.key});

  @override
  State<CategorySlider> createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  List categoryList = [
    {
      'id': '1',
      'icon': 'assets/icons/categories/carrot.png',
      'title': 'Produce',
      'total': '05'
    },
    {
      'id': '2',
      'icon': 'assets/icons/categories/dry-goods.png',
      'title': 'Dry Goods & Pasta',
      'total': '07'
    },
    {
      'id': '3',
      'icon': 'assets/icons/categories/carrot.png',
      'title': 'Produce',
      'total': '05'
    },
    {
      'id': '4',
      'icon': 'assets/icons/categories/dry-goods.png',
      'title': 'Dry Goods & Pasta s h',
      'total': '07'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.builder(
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          double marginLeft = index == 0 ? 16 : 0;

          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            margin: EdgeInsets.only(
              right: 16,
              left: marginLeft,
            ),
            height: 84,
            width: 163,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Constant().colors.green1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      categoryList[index]['icon'],
                      height: 40,
                      width: 40,
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Text(
                        categoryList[index]['total'],
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  categoryList[index]['title'],
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                  softWrap: false,
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
