import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Stack(
                children: [
                  // Image with rounded corners
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/pexels-yovanverma-2082103.jpg',
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  // Text and Icon overlay
                const  Positioned(
                    bottom: 20,
                    left: 16,
                    child:
                        Text(
                          'Paris',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ), 
                  ),
                  const  Positioned(
                   right: 20,
                    top: 5,
                    child:
                    Icon(Icons.favorite, color: Colors.white, size: 30,),
                  ),
                  const  Positioned(
                   bottom: 20,
                    right: 20,
                    child:
                    Text('From S1299',style: TextStyle(color: Colors.white,fontSize: 30,
                            fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}