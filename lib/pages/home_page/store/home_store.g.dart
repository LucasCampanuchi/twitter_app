// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStoreBase, Store {
  late final _$screenAtom =
      Atom(name: '_HomeStoreBase.screen', context: context);

  @override
  Screen get screen {
    _$screenAtom.reportRead();
    return super.screen;
  }

  @override
  set screen(Screen value) {
    _$screenAtom.reportWrite(value, super.screen, () {
      super.screen = value;
    });
  }

  late final _$pageControllerAtom =
      Atom(name: '_HomeStoreBase.pageController', context: context);

  @override
  PageController get pageController {
    _$pageControllerAtom.reportRead();
    return super.pageController;
  }

  @override
  set pageController(PageController value) {
    _$pageControllerAtom.reportWrite(value, super.pageController, () {
      super.pageController = value;
    });
  }

  late final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase', context: context);

  @override
  void setScreen(Screen s) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.setScreen');
    try {
      return super.setScreen(s);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
screen: ${screen},
pageController: ${pageController}
    ''';
  }
}
