import 'package:auto_route/auto_route.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';
import 'package:record_app/routing/router_key.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> navigationMiddleware() {
  return [
    _selectTab.call,
    _navigatePush.call,
    _navigateReplace.call,
    _navigateBackContext.call,
  ];
}

final _selectTab = TypedMiddleware<AppState, SelectTabAction>(
  (store, action, next) {
    final tabsContext = rootTabRouterKey.currentContext;
    if (tabsContext != null) {
      final tabsRouter = AutoTabsRouter.of(tabsContext);
      tabsRouter.setActiveIndex(action.tab.index);
    }
    next(action);
  },
);

final _navigatePush = TypedMiddleware<AppState, NavigatePushAction>(
  (store, action, next) {
    if (action.context.mounted) {
      final router = AutoRouter.of(action.context);
      router.push(action.routeInfo);
      next(action);
    }
  },
);

final _navigateReplace = TypedMiddleware<AppState, NavigateReplaceAction>(
  (store, action, next) {
    if (action.context.mounted) {
      final router = AutoRouter.of(action.context);
      router.replace(action.routeInfo);
      next(action);
    }
  },
);

final _navigateBackContext = TypedMiddleware<AppState, NavigateBackContextAction>(
  (store, action, next) {
    if (!action.context.mounted) {
      return;
    }
    final router = AutoRouter.of(action.context);
    router.maybePop();
    next(action);
  },
);
