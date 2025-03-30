import 'package:auto_route/auto_route.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:record_app/features/application_bars/application_bar/application_bar.dart';
import 'package:record_app/widgets/drawer/application_drawer.dart';
import 'package:redux/redux.dart';

@RoutePage()
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (Store<AppState> store) => store,
      builder: (context, store) {
        return Scaffold(
          drawer: const ApplicationDrawer(),
          appBar: const ApplicationBar(),
          body: Container(
            color: context.colorScheme.surface,
            child: Padding(
              padding: EdgeInsets.only(
                left: context.spacing(SizeType.m),
                right: context.spacing(SizeType.m),
              ),
              child: Center(
                child: Text(
                  'About us page',
                  style: context.textStyle(
                    TextType.body2,
                    context.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
