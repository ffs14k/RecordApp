import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:record_app/routing/app_router.gr.dart';
import 'package:record_app/routing/router_key.dart';

@RoutePage()
class TabBarPage extends StatelessWidget {
  const TabBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        AboutUsRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return child;
      },
      builder: (context, child) {
        return Container(
          key: rootTabRouterKey,
          child: child,
        );
      },
    );
  }
}
