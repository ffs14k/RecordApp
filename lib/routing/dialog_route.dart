import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/timings.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/design_system/color_sheme_ds_extensions.dart';

class DialogRoute extends CustomRoute {
  DialogRoute({required super.page})
      : super(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          duration: const Duration(milliseconds: pageTransitionDuration),
          customRouteBuilder: _dialogRouteBuilder,
        );
}

CustomRouteBuilder _dialogRouteBuilder = <T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  return PageRouteBuilder<T>(
    opaque: false,
    settings: page,
    barrierColor: context.colorScheme.shadow1,
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween(begin: 0.0, end: 1.0).chain(CurveTween(curve: Curves.ease));
      return FadeTransition(
        opacity: animation.drive(tween),
        child: child,
      );
    },
  );
};
