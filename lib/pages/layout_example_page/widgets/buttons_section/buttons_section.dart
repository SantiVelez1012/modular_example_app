import 'package:flutter/material.dart';

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ButtonWithText(color: colors.primary, icon: Icons.call, label: 'Call'),
          _ButtonWithText(color: colors.primary, icon: Icons.near_me, label: 'Route'),
          _ButtonWithText(color: colors.primary, icon: Icons.share, label: 'Share')
        ],
      ),
    );
  }
}

class _ButtonWithText extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;

  const _ButtonWithText(
      {required this.color, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                color: color, fontWeight: FontWeight.w400, fontSize: 12),
          ),
        )
      ],
    );
  }
}
