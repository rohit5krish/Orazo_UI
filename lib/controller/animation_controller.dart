import 'package:get/state_manager.dart';

class AnimateBubbleController extends GetxController {
  String animatedBubble = 'start';

  changeAnimatedBubble({required String bubble}) {
    animatedBubble = bubble;
    update();
  }
}
