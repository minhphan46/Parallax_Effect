import 'package:flutter/material.dart';
import 'package:parellax_effect/widgets/paralax_backround.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double top11 = 0;
  double top10 = 0;
  double top9 = 0;
  double top8 = 0;
  double top7 = 0;
  double top6 = 0;
  double top5 = 0;
  double top4 = 0;
  double top3 = 0;
  double top2 = 0;
  double top1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (notif) {
          if (notif is ScrollUpdateNotification) {
            if (notif.scrollDelta == null) return true;
            setState(() {
              top11 -= notif.scrollDelta! / 2.0;
              top10 -= notif.scrollDelta! / 1.9;
              top9 -= notif.scrollDelta! / 1.8;
              top8 -= notif.scrollDelta! / 1.7;
              top7 -= notif.scrollDelta! / 1.6;
              top6 -= notif.scrollDelta! / 1.5;
              top5 -= notif.scrollDelta! / 1.4;
              top4 -= notif.scrollDelta! / 1.3;
              top3 -= notif.scrollDelta! / 1.2;
              top2 -= notif.scrollDelta! / 1.2;
              top1 -= notif.scrollDelta! / 1;
            });
          }
          return true;
        },
        child: Stack(
          children: [
            // backround
            ParalaxBackround(
              top: top11,
              asset: "assets/top-paralax-11.png",
            ),
            ParalaxBackround(
              top: top10,
              asset: "assets/top-paralax-10.png",
            ),
            ParalaxBackround(
              top: top9,
              asset: "assets/top-paralax-9.png",
            ),
            ParalaxBackround(
              top: top8,
              asset: "assets/top-paralax-8.png",
            ),
            ParalaxBackround(
              top: top7,
              asset: "assets/top-paralax-7.png",
            ),
            ParalaxBackround(
              top: top6,
              asset: "assets/top-paralax-6.png",
            ),
            ParalaxBackround(
              top: top5,
              asset: "assets/top-paralax-5.png",
            ),
            ParalaxBackround(
              top: top4,
              asset: "assets/top-paralax-4.png",
            ),
            ParalaxBackround(
              top: top3,
              asset: "assets/top-paralax-3.png",
            ),
            ParalaxBackround(
              top: top2,
              asset: "assets/top-paralax-2.png",
            ),
            ParalaxBackround(
              top: top1,
              asset: "assets/top-paralax-1.png",
            ),
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  const SizedBox(height: 350),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff372d3b),
                    alignment: Alignment.center,
                    child: Text(
                      "Paralax Effect",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
