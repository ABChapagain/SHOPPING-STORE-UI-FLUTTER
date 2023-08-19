import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_store_ui/constants/constant.dart';
import 'package:shopping_store_ui/widgets/home/banners.dart';
import 'package:shopping_store_ui/widgets/home/category_section.dart';
import 'package:shopping_store_ui/widgets/home/category_slider.dart';
import 'package:shopping_store_ui/widgets/home/featured_brands.dart';
import 'package:shopping_store_ui/widgets/home/promo_banner.dart';
import 'package:shopping_store_ui/widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              'assets/icons/menu.svg',
              width: 24,
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  width: 24,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/cart.svg',
                  width: 24,
                ),
              ),
            ],
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Banners(),
            SizedBox(height: 16),
            CategorySlider(),
            SizedBox(height: 24),
            CategorySection(),
            SizedBox(height: 24),
            CategorySection(),
            SizedBox(height: 24),
            FeaturedBrands(),
            SizedBox(height: 24),
            CategorySection(),
            SizedBox(height: 24),
            PromoBanner(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          child: GNav(
            backgroundColor: Colors.transparent,
            color: Colors.grey,
            activeColor: Constant().colors.green5,
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 16,
            ),
            gap: 2,
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.dashboard_outlined,
                text: 'Explore',
              ),
              GButton(
                icon: Icons.favorite_outline,
                text: 'Favorite',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
