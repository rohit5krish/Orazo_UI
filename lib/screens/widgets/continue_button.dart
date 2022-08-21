import 'package:flutter/material.dart';
import 'package:orazo_ui/constants/constants.dart';

class ContinueButtonWidget extends StatelessWidget {
  const ContinueButtonWidget({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Continue',
            style: whiteTxt18,
          ),
          style: ElevatedButton.styleFrom(
              elevation: 0,
              fixedSize: Size(screenSize.width - 50, 60),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)))),
    );
  }
}
