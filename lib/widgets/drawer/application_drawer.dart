import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/entities/ui/tab_id.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:record_app/widgets/drawer/application_drawer_view_model.dart';
import 'package:record_app/utils/closures.dart';
import 'package:record_app/utils/widget_utils/on_devide.dart';
import 'package:redux/redux.dart';

class ApplicationDrawer extends StatelessWidget {
  const ApplicationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (Store<AppState> store) => ApplicationDrawerViewModel.converter(store),
      builder: (context, model) {
        return SizedBox(
          width: _drawerWidth(context),
          height: double.infinity,
          child: Drawer(
            backgroundColor: context.colorScheme.secondary,
            surfaceTintColor: context.colorScheme.onSecondary,
            shadowColor: context.colorScheme.shadow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.spacing(SizeType.xxl),
                ),
                _item(
                  context,
                  'Home',
                  () => model.onTabItemTap(context, TabId.home),
                ),
                SizedBox(
                  height: context.spacing(SizeType.l),
                ),
                _item(
                  context,
                  'About us',
                  () => model.onTabItemTap(context, TabId.aboutUs),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _item(
    BuildContext context,
    String text,
    VoidFun onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: context.colorScheme.onSecondary,
              fontWeight: FontWeight.bold,
              fontSize: _itemFontSize(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  double _drawerWidth(BuildContext context) {
    return onDevice(
      context,
      desktop: (_) => 300,
      tablet: (_) => 250,
      mobile: (_) => 200,
    );
  }

  double _itemFontSize(BuildContext context) {
    return onDevice(
      context,
      desktop: (_) => 22,
      tablet: (_) => 20,
      mobile: (_) => 18,
    );
  }
}
