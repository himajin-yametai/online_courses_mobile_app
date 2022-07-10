import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final String secondTitle;

  const CategoryTitle({
    Key? key,
    required this.title,
    required this.secondTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18,
            ),
          ),
          Text(
            secondTitle,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
