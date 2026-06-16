import 'package:flutter/material.dart';


class HomeTab extends StatelessWidget {
  //Stateless Widget -> Parent class
  const HomeTab({super.key});

  Widget dashboardCard(
      //function -> type- widget
      String title,
      IconData icon,
      Color color) {
    //Card
    return Card(
      elevation: 5,
      child: Container(
        height: 120,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                
                    Expanded(
                      child: dashboardCard(
                          "Orders", Icons.shopping_cart, Colors.green),
                    )
                        
              ],
            )
          ],
        ),
      ),
    );
  }
}
