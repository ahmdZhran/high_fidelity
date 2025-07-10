import 'package:flutter/material.dart';

class AddressSectionWidget extends StatelessWidget {
  const AddressSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery Address',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade900,
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Jl. Kpg Sutoyo',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey.shade900,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade500,
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              _buildButton(Icons.edit, 'Edit Address'),
              SizedBox(width: 12),
              _buildButton(Icons.note_add, 'Add Note'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(IconData icon, String text) {
    return Expanded(
      child: OutlinedButton.icon(
        onPressed: () {},
        icon: Icon(icon, size: 16, color: Colors.grey.shade700),
        label: Text(text),
      ),
    );
  }
}