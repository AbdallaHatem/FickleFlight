import 'package:flutter/material.dart';

import 'Detailspage.dart';

class PlacesWidget extends StatelessWidget {
  final String imageAsset;
  final String placeName;
  final String countryName;
  final String description;
  final double price;

  const PlacesWidget({
    Key? key,
    required this.imageAsset,
    required this.placeName,
    required this.countryName,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              imageAsset: imageAsset,
              placeName: placeName,
              countryName: countryName,
              description: description,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageAsset,
                width: 170,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              placeName,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              countryName,
              style: const TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
