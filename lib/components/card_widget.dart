import 'package:flutter/material.dart';

import 'package:movies_info_app_ui/utils/constants.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 360,
      width: width * 0.85,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          Buildcard(
            movie: 'assets/images/movie1.jpg',
          ),
          SizedBox(width: 2),
          Buildcard(
            movie: 'assets/images/movie2.jpg',
          ),
          SizedBox(width: 2),
          Buildcard(
            movie: 'assets/images/movie3.jpg',
          ),
          SizedBox(width: 2),
          Buildcard(
            movie: 'assets/images/movie4.png',
          ),
          SizedBox(width: 2),
        ],
      ),
    );
  }
}

class Buildcard extends StatelessWidget {
  final String movie;
  const Buildcard({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalColors.textColor,
      elevation: 10,
      child: Image.asset(movie),
    );
  }
}
