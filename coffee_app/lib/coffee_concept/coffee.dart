import 'dart:math';
import 'package:meta/meta.dart';

double _doubleInRange(Random source, num start, num end) =>
    source.nextDouble() * (end - start);

final random = Random();
final coffees = List.generate(
    _names.length,
    (index) => Coffee(
        image: 'assets/coffee_concept/${index + 1}.png',
        name: _names[index],
        price: _doubleInRange(random, 3, 7)));

class Coffee {
  Coffee({@required this.name, @required this.image, @required this.price});
  final String? name;
  final String? image;
  final double? price;
}

final _names = [
  'Caramel Cold Drink',
  'Iced Coffee Mocha',
  'Caramelized Pecan Latte',
  'Toffee Nut Latte',
  'Capuchino',
  'Toffee Nut Iced Latte',
  'Americano',
  'Caramel Macchiato',
  'Vietnamese-Style Iced Coffee',
  'Black Tea Latte',
  'Classic Irish',
  'Toffe Nut'
];
