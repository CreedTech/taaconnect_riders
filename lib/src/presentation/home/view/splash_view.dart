import 'package:flutter/material.dart';


import '../../../core/components/components.dart';
import '../../../core/helpers/helpers.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 5000),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        getStarted,
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colorWhite,

        // child: SplashScreenContent(),
        child: const SplashScreenContent(),
        // ),
      ),
    );
  }
}

class SplashScreenContent extends StatefulWidget {
  const SplashScreenContent({super.key});

  @override
  State<SplashScreenContent> createState() => _SplashScreenContentState();
}

class _SplashScreenContentState extends State<SplashScreenContent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  fit: BoxFit.fill,
                  'assets/images/logo.png',
                  // height: 100,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
