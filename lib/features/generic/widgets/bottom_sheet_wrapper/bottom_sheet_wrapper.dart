import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/design_system/color_sheme_ds_extensions.dart';
import 'package:record_app/redux/app/app_store.dart';
import 'package:record_app/redux/navigation/navigation_action.dart';

class BottomSheetWrapper extends StatelessWidget {
  final Widget child;

  const BottomSheetWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (AppStore store) => store,
      builder: (context, store) {
        return ColoredBox(
          color: context.colorScheme.shadow2,
          child: Column(
            children: [
              SizedBox(
                height: 90,
                child: Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      onPressed: () => store.dispatch(
                        NavigateBackContextAction(context),
                      ),
                      icon: SizedBox(
                        width: 40,
                        height: 40,
                        child: FittedBox(
                          child: Icon(
                            Icons.close,
                            color: context.colorScheme.secondary,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                  ],
                ),
              ),
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                  ),
                  child: child,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
