import 'package:flutter/material.dart';

const _initialPage = 8.0;

class CoffeeBloc {
  final currentPage = ValueNotifier<double>(_initialPage);
  final textPage = ValueNotifier<double>(_initialPage);

  void init() {
    currentPage.value = _initialPage;
    textPage.value = _initialPage;
    pageCoffeeController.addListener(_coffeeScrollListener);
    pageTextController.addListener(_textScrollListener);
  }

  final pageCoffeeController =
      PageController(viewportFraction: 0.35, initialPage: _initialPage.toInt());

  final pageTextController = PageController(initialPage: _initialPage.toInt());

  void _textScrollListener() {
    textPage.value = pageTextController.page!;
  }

  void _coffeeScrollListener() {
    currentPage.value = pageCoffeeController.page!;
  }

  void dispose() {
    pageCoffeeController.removeListener(_coffeeScrollListener);
    pageTextController.removeListener(_textScrollListener);
    pageCoffeeController.dispose();
    pageTextController.dispose();
  }
}

class CoffeeProvider extends InheritedWidget {
  final CoffeeBloc? bloc;

  CoffeeProvider({@required this.bloc, Widget? child}) : super(child: child!);

  static CoffeeProvider? of(BuildContext context) =>
      context.findAncestorWidgetOfExactType<CoffeeProvider>();
  @override
  bool updateShouldNotify(covariant CoffeeProvider oldWidget) => false;
}
