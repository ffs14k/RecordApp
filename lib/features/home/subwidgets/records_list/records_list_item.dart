import 'package:flutter/material.dart';
import 'package:record_app/design_system/atoms/size_type.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';
import 'package:record_app/features/home/subwidgets/records_list/record_list_item_model.dart';
import 'package:record_app/generated/flutter_gen/assets.gen.dart';

class RecordsListItem extends StatelessWidget {
  static const double timeLineHeight = 20;

  final RecordsListItemModel model;

  const RecordsListItem({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: context.spacing(SizeType.m),
              ),
              _playButton(),
              SizedBox(
                width: context.spacing(SizeType.xl),
              ),
              Expanded(
                child: _TimelineWidget(
                  recordDuration: model.currentPosition,
                ),
              ),
              SizedBox(
                width: context.spacing(SizeType.xl),
              ),
              _deleteButton(),
              SizedBox(
                width: context.spacing(SizeType.m),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _playButton() {
    return GestureDetector(
      child: SizedBox(
        height: 31,
        width: 31,
        child: Assets.images.playIcon.image(),
      ),
      onTap: () {
        model.onPlayTap();
      },
    );
  }

  Widget _deleteButton() {
    return GestureDetector(
      child: SizedBox(
        height: 31,
        width: 31,
        child: Assets.images.removeRecordIcon.image(),
      ),
      onTap: () {
        model.onDeleteTap();
      },
    );
  }
}

class _TimelineWidget extends StatefulWidget {
  final Duration recordDuration;

  const _TimelineWidget({
    required this.recordDuration,
  });

  @override
  _TimelineWidgetState createState() => _TimelineWidgetState();
}

class _TimelineWidgetState extends State<_TimelineWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.recordDuration,
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(
        () {
          setState(() {});
        },
      );
  }

  @override
  void didUpdateWidget(covariant _TimelineWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomPaint(
          painter: _LineAndDotPainter(context, _animation.value),
          size: Size(constraints.maxWidth, RecordsListItem.timeLineHeight),
        );
      },
    );
  }
}

class _LineAndDotPainter extends CustomPainter {
  final BuildContext context;
  final double animationValue;
  _LineAndDotPainter(this.context, this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    final double timelineDrawerCenterY = size.height == 0 ? 0 : size.height / 2;
    final paint = Paint()
      ..color = context.colorScheme.onPrimary
      ..strokeWidth = 5;
    canvas.drawLine(
      Offset(0, timelineDrawerCenterY),
      Offset(size.width, timelineDrawerCenterY),
      paint,
    );

    final dotPaint = Paint()
      ..color = context.colorScheme.primary
      ..strokeWidth = 0;
    canvas.drawCircle(
      Offset(
        animationValue * size.width,
        timelineDrawerCenterY,
      ),
      timelineDrawerCenterY,
      dotPaint,
    );
  }

  @override
  bool shouldRepaint(covariant _LineAndDotPainter oldDelegate) {
    return animationValue != oldDelegate.animationValue;
  }
}
