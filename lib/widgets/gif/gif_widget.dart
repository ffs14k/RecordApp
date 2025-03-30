import 'package:flutter/material.dart';
import 'package:gif/gif.dart';
import 'package:record_app/design_system/build_context_ds_extensions.dart';

class GifWidget extends StatefulWidget {
  final String asset;
  final bool isAnimating;

  const GifWidget({
    required this.asset,
    required this.isAnimating,
    super.key,
  });

  @override
  State<GifWidget> createState() => _GifWidgetState();
}

class _GifWidgetState extends State<GifWidget> with TickerProviderStateMixin {
  late final GifController _controller = GifController(vsync: this);
  bool _isAnimatingLast = false;

  @override
  void didUpdateWidget(covariant GifWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isAnimating == _isAnimatingLast) {
      return;
    }
    _isAnimatingLast = widget.isAnimating;
    if (widget.isAnimating) {
      _controller.forward();
    } else {
      _controller.reset();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Gif(
      image: AssetImage(widget.asset),
      controller: _controller,
      fps: 30,
      autostart: Autostart.no,
      placeholder: (context) => Placeholder(
        strokeWidth: 0.0,
        color: context.colorScheme.onSecondaryContainer,
      ),
      onFetchCompleted: () => _controller.reset(),
    );
  }
}
