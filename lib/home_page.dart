import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:control_point5/widgets/car_widget.dart';
import 'package:control_point5/car/car.dart';
import 'package:control_point5/car_data/car_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dio client = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  List<Car> carList = [];

  void getNetworkData() async {
    Response response = await client.get(url);
    carList = CarData.fromJson(response.data).cars;
    setState(() {});
  }

  @override
  void initState() {
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                primary: false,
                shrinkWrap: true,
                itemCount: carList.length,
                itemBuilder: (context, index) {
                  return CarWidget(car: carList[index], index: index + 1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
