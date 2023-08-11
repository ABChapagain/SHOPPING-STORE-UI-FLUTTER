import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Banners extends StatefulWidget {
  const Banners({super.key});

  @override
  State<Banners> createState() => _BannersState();
}

class _BannersState extends State<Banners> {
  List imageList = [
    {
      'id': '1',
      'imageUrl':
          'https://cdn3.mydukaan.io/app/image/600x600/?url=https://dukaan-us.s3.amazonaws.com/2300044/1d652e20-2b61-4987-b3ec-1f7a336ceb64/image-b90c31a6-1af4-463f-8176-3f85671e5295.png',
    },
    {
      'id': '2',
      'imageUrl':
          'https://sinsoonvegetable.com/wp-content/uploads/2014/04/vegimage.jpg',
    },
    {
      'id': '3',
      'imageUrl':
          'https://us.123rf.com/450wm/peangdao/peangdao1601/peangdao160100169/51651414-fruits-and-vegetables-at-super-market-for-sale.jpg?ver=6',
    }
  ];

  final CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      height: 192,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        child: CarouselSlider(
          items: imageList
              .map(
                (item) => FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: item['imageUrl'],
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
              .toList(),
          carouselController: _carouselController,
          options: CarouselOptions(
            aspectRatio: 2,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            viewportFraction: 1,
          ),
        ),
      ),
    );
  }
}
