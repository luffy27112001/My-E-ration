import 'package:loginapp/models/Items.dart';
import 'package:loginapp/models/Types.dart';
import 'package:loginapp/models/food.dart';

// ignore: non_constant_identifier_names
final Count = Items(count: [cereals, essentials, pulses, other]);

final cart = [];
//Food
final cereals =
    Food(food: 'Cereals', imageurl: 'assets/images/ricebl1.jpg', menu: _cerealsMenu);
final essentials =
    Food(food: 'Essentials', imageurl: 'assets/images/sugar.jpg', menu: _essentialsMenu);
final pulses =
    Food(food: 'Pulses', imageurl: 'assets/images/urad.jpeg', menu: _pulses);
final other =
Food(food: 'Kerosene', imageurl: 'assets/images/kerosene.jpg', menu: _otherMenu);

final _cerealsMenu = [
  Types(
    name: 'Rice',
    image: 'assets/images/ricebl1.jpg',
    star: "4.2",
    price: 2,
    cal: "328 Kcal",
    number: 1,
  ),
  Types(
    name: 'Wheat',
    image: 'assets/images/wheat.jpg',
    star: "4.6",
    price: 5,
    cal: "452 Kcal",
    number: 1,
  ),
];
final _essentialsMenu = [
  Types(
    name: 'Sugar',
    image: 'assets/images/sugar.jpg',
    star: "4.2",
    price: 12,
    cal: "234 Kcal",
    number: 1,
  ),
  Types(
    name: 'Salt',
    image: 'assets/images/salt.jpg',
    star: "4.1",
    price: 10,
    cal: "124 Kcal",
    number: 1,
  ),
];

final _pulses = [
  Types(
    name: 'Urad',
    image: 'assets/images/urad.jpeg',
    star: "4.0",
    price: 13,
    cal: "789 Kcal",
    number: 1,
  ),
  Types(
    name: 'Sample2',
    image: 'assets/images/empty.jpg',
    star: "4.2",
    price: 14,
    cal: "679 Kcal",
    number: 1,
  ),
];

final _otherMenu = [
  Types(
    name: 'Kerosene',
    image: 'assets/images/kerosene.jpg',
    star: "3.9",
    price: 20,
    cal: "197 Kcal",
    number: 1,
  ),
];
