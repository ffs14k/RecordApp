import 'package:flutter/material.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';

class LoaderWidget extends StatefulWidget {
  final bool isVisible;
  const LoaderWidget(this.isVisible, {super.key});

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  @override
  Widget build(BuildContext context) {
    if (!widget.isVisible) {
      return const SizedBox.shrink();
    }
    return AbsorbPointer(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: context.colorScheme.shadow,
        child: const Center(
          child: SizedBox(
            width: 50,
            height: 50,
          ),
        ),
      ),
    );
  }
}
