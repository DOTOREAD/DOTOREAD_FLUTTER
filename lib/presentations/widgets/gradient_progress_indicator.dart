import 'package:dotoread_app/core/constants/theme.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class GradientProgressIndicator extends StatefulWidget {
  final double percent;

  const GradientProgressIndicator({super.key, required this.percent});

  @override
  _GradientProgressIndicatorState createState() =>
      _GradientProgressIndicatorState();
}

class _GradientProgressIndicatorState extends State<GradientProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0.0, end: widget.percent).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant GradientProgressIndicator oldWidget) {
    if (oldWidget.percent != widget.percent) {
      _controller.reset();
      _animation = Tween<double>(begin: 0.0, end: widget.percent).animate(
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
      );
      _controller.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          painter: _ProgressPainter(_animation.value),
          child: const SizedBox(width: 150, height: 120),
        );
      },
    );
  }
}

class _ProgressPainter extends CustomPainter {
  final double percent;

  _ProgressPainter(this.percent);

  @override
  void paint(Canvas canvas, Size size) {
    double startAngle = 240 * pi / 180;
    double sweepAngle = (percent * 240) * pi / 180;

    Paint trackPaint = Paint()
      ..color = Colors.grey.shade300
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint progressPaint = Paint()
      ..shader = const LinearGradient(
        colors: [AppTheme.orange3, AppTheme.orange1],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromCircle(
          center: size.center(Offset.zero), radius: size.width / 2))
      ..strokeWidth = 18
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2 - 10;

    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(-90 * pi / 180);
    canvas.translate(-center.dx, -center.dy);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        240 * pi / 180, false, trackPaint);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        sweepAngle, false, progressPaint);

    canvas.restore();

    TextSpan span = TextSpan(
      style: const TextStyle(
          color: AppTheme.orange1, fontSize: 40, fontWeight: FontWeight.bold),
      text: '${(percent * 100).toInt()}',
    );
    TextPainter tp = TextPainter(
      text: span,
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(
        canvas, Offset(center.dx - tp.width / 2, center.dy - tp.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
