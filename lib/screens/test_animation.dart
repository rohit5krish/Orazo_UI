import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';
import 'package:orazo_ui/screens/shapes/circle_shape.dart';
import 'package:orazo_ui/screens/shapes/custom_shape.dart';
import 'package:orazo_ui/screens/shapes/irregular_shape.dart';
import 'package:orazo_ui/screens/shapes/product_shape.dart';
import 'package:orazo_ui/screens/widgets/continue_button.dart';
import 'package:orazo_ui/screens/widgets/custom_bubble.dart';

class ProductAnimation extends StatelessWidget {
  const ProductAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                      top: screenSize.height * 0.23,
                      left: screenSize.width * 0.22,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.15,
                        bubbleWidth: screenSize.width * 0.4,
                        heroTag: 'product-animation',
                        bubbleShape: ProductShape(),
                        contentText: 'Products',
                        contentStyle: whiteTxt22,
                      )),
                  Positioned(
                    top: screenSize.height * 0.34,
                    left: screenSize.width * 0.58,
                    child: CustomBubble(
                      bubbleHeight: screenSize.height * 0.12,
                      bubbleWidth: screenSize.width * 0.34,
                      heroTag: 'technology-animation',
                      bubbleShape: CircleShape(),
                      contentText: 'Technology',
                      contentStyle: whiteTxt18,
                    ),
                  ),
                  Positioned(
                      top: screenSize.height * 0.25,
                      left: screenSize.width * 0.78,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.08,
                        bubbleWidth: screenSize.width * 0.18,
                        heroTag: 'top-small-bubble',
                        bubbleShape: CustomCommonShape(),
                      )),
                  Positioned(
                      top: screenSize.height * 0.35,
                      left: screenSize.width * 0.02,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.13,
                        bubbleWidth: screenSize.width * 0.3,
                        heroTag: 'tec-animation',
                        bubbleShape: CustomCommonShape(),
                        contentText: 'Tec',
                        contentStyle: whiteTxt22,
                      )),
                  Positioned(
                      top: screenSize.height * 0.49,
                      left: screenSize.width * 0.02,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.1,
                        bubbleWidth: screenSize.width * 0.3,
                        heroTag: 'bottom-product-animation',
                        bubbleShape: ProductShape(),
                        contentText: 'Product',
                        contentStyle: whiteTxt18,
                      )),
                  Positioned(
                      top: screenSize.height * 0.38,
                      left: screenSize.width * 0.4,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.06,
                        bubbleWidth: screenSize.width * 0.12,
                        heroTag: 'product-bubble',
                        bubbleShape: CustomCommonShape(),
                      )),
                  Positioned(
                      top: screenSize.height * 0.6,
                      left: screenSize.width * 0.02,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.13,
                        bubbleWidth: screenSize.width * 0.3,
                        heroTag: 'product-big-bubble',
                        bubbleShape: IrregularShape(),
                      )),
                  Positioned(
                      top: screenSize.height * 0.46,
                      left: screenSize.width * 0.28,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.2,
                        bubbleWidth: screenSize.width * 0.52,
                        heroTag: 'food-animation',
                        bubbleShape: CustomCommonShape(),
                        contentText: 'Food',
                        contentStyle: whiteTxt22,
                      )),
                  Positioned(
                      top: screenSize.height * 0.53,
                      left: screenSize.width * 0.8,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.05,
                        bubbleWidth: screenSize.width * 0.15,
                        heroTag: 'food-small-bubble',
                        bubbleShape: CustomCommonShape(),
                      )),
                  Positioned(
                      top: screenSize.height * 0.66,
                      left: screenSize.width * 0.38,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.18,
                        bubbleWidth: screenSize.width * 0.4,
                        heroTag: 'food-circle-bubble',
                        bubbleShape: CircleShape(),
                      )),
                  Positioned(
                      top: screenSize.height * 0.64,
                      left: screenSize.width * 0.73,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.1,
                        bubbleWidth: screenSize.width * 0.25,
                        heroTag: 'food-circle-right-bubble',
                        bubbleShape: IrregularShape(),
                      )),
                  Positioned(
                      top: screenSize.height * 0.74,
                      left: screenSize.width * 0.07,
                      child: CustomBubble(
                        bubbleHeight: screenSize.height * 0.05,
                        bubbleWidth: screenSize.width * 0.13,
                        heroTag: 'bottom-small-bubble',
                        bubbleShape: CustomCommonShape(),
                      )),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Skip',
                    style: blackTxt18,
                  )),
            ),
            ContinueButtonWidget(screenSize: screenSize),
            SizedBox(
              height: screenSize.height * 0.03,
            )
          ],
        ),
      ),
    );
  }
}
