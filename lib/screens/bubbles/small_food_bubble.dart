import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class SmallFoodBubbleWidget extends StatelessWidget {
  const SmallFoodBubbleWidget({
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
            ? screenSize.height * 0.55
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.54
                : screenSize.height * 0.5,
        left: screenSize.width * 0.7,
        child: CustomBubble(
          bubbleHeight: screenSize.height * 0.05,
          bubbleWidth: screenSize.width * 0.15,
          heroTag: 'food-small-bubble',
          bubbleShape: CustomCommonShape(),
        ));
  }
}
