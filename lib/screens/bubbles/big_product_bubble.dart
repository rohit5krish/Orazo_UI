import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/irregular_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class BigProductBubbleWidget extends StatelessWidget {
  const BigProductBubbleWidget({
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
            ? screenSize.height * 0.58
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.68
                : (currentBubble == 'product-animation' ||
                        currentBubble == 'food-animation')
                    ? screenSize.height * 0.6
                    : screenSize.height * 0.55,
        left: (currentBubble == 'tec-animation')
            ? screenSize.width * 0.2
            : (currentBubble == 'product-animation')
                ? screenSize.width * 0.15
                : screenSize.width * 0.03,
        child: CustomBubble(
          bubbleHeight: screenSize.height * 0.12,
          bubbleWidth: (currentBubble == 'tec-animation' ||
                  currentBubble == 'food-animation' ||
                  currentBubble == 'product-animation')
              ? screenSize.width * 0.3
              : screenSize.width * 0.35,
          heroTag: 'product-big-bubble',
          bubbleShape: IrregularShape(),
        ));
  }
}
