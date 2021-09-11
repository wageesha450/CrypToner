import 'package:freshproject/signal/utils/enums.dart';
import 'package:flutter/foundation.dart';

abstract class BaseVM extends ChangeNotifier {
  ViewState state = ViewState.Bussy;

  set setState(ViewState value) {
    state = value;
    notifyListeners();
  }
}
