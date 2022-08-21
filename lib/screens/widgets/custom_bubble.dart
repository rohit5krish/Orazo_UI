import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/controller/animation_controller.dart';

class CustomBubble extends StatelessWidget {
  final double bubbleWidth;
  final double bubbleHeight;
  final String heroTag;
  final CustomPainter bubbleShape;
  final TextStyle? contentStyle;
  final String? contentText;
  CustomBubble({
    Key? key,
    required this.bubbleHeight,
    required this.bubbleWidth,
    required this.heroTag,
    required this.bubbleShape,
    this.contentStyle,
    this.contentText,
  }) : super(key: key);

  final AnimateBubbleController animateBubbleController =
      Get.put(AnimateBubbleController());

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animDuration,
      child: InkWell(
        onTap: () {
          animateBubbleController.changeAnimatedBubble(bubble: heroTag);
        },
        child: Hero(
          tag: heroTag,
          child: Stack(
            children: [
              Transform.rotate(
                angle: heroTag == 'product-animation' ? pi * 4.5 : 0,
                child: AnimatedContainer(
                  duration: animDuration,
                  width: bubbleWidth,
                  height: bubbleHeight,
                  child: CustomPaint(
                    painter: bubbleShape,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: animDuration,
                width: bubbleWidth,
                height: bubbleHeight,
                child: Align(
                  alignment: Alignment.center,
                  child: contentText != null
                      ? AnimatedDefaultTextStyle(
                          duration: animDuration,
                          style: contentStyle!,
                          child: Text(contentText!),
                        )
                      : Container(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
