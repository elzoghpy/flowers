// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flowers/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Flowers(
    appRouter: AppRouter(),
  ));
}

class Flowers extends StatelessWidget {
  final AppRouter appRouter;
  const Flowers({
    Key? key,
    required this.appRouter,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flowers',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
