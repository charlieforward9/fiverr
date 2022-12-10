import 'dart:math';
import 'package:flutter/material.dart';

class LandingAd extends StatelessWidget {
  const LandingAd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(),
          gradient: const LinearGradient(
              colors: [Color(0xff555555), Color(0xffffffff), Color(0xff002868)],
              stops: [0.0, 0.25, 1.0],
              transform: GradientRotation(-pi / 15))),
      child: Stack(alignment: Alignment.center, children: [
        const Positioned(
          top: 0,
          left: -280,
          child: Image(
            height: 1200,
            image: AssetImage("charboHD.png"),
          ),
        ),
        const Positioned(
          top: 8,
          right: 32,
          child: Image(
            height: 200,
            image: AssetImage("americanFlag.png"),
          ),
        ),
        const Positioned(
          top: 150,
          right: 70,
          child: Icon(
            Icons.star,
            size: 36,
            color: Colors.yellowAccent,
            shadows: [Shadow(blurRadius: 6)],
          ),
        ),
        Positioned(
          right: 16,
          bottom: 64,
          child: SizedBox(
            height: 500,
            child: Column(
              children: const [
                Spacer(),
                LogoBox(assetName: "apple.png"),
                Spacer(),
                LogoBox(assetName: "android.png"),
                Spacer(),
                LogoBox(assetName: "www.png"),
                Spacer(),
              ],
            ),
          ),
        ),
        Positioned(
            right: 420,
            top: 16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "AFFORDABLE",
                  style: TextStyle(
                      fontSize: 160,
                      color: Colors.white,
                      shadows: [Shadow(blurRadius: 8)]),
                ),
                Text(
                  "AMERICAN",
                  style: TextStyle(
                      fontSize: 200,
                      color: Colors.white,
                      shadows: [Shadow(blurRadius: 8)]),
                ),
              ],
            )),
        const Positioned(
          right: 180,
          top: 228,
          child: Text(
            "MADE",
            style: TextStyle(
                fontSize: 130,
                color: Colors.white,
                shadows: [Shadow(blurRadius: 8)]),
          ),
        ),
        const Positioned(
          bottom: -40,
          left: 200,
          child: Text("APPS",
              style: TextStyle(
                  fontSize: 520,
                  color: Colors.white,
                  shadows: [Shadow(color: Colors.black, blurRadius: 25)])),
        ),
        const Positioned(
          bottom: -10,
          left: 300,
          child: Text("STARTING AT \$195",
              style: TextStyle(
                  fontSize: 80,
                  color: Colors.white,
                  shadows: [Shadow(color: Colors.black, blurRadius: 8)])),
        ),
        const Positioned(bottom: 8, right: 16, child: MadeWithFlutter()),
        const Positioned(right: 300, bottom: 8, child: HabloEspanol()),
      ]),
    );
  }
}

class LogoBox extends StatelessWidget {
  final String assetName;
  const LogoBox({super.key, required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 3.0),
            borderRadius: const BorderRadius.all(Radius.circular(8.0))),
        padding: const EdgeInsets.all(10),
        child: Image(fit: BoxFit.fitHeight, image: AssetImage(assetName)));
  }
}

class MadeWithFlutter extends StatelessWidget {
  const MadeWithFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 3.0),
            borderRadius: const BorderRadius.all(Radius.circular(4.0))),
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: const [
            Text(
              "Built with ",
              style: TextStyle(fontSize: 30),
            ),
            Image(image: AssetImage("flutter.png"))
          ],
        ));
  }
}

class HabloEspanol extends StatelessWidget {
  const HabloEspanol({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 3.0),
            borderRadius: const BorderRadius.all(Radius.circular(4.0))),
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            const Image(image: AssetImage("spanishFlag.png")),
            const Text("  Hablo Espa", style: TextStyle(fontSize: 30)),
            Stack(
              clipBehavior: Clip.none,
              children: const [
                SizedBox(
                  height: 30,
                  width: 14,
                ),
                Positioned(
                  top: -15,
                  child: Text("~", style: TextStyle(fontSize: 30)),
                ),
                Positioned(
                    top: 0, child: Text("N", style: TextStyle(fontSize: 30)))
              ],
            ),
            const Text("ol ", style: TextStyle(fontSize: 30))
          ],
        ));
  }
}
