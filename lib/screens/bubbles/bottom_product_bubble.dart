import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/product_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class BottomProductWidget extends StatelessWidget {
  const BottomProductWidget({
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
            ? screenSize.height * 0.44
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.58
                : (currentBubble == 'product-animation' ||
                        currentBubble == 'food-animation')
                    ? screenSize.height * 0.49
                    : screenSize.height * 0.42,
        left: (currentBubble == 'technology-animation')
            ? screenSize.width * 0.04
            : (currentBubble == 'food-animation')
                ? screenSize.width * 0.02
                : screenSize.width * 0.06,
        child: CustomBubble(
          bubbleHeight: (currentBubble == 'technology-animation')
              ? screenSize.height * 0.12
              : (currentBubble == 'tec-animation' ||
                      currentBubble == 'food-animation' ||
                      currentBubble == 'product-animation')
                  ? screenSize.height * 0.1
                  : screenSize.height * 0.13,
          bubbleWidth: (currentBubble == 'technology-animation' ||
                  currentBubble == 'food-animation' ||
                  currentBubble == 'product-animation' ||
                  currentBubble == 'tec-animation')
              ? screenSize.width * 0.3
              : screenSize.width * 0.32,
          heroTag: 'bottom-product-animation',
          bubbleShape: ProductShape(),
          contentText: 'Product',
          contentStyle: whiteTxt18,
        ));
  }
}
