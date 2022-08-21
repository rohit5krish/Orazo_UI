import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/product_shape.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class ProductsBubbleWidget extends StatelessWidget {
  const ProductsBubbleWidget({
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
            ? screenSize.height * 0.12
            : (currentBubble == 'tec-animation')
                ? screenSize.height * 0.28
                : (currentBubble == 'product-animation')
                    ? screenSize.height * 0.15
                    : screenSize.height * 0.13,
        left: (currentBubble == 'technology-animation')
            ? screenSize.width * 0.13
            : (currentBubble == 'tec-animation')
                ? screenSize.width * 0.43
                : (currentBubble == 'product-animation')
                    ? screenSize.width * 0.18
                    : screenSize.width * 0.22,
        child: CustomBubble(
          bubbleHeight: (currentBubble == 'tec-animation')
              ? screenSize.height * 0.12
              : (currentBubble == 'product-animation')
                  ? screenSize.height * 0.22
                  : screenSize.height * 0.15,
          bubbleWidth: (currentBubble == 'tec-animation')
              ? screenSize.width * 0.35
              : (currentBubble == 'product-animation')
                  ? screenSize.width * 0.6
                  : screenSize.width * 0.45,
          heroTag: 'product-animation',
          bubbleShape: ProductShape(),
          contentText: 'Products',
          contentStyle:
              (currentBubble == 'product-animation') ? whiteTxt25 : whiteTxt18,
        ));
  }
}
