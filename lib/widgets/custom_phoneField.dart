import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomPhone extends StatelessWidget {
  final String phone;
  const CustomPhone({super.key, required this.phone});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        hintText: phone,
        hintStyle: const TextStyle(color: Colors.black26),
        filled: true,
        fillColor: const Color(0xFFE0F4F5),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("+ 00", style: TextStyle(fontSize: 16)),
              const SizedBox(width: 6),
              const Icon(Icons.arrow_drop_down, color: Colors.black54),
              const SizedBox(width: 12),
              Container(width: 1, height: 24, color: Colors.black38),
              const SizedBox(width: 12),
            ],
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
      ),
    );
  }
}
