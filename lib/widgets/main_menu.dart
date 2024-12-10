import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildMenuItem(Icons.phone_android, "Pulsa"),
          _buildMenuItem(Icons.electrical_services, "PLN"),
          _buildMenuItem(Icons.local_movies, "Movies"),
          _buildMenuItem(Icons.fastfood, "Food"),
          _buildMenuItem(Icons.directions_car, "Parking"),
          _buildMenuItem(Icons.payments, "Bills"),
          _buildMenuItem(Icons.shopping_bag, "Shopping"),
          _buildMenuItem(Icons.more_horiz, "More"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Icon(icon, size: 30, color: Colors.purple),
        ),
        SizedBox(height: 5),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}