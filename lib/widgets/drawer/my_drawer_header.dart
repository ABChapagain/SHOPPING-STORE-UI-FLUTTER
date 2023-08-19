import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 80, 16, 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 64,
                width: 64,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://scontent.fbir7-1.fna.fbcdn.net/v/t39.30808-6/302144035_815507636467269_4456650102424990127_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=-gcsxEV8VNQAX8DSEMi&_nc_ht=scontent.fbir7-1.fna&oh=00_AfC9cSpMQ0CrKFN2sKPgNw11P6XgB8ZbTUJz3pwnlONeJw&oe=64E68C57',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 18,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Good Morning',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 109, 109, 109),
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'Achyut Chapagain',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
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
    );
  }
}
