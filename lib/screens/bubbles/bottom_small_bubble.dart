import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class BottomSmallBubbleWidget extends StatelessWidget {
  const BottomSmallBubbleWidget({
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
        top: (currentBubble == 'product-animation')
            ? screenSize.height * 0.74
            : screenSize.height * 0.76,
        left: (currentBubble == 'tec-animation')
            ? screenSize.width * 0.73
            : (currentBubble == 'product-animation')
                ? screenSize.width * 0.07
                : screenSize.width * 0.1,
        child: CustomBubble(
          bubbleHeight: screenSize.height * 0.05,
          bubbleWidth: screenSize.width * 0.13,
          heroTag: 'bottom-small-bubble',
          bubbleShape: CustomCommonShape(),
        ));
  }
}
