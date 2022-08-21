import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class TopSmallBubbleWidget extends StatelessWidget {
  const TopSmallBubbleWidget({
    Key? key,
    required this.currentBubble,
    required this.screenSize,
  }) : super(key: key);

  final String currentBubble;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
        duration: animDuration,
        top: (currentBubble == 'tec-animation')
            ? screenSize.height * 0.34
            : (currentBubble == 'product-animation')
                ? screenSize.height * 0.28
                : screenSize.height * 0.15,
        left: (currentBubble == 'tec-animation')
            ? screenSize.width * 0.78
            : (currentBubble == 'product-animation')
                ? screenSize.width * 0.78
                : screenSize.width * 0.7,
        child: CustomBubble(
          bubbleHeight: screenSize.height * 0.05,
          bubbleWidth: screenSize.width * 0.13,
          heroTag: 'top-small-bubble',
          bubbleShape: CustomCommonShape(),
        ));
  }
}
