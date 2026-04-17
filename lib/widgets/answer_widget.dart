import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    super.key,
    required this.txt,
    required this.onTap,
    required this.isSelected,
  });
  final String txt;
  final VoidCallback onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        
        margin: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.orange : Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SizedBox(
          width: 120,
          child: Center(
            child: Text(
              txt,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
