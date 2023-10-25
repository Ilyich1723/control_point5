import 'package:flutter/material.dart';
import 'package:control_point5/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final index;

  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text("${car.model};    Color: ${car.color}",
        style:TextStyle(color: Colors.white)) ,
        subtitle: Text("price: ${car.price } Dollars",
         style:TextStyle(color: Colors.white)) ,
        
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            if (car.availability)
              const Icon(
                Icons.check_circle_outline_sharp,
                size: 30,
                color: Colors.white,
              )
            else
              const Icon(Icons.close_rounded,
                  size: 30, 
                  color: Colors.white),
          ],
        ),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           Text(index.toString(),
           style: TextStyle(color: Colors.white),
           )
            
          ],
        ),
      ),
    );
  }
}
