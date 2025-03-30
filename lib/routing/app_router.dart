import 'package:auto_route/auto_route.dart';
import 'package:record_app/routing/app_router.gr.dart';
import 'package:record_app/routing/bottom_sheet_route.dart';
import 'package:record_app/routing/dialog_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AdaptiveRoute(
          page: TabBarRoute.page,
          initial: true,
          children: [
            AdaptiveRoute(
              page: HomeTabRootRoute.page,
              children: [
                AdaptiveRoute(page: HomeRoute.page),
                DialogRoute(page: PreRecordingDialogRoute.page),
                BottomSheetRoute(page: AppLanguagePickerRoute.page),
              ],
            ),
            AdaptiveRoute(
              page: AboutUsTabRootRoute.page,
              children: [
                AdaptiveRoute(page: AboutUsRoute.page),
              ],
            ),
          ],
        ),
      ];
}
