import 'package:get/get.dart';

import 'ar_uti.dart';
import 'en_uti.dart';

class Translation extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {"en": en, "ar": ar};
}
