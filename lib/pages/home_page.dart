import 'package:flutter/material.dart';
import '../widgets/action_button.dart';
import '../widgets/main_menu.dart';
import '../widgets/promo_carousel.dart';
import '../widgets/transaction_item.dart';
import 'transaction_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "OVO",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Row(
              children: [
                Icon(Icons.notifications_none, color: Colors.white),
                SizedBox(width: 15),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: Icon(Icons.person, color: Colors.purple),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Saldo dan Tombol Top Up
            _buildBalanceSection(),
            SizedBox(height: 20),
            // Grid Menu Utama
            MainMenu(),
            SizedBox(height: 20),
            // Banner Promo Carousel
            PromoCarousel(),
            SizedBox(height: 20),
            // Riwayat Transaksi
            _buildTransactionHistory(context),
          ],
        ),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Rp 150.000",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              ActionButton(icon: Icons.add, label: "Top Up"),
              SizedBox(width: 10),
              ActionButton(icon: Icons.send, label: "Transfer"),
              SizedBox(width: 10),
              ActionButton(icon: Icons.history, label: "History"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTransactionHistory(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Transactions",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          SizedBox(height: 10),
          ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return TransactionItem(
                index: index,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TransactionPage(index: index),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}