import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/timings.dart';

class BottomSheetRoute extends CustomRoute {
  BottomSheetRoute({required super.page})
      : super(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          duration: const Duration(milliseconds: pageTransitionDuration),
          customRouteBuilder: _bottomSheetRouteBuilder,
        );
}

CustomRouteBuilder _bottomSheetRouteBuilder = <T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  return PageRouteBuilder<T>(
    opaque: true,
    settings: page,
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween(
        begin: const Offset(0, 1),
        end: Offset.zero,
      ).chain(
        CurveTween(curve: Curves.ease),
      );
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
};
