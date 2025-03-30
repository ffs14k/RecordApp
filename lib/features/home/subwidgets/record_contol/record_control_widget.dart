import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/atoms/text_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/generated/flutter_gen/assets.gen.dart';
import 'package:record_app/widgets/gif/gif_widget.dart';
import 'package:record_app/features/home/subwidgets/record_contol/record_control_widget_view_model.dart';

import 'package:record_app/utils/widget_utils/on_devide.dart';

class RecordControlWidget extends StatelessWidget {
  final RecordControlWidgetViewModel model;
  const RecordControlWidget({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          _gifControl(context),
          _recordDurationBadge(context),
        ],
      ),
    );
  }

  Widget _gifControl(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(context.spacing(SizeType.l)),
        child: GestureDetector(
          onTap: () {
            model.onRecordBtnTap(context);
          },
          child: SizedBox(
            width: _edge(context),
            height: _edge(context),
            child: GifWidget(
              asset: Assets.images.micro.path,
              isAnimating: model.isRecording,
            ),
          ),
        ),
      ),
    );
  }

  Widget _recordDurationBadge(BuildContext context) {
    return Positioned(
      top: context.spacing(SizeType.l),
      right: context.spacing(SizeType.l),
      child: Text(
        model.recordDurationBage,
        style: context.textStyle(
          TextType.body3,
          context.colorScheme.onPrimary,
        ),
      ),
    );
  }

  double _edge(BuildContext context) {
    return onDevice(
      context,
      desktop: (context) => 160,
      tablet: (context) => 130,
      mobile: (context) => 110,
    );
  }
}
