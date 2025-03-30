import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:record_app/entities/ui/tab_id.dart';

class SelectTabAction {
  final TabId tab;
  SelectTabAction(this.tab);
}

class NavigatePushAction {
  final BuildContext context;
  final PageRouteInfo routeInfo;

  NavigatePushAction(
    this.context,
    this.routeInfo,
  );
}

class NavigateReplaceAction {
  final BuildContext context;
  final PageRouteInfo routeInfo;

  NavigateReplaceAction(
    this.context,
    this.routeInfo,
  );
}

class NavigateBackContextAction {
  final BuildContext context;
  NavigateBackContextAction(this.context);
}
