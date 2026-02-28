import 'package:flutter/material.dart';


import '../../core/utils/app_assets.dart';
import '../../core/utils/extensions/context_extensions.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    context.pushReplacementNamed('homeScreen');


    Future.delayed(const Duration(seconds: 5), () {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 100),
            Center(
              child: Image.asset(AppAssets.logoPhoto, width: 250, height: 250),
            ),
            SizedBox(height: 150),
            Center(
              child: Image.asset(
                AppAssets.brandingImage,
                width: 200,
                height: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
