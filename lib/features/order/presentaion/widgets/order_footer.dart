import 'package:flutter/material.dart';

class OrderFooter extends StatelessWidget {
  final String deliveryMethod;
  final double total;
  final VoidCallback onOrderPressed;

  const OrderFooter({
    super.key,
    required this.deliveryMethod,
    required this.total,
    required this.onOrderPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 10,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPaymentMethod(total),
          SizedBox(height: 16),
          _buildOrderButton(deliveryMethod, onOrderPressed),
        ],
      ),
    );
  }

  Widget _buildPaymentMethod(double total) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(Icons.account_balance_wallet, color: Colors.orange.shade600),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Cash/Wallet', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                Text(
                  '\$ ${total.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange.shade600,
                  ),
                ),
              ],
            ),
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.grey.shade400),
        ],
      ),
    );
  }

  Widget _buildOrderButton(String deliveryMethod, VoidCallback onPressed) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 0,
        ),
        child: Text(
          deliveryMethod == 'deliver' ? 'Order' : 'Order for Pick Up',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}