import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  final String deliveryMethod;
  final int quantity;
  final double subtotal;
  final double originalDeliveryFee;
  final double discountedDeliveryFee;
  final double total;

  const OrderSummary({
    super.key,
    required this.deliveryMethod,
    required this.quantity,
    required this.subtotal,
    required this.originalDeliveryFee,
    required this.discountedDeliveryFee,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey.shade100, width: 1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Payment Summary',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade900,
            ),
          ),
          SizedBox(height: 16),
          _buildSummaryRow('Price', '\$ ${subtotal.toStringAsFixed(2)}'),
          if (deliveryMethod == 'deliver') ...[
            SizedBox(height: 12),
            _buildDeliveryFeeRow(),
          ],
          SizedBox(height: 12),
          Divider(color: Colors.grey.shade200),
          SizedBox(height: 12),
          _buildSummaryRow(
            'Total Payment',
            '\$ ${total.toStringAsFixed(2)}',
            isTotal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isTotal = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isTotal
              ? TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade900)
              : null,
        ),
        Text(
          value,
          style: isTotal
              ? TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade900)
              : null,
        ),
      ],
    );
  }

  Widget _buildDeliveryFeeRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Delivery Fee'),
        Row(
          children: [
            Text(
              '\$ ${originalDeliveryFee.toStringAsFixed(1)}',
              style: TextStyle(
                decoration: TextDecoration.lineThrough,
                color: Colors.grey.shade500,
              ),
            ),
            SizedBox(width: 8),
            Text('\$ ${discountedDeliveryFee.toStringAsFixed(1)}'),
          ],
        ),
      ],
    );
  }
}