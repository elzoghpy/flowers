// ignore_for_file: non_constant_identifier_names

import 'package:flowers/app/settings.dart';
import 'package:flowers/constants/resources/asset_manegar.dart';
import 'package:flowers/constants/resources/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlowerScreen extends StatelessWidget {
  FlowerScreen({super.key});

  final List<String> Flowers = [
    ImageAssets.one,
    ImageAssets.sven,
    ImageAssets.ten,
    ImageAssets.tow,
    ImageAssets.three,
    ImageAssets.fore,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.green,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, splashScreen);
              },
            );
          },
        ),
        title: const Center(
          child: Text(
            'Decorative flowers',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                // handle the press
              },
            ),
          ),
        ],
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.green,
            statusBarBrightness: Brightness.light),
      ),
      body: Column(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1),
                child: Container(
                  height: 415,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: MyColors.green),
                  child: ListView.builder(
                      padding: const EdgeInsets.all(20),
                      scrollDirection: Axis.vertical,
                      itemCount: Flowers.length,
                      itemBuilder: (BuildContext context, int index) {
                        String flower = Flowers[index];
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Navigator.pushReplacementNamed(
                                                context, detailsFlowersScreen);
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(25),
                                                    bottomLeft:
                                                        Radius.circular(25)),
                                            child: Center(
                                              child: Image.asset(
                                                flower,
                                                height: 120,
                                                width: 90,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 31,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Row(
                                              children: [
                                                ImageIcon(
                                                  AssetImage(
                                                      ImageAssets.twelve),
                                                  color: Colors.amber,
                                                  size: 13,
                                                ),
                                                ImageIcon(
                                                  AssetImage(
                                                      ImageAssets.twelve),
                                                  color: Colors.amber,
                                                  size: 13,
                                                ),
                                                ImageIcon(
                                                  AssetImage(
                                                      ImageAssets.twelve),
                                                  color: Colors.amber,
                                                  size: 13,
                                                ),
                                                ImageIcon(
                                                  AssetImage(
                                                      ImageAssets.twelve),
                                                  color: Colors.amber,
                                                  size: 13,
                                                ),
                                                ImageIcon(
                                                  AssetImage(
                                                      ImageAssets.twelve),
                                                  color: Colors.grey,
                                                  size: 13,
                                                )
                                              ],
                                            ),
                                            const Text(
                                              'Banana tree',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Text(
                                              '547 EL',
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                CircleAvatar(
                                                  radius: 14,
                                                  backgroundColor: MyColors
                                                      .green
                                                      .withOpacity(.6),
                                                  child: const Text(
                                                    '-',
                                                    style: TextStyle(
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                                const Text(
                                                  'x2',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                CircleAvatar(
                                                  radius: 14,
                                                  backgroundColor: MyColors
                                                      .green
                                                      .withOpacity(.6),
                                                  child: const Text(
                                                    '+',
                                                    style: TextStyle(
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 53,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 0),
                                          child: SizedBox(
                                            width: 85,
                                            height: 70,
                                            child: CustomPaint(
                                              size: Size(
                                                  50,
                                                  (50 * 2.0)
                                                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                              painter: RPSCustomPainter(),
                                              child: const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 50),
                                                child: Icon(Icons.lock),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ])),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SizedBox(
            height: 20,
            width: double.infinity,
            child: CustomPaint(
              size: Size(
                  20,
                  (20 * 0.2)
                      .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainterA(),
              child: const Padding(
                padding:
                    EdgeInsets.only(top: 95, bottom: 20, left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.arrow_back_ios_new),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined),
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.lock),
                  ],
                ),
              ),
            ),
          ),
        ))
      ]),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1 Copy

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 145, 210, 137)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0030803, size.height * 0.0351503);
    path_0.cubicTo(
        size.width * 0.9943242,
        size.height * 0.3983997,
        size.width * 0.9954663,
        size.height * 0.8099092,
        size.width * 0.9988503,
        size.height * 0.9936441);
    path_0.cubicTo(
        size.width * 0.4834266,
        size.height * 0.5462998,
        size.width * -0.0868178,
        size.height * 1.0190718,
        size.width * -0.0762428,
        size.height * 0.4864529);
    path_0.cubicTo(
        size.width * -0.0543315,
        size.height * -0.0113273,
        size.width * 0.4884179,
        size.height * 0.5080272,
        size.width * 1.0030803,
        size.height * 0.0351503);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1 Copy

    Paint paintStroke0 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterA extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 2Copy

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6551700, size.height * 0.9983400);
    path_0.cubicTo(
        size.width * 0.5407400,
        size.height * 0.9958200,
        size.width * 0.4041500,
        size.height * 0.9964000,
        size.width * 0.3462500,
        size.height * 0.9968600);
    path_0.cubicTo(
        size.width * 0.4410600,
        size.height * 0.9130800,
        size.width * 0.4226800,
        size.height * 0.7745200,
        size.width * 0.5003100,
        size.height * 0.7720200);
    path_0.cubicTo(
        size.width * 0.5797400,
        size.height * 0.7747000,
        size.width * 0.5586300,
        size.height * 0.9197400,
        size.width * 0.6551700,
        size.height * 0.9983400);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 2Copy

    Paint paintStroke0 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 2Copy Copy

    Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9978600, size.height * 0.1911800);
    path_1.cubicTo(
        size.width * 0.9968400,
        size.height * 0.4046400,
        size.width * 0.9987400,
        size.height * 0.6594400,
        size.width * 0.9997400,
        size.height * 0.7673800);
    path_1.cubicTo(
        size.width * 0.9269400,
        size.height * 0.5918800,
        size.width * 0.8083600,
        size.height * 0.6284000,
        size.width * 0.8054400,
        size.height * 0.4836000);
    path_1.cubicTo(
        size.width * 0.8069300,
        size.height * 0.3354000,
        size.width * 0.9314700,
        size.height * 0.3725000,
        size.width * 0.9978600,
        size.height * 0.1911800);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Layer 2Copy Copy

    Paint paintStroke1 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);

    // Layer 2Copy Copy Copy

    Paint paintFill2 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_2 = Path();
    path_2.moveTo(size.width * -0.0033400, size.height * 0.1976000);
    path_2.cubicTo(
        size.width * -0.0016300,
        size.height * 0.4085800,
        size.width * -0.0026900,
        size.height * 0.6604800,
        size.width * -0.0033500,
        size.height * 0.7672000);
    path_2.cubicTo(
        size.width * 0.0693300,
        size.height * 0.5925600,
        size.width * 0.1887300,
        size.height * 0.6267800,
        size.width * 0.1912000,
        size.height * 0.4836200);
    path_2.cubicTo(
        size.width * 0.1892200,
        size.height * 0.3371400,
        size.width * 0.0640400,
        size.height * 0.3757800,
        size.width * -0.0033400,
        size.height * 0.1976000);
    path_2.close();

    canvas.drawPath(path_2, paintFill2);

    // Layer 2Copy Copy Copy

    Paint paintStroke2 = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_2, paintStroke2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
