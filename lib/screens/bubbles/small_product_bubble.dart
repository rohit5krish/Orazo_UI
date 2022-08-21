import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class SmallProductBubbleWidget extends StatelessWidget {
  const SmallProductBubbleWidget({
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
        top: (currentBubble == 'technology-animation')
            ? screenSize.height * 0.51
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.51
                : (currentBubble == 'product-animation')
                    ? screenSize.height * 0.4
                    : screenSize.height * 0.38,
        left: (currentBubble == 'tec-animation')
            ? screenSize.width * 0.5
            : (currentBubble == 'product-animation' ||
                    currentBubble == 'food-animation')
                ? screenSize.width * 0.4
                : screenSize.width * 0.35,
        child: CustomBubble(
          bubbleHeight: (currentBubble == 'tec-animation' ||
                  currentBubble == 'food-animation' ||
                  currentBubble == 'product-animation')
              ? screenSize.height * 0.06
              : screenSize.height * 0.05,
          bubbleWidth: (currentBubble == 'tec-animation' ||
                  currentBubble == 'food-animation' ||
                  currentBubble == 'product-animation')
              ? screenSize.width * 0.12
              : screenSize.width * 0.1,
          heroTag: 'product-bubble',
          bubbleShape: CustomCommonShape(),
        ));
  }
}
