// ignore_for_file: avoid_unnecessary_containers

import 'package:flowers/constants/resources/asset_manegar.dart';
import 'package:flowers/constants/resources/my_colors.dart';
import 'package:flutter/material.dart';

class DetailsFlowersScreen extends StatelessWidget {
  const DetailsFlowersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: MyColors.green,
        child: CustomPaint(
          size: Size(
              double.infinity,
              (double.infinity * 1.2727272727272727)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainterB(),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 310,
                      width: 350,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 170),
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  radius: 20,
                                  backgroundColor: MyColors.lightgreen,
                                  child: Text('M'),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      MyColors.lightgreen.withOpacity(.3),
                                  child: const Text('L'),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor:
                                      MyColors.lightgreen.withOpacity(.3),
                                  child: const Text('XL'),
                                ),
                              ],
                            ),
                          ),
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              const Image(
                                image: AssetImage(ImageAssets.ten),
                                height: 300,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: InkWell(
                                  onTap: () {},
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        MyColors.lightgreen.withOpacity(.6),
                                    child: const Text(
                                      '>',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: const Column(
                  children: [
                    Text('Strelitzi',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    Text('BIRD OF BARADISE',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    Text('100 EL',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person_2_rounded,
                            size: 40,
                          ),
                          Spacer(),
                          Text('x2',
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
                          Spacer(),
                          Icon(
                            Icons.home_filled,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add,
                            size: 40,
                          ),
                          Spacer(),
                          Icon(
                            Icons.remove,
                            size: 40,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          size: 40,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainterB extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0022091, size.height * 0.1831143);
    path_0.cubicTo(
        size.width * 0.9636091,
        size.height * 0.5350214,
        size.width * 0.6974273,
        size.height * 0.6790857,
        size.width * 0.4998455,
        size.height * 0.6783286);
    path_0.cubicTo(
        size.width * 0.2917091,
        size.height * 0.6782214,
        size.width * 0.0300818,
        size.height * 0.5327286,
        size.width * 0.0004364,
        size.height * 0.1811429);
    path_0.quadraticBezierTo(size.width * -0.0060545, size.height * 0.1447429,
        size.width * 0.0004909, size.height * -0.0007143);
    path_0.lineTo(size.width * 0.9966455, size.height * -0.0021429);
    path_0.lineTo(size.width * 0.9996455, 0);
    path_0.quadraticBezierTo(size.width * 1.0044273, size.height * 0.0737786,
        size.width * 1.0022091, size.height * 0.1831143);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 1

    Paint paintFill1 = Paint()
      ..color = const Color(0xFF8DD585)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.2897455, size.height * 0.7909643);
    path_1.cubicTo(
        size.width * 0.3347455,
        size.height * 0.8158071,
        size.width * 0.4307455,
        size.height * 0.7660857,
        size.width * 0.5035636,
        size.height * 0.7722143);
    path_1.cubicTo(
        size.width * 0.5814273,
        size.height * 0.7802071,
        size.width * 0.6238818,
        size.height * 0.8005714,
        size.width * 0.6861091,
        size.height * 0.7895000);
    path_1.cubicTo(
        size.width * 0.7420182,
        size.height * 0.7752857,
        size.width * 0.7453909,
        size.height * 0.7338929,
        size.width * 0.7034818,
        size.height * 0.6327143);
    path_1.cubicTo(
        size.width * 0.6700636,
        size.height * 0.6485071,
        size.width * 0.5843727,
        size.height * 0.6816857,
        size.width * 0.5022364,
        size.height * 0.6781071);
    path_1.cubicTo(
        size.width * 0.4433273,
        size.height * 0.6758000,
        size.width * 0.3686182,
        size.height * 0.6667714,
        size.width * 0.2989909,
        size.height * 0.6359643);
    path_1.cubicTo(
        size.width * 0.2557182,
        size.height * 0.7168786,
        size.width * 0.2544727,
        size.height * 0.7679286,
        size.width * 0.2897455,
        size.height * 0.7909643);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 59, 220, 149)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);

    // Layer 1 Copy

    Paint paintFill2 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.9967696, size.height * 0.6234286);
    path_2.cubicTo(
        size.width * 0.9533818,
        size.height * 0.6788571,
        size.width * 0.8189983,
        size.height * 0.6500357,
        size.width * 0.8155025,
        size.height * 0.7189071);
    path_2.cubicTo(
        size.width * 0.8199011,
        size.height * 0.7823571,
        size.width * 0.9522585,
        size.height * 0.7529786,
        size.width * 0.9995725,
        size.height * 0.8110143);
    path_2.cubicTo(
        size.width * 0.9973365,
        size.height * 0.7369143,
        size.width * 0.9982603,
        size.height * 0.6721429,
        size.width * 0.9967696,
        size.height * 0.6234286);
    path_2.close();

    canvas.drawPath(path_2, paintFill2);

    // Layer 1 Copy

    Paint paintStroke2 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_2, paintStroke2);

    // Layer 1 Copy Copy

    Paint paintFill3 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.0015556, size.height * 0.6207000);
    path_3.cubicTo(
        size.width * 0.0458556,
        size.height * 0.6760071,
        size.width * 0.1790682,
        size.height * 0.6465429,
        size.width * 0.1833001,
        size.height * 0.7155000);
    path_3.cubicTo(
        size.width * 0.1794851,
        size.height * 0.7790643,
        size.width * 0.0467312,
        size.height * 0.7502571,
        size.width * -0.0003727,
        size.height * 0.8086000);
    path_3.cubicTo(
        size.width * 0.0011491,
        size.height * 0.7350786,
        size.width * 0.0015660,
        size.height * 0.6695000,
        size.width * 0.0015556,
        size.height * 0.6207000);
    path_3.close();

    canvas.drawPath(path_3, paintFill3);

    // Layer 1 Copy Copy

    Paint paintStroke3 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_3, paintStroke3);

    // Layer 1 Copy Copy Copy

    Paint paintFill4 = Paint()
      ..color = const Color(0xFF8DD585)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.3167182, size.height * 1.0012463);
    path_4.cubicTo(
        size.width * 0.4286091,
        size.height * 0.9830607,
        size.width * 0.3694091,
        size.height * 0.9253338,
        size.width * 0.5088000,
        size.height * 0.9240011);
    path_4.cubicTo(
        size.width * 0.6372364,
        size.height * 0.9259872,
        size.width * 0.5769909,
        size.height * 0.9817603,
        size.width * 0.6947636,
        size.height * 1.0018285);
    path_4.cubicTo(
        size.width * 0.5447727,
        size.height * 1.0011557,
        size.width * 0.4153636,
        size.height * 1.0000494,
        size.width * 0.3167182,
        size.height * 1.0012463);
    path_4.close();

    canvas.drawPath(path_4, paintFill4);

    // Layer 1 Copy Copy Copy

    Paint paintStroke4 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_4, paintStroke4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
