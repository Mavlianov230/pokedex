import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  final String? image;
  final String? name;
  final Color? color;
  final Function()? onTap;

  const PokemonCard({
    this.image,
    this.name,
    this.color,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: 114,
          height: 122,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(
              width: 1,
              color: color ?? Colors.green,
            ),
          ),
          child: Stack(
            children: [
              Align(
                alignment: const Alignment(0, 1),
                child: Container(
                  color: color ?? Colors.green,
                  height: 24,
                  width: double.infinity,
                  child: Text(
                    name ?? 'Bulbasaur',
                    style: const TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/image/${image ?? 'bulba'}.png',
                  width: 72,
                  height: 72,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.image_not_supported, size: 48, color: Colors.red);
                  },
                ),
              ),
              Positioned(
                right: 1,
                child: Text(
                  '#12',
                  style: TextStyle(color: color ?? Colors.black, fontSize: 12),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
