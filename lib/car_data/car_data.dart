
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:control_point5/car/car.dart';

part 'car_data.freezed.dart';
part 'car_data.g.dart';

@freezed
class CarData with _$CarData {
  
  factory CarData({
    required List<Car> cars,
  }) = _CarData;

  factory CarData.fromJson(Map<String, dynamic> json) =>
      _$CarDataFromJson(json);
}
