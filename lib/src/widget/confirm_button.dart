import 'package:muntorial/muntorial_v2.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.isActive,
  });

  final VoidCallback? onPressed;
  final String text;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Button(
      title: text,
      onPressed: onPressed,
      sizeType: SizeType.large,
      colorType: ColorType.primary,
      shapeType: ShapeType.round,
      disable: !isActive,
    );
  }
}
