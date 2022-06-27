import 'package:flutter/material.dart';

import 'package:movies_info_app_ui/utils/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 420,
      width: width * 0.85,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Buildcard(
            movie: 'assets/images/movie1.jpg',
            title: 'Django Unchanied',
          ),
          SizedBox(width: 2),
          Buildcard(
            movie: 'assets/images/movie2.jpg',
            title: 'Avatar 2',
          ),
          SizedBox(width: 2),
          Buildcard(
            movie: 'assets/images/movie3.jpg',
            title: 'Missson Impossible 6',
          ),
          SizedBox(width: 2),
          Buildcard(
            movie: 'assets/images/movie4.jpg',
            title: 'The Revanent',
          ),
          SizedBox(width: 2),
        ],
      ),
    );
  }
}

class Buildcard extends StatelessWidget {
  final String title;
  final String movie;
  const Buildcard({
    Key? key,
    required this.movie,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 250,
      child: Column(
        children: [
          Card(
            color: GlobalColors.textColor,
            elevation: 10,
            child: Image.asset(movie),
          ),
          const SizedBox(height: 10),
          Container(
            height: 28,
            padding: const EdgeInsets.symmetric(
              horizontal: 28,
              vertical: 1.5,
            ),
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: StadiumBorder(
                side: BorderSide(
                  color: GlobalColors.cardColor,
                  strokeAlign: StrokeAlign.outside,
                  width: 4,
                ),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: GlobalColors.darkColor,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
