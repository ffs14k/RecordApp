import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeTabRootPage extends StatelessWidget {
  const HomeTabRootPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
