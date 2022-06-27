import 'package:flutter/material.dart';
import 'package:movies_info_app_ui/utils/exports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1800), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              decoration: const BoxDecoration(
                color: GlobalColors.textColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/images/splash.png'),
            ),
            const SizedBox(height: 80),
            Container(
              width: 65,
              height: 65,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: GlobalColors.textColor,
              ),
              child: const SpinKitFadingFour(color: GlobalColors.darkColor),
            ),
          ],
        ),
      ),
    );
  }
}
