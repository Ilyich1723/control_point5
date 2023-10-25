import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

class Converter implements JsonConverter<double, dynamic> {
  const Converter();

  @override
  String toJson(double value) {
    return value.toString();
  }

  @override
  double fromJson(dynamic value) {
    return double.parse(value.substring(1));
  }
}

@freezed
class Car with _$Car {
  factory Car({
    @JsonKey(name: 'car') required String brand,
    @JsonKey(name: 'car_model') required String model,
    @JsonKey(name: 'car_color') required String color,
    @Converter() required double price,
    required bool availability,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
