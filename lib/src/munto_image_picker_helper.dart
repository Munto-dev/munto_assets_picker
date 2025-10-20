import 'package:muntorial/muntorial_v2.dart';

import '../munto_assets_picker.dart';
import 'delegates/asset_picker_text_delegate_korean.dart' as korean;

class MuntoImagePickerHelper {
  MuntoImagePickerHelper._();

  static Future<List<AssetEntity>?> pickImages(
    BuildContext context, {
    Key? key,
    required int maxAssets,
  }) {
    return AssetPicker.pickAssets(
      context,
      pickerConfig: AssetPickerConfig(
        pickerTheme: MuntorialTheme.theme,
        maxAssets: maxAssets,
        requestType: RequestType.image,
        textDelegate: const korean.KoreanAssetPickerTextDelegate(),
      ),
    );
  }
}
