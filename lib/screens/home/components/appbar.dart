import 'package:flutter/material.dart';
import 'package:movies_info_app_ui/utils/exports.dart';


class CustomAppBar extends StatelessWidget {
  final IconData lefticon;
  final IconData righticon;
  const CustomAppBar(
      {super.key, required this.lefticon, required this.righticon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 420,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Row(children: [
        const SizedBox(width: 20),
        GestureDetector(
          onTap: (){},
          child: Icon(lefticon, color: GlobalColors.iconColor)),
        const SizedBox(width: 300),
        GestureDetector(
          onTap: (){},
          child: Icon(righticon, color: GlobalColors.iconColor)),
      ]),
    );
  }
}

class RollingAppBar extends StatelessWidget {
  final String title1;
  final String title2;
  final String title3;
  const RollingAppBar(
      {Key? key,
      required this.title1,
      required this.title2,
      required this.title3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      height: 25,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {},
            child: Text(
              title1,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: GlobalColors.textColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              title2,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: GlobalColors.textColor),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              title3,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: GlobalColors.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
