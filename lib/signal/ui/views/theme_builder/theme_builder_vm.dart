import 'package:freshproject/signal/services/theme_service.dart';
import 'package:freshproject/signal/ui/views/base_vm.dart';
import 'package:freshproject/signal/utils/enums.dart';

class ThemeBuilderVM extends BaseVM {
  final _themeService = ThemeService();
  final bool listenable = false;
  late ThemeModeCrypto themeMode;

  ThemeBuilderVM() {
    initTheme();
  }

  void initTheme() {
    themeMode = _themeService.themeMode;

    Stream stream = _themeService.themeController.stream;
    stream.listen((value) {
      _swichTheme(value);
    });
  }

  void _swichTheme(ThemeModeCrypto value) {
    themeMode = value;
    notifyListeners();
  }
}
