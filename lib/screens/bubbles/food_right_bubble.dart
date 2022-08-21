import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/irregular_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class FoodRightBubbleWidget extends StatelessWidget {
  const FoodRightBubbleWidget({
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
            ? screenSize.height * 0.63
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.6
                : (currentBubble == 'product-animation')
                    ? screenSize.height * 0.57
                    : screenSize.height * 0.58,
        left: (currentBubble == 'product-animation')
            ? screenSize.width * 0.68
            : screenSize.width * 0.73,
        child: CustomBubble(
          bubbleHeight: screenSize.height * 0.1,
          bubbleWidth: screenSize.width * 0.25,
          heroTag: 'food-circle-right-bubble',
          bubbleShape: IrregularShape(),
        ));
  }
}
