import 'package:flutter/material.dart';
import 'MyApp.dart';



class HomeScreen extends StatelessWidget{
  final City city;
  const HomeScreen({super.key, required this.city})
}

@override
widget build(BuildContext context){
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(16.0)),
            SizedBox(
              height: 100,
              child ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: city.images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image(image: AssetImage(images))
                }
              )
            )
          ],
        ),
      ),
    ),
  ),
}
