import 'package:flutter/material.dart';

class DittoScreen extends StatelessWidget {
  final Color color;

  const DittoScreen ({required this.color, super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 430,
            height: 780,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white, width: 12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  blurRadius: 16,
                  spreadRadius: 4,
                ),
              ],
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(12),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      left: 16,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ),
                    Positioned(
                      top: 16,
                      right: 16,
                      child: const Text(
                        '#132',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/image/ditto.png',
                            width: 120,
                            height: 120,
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Ditto',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Chip(
                        label: Text(
                          'Normal',
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'About',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,color: Colors.grey
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.monitor_weight),
                              Text('4.0 kg'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.height),
                              Text('0.3 m'),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.bolt),
                              Text('Limber\nImposter'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text(
                        'Base Stats',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,color: Colors.grey
                        ),
                      ),
                      SizedBox(height: 8),
                      StatsBar(label: 'HP', value: 48, color: Colors.grey),
                      StatsBar(label: 'ATK', value: 48, color: Colors.grey),
                      StatsBar(label: 'DEF', value: 48, color: Colors.grey),
                      StatsBar(label: 'SATK', value: 48, color: Colors.grey),
                      StatsBar(label: 'SDEF', value: 48, color: Colors.grey),
                      StatsBar(label: 'SPD', value: 48, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StatsBar extends StatelessWidget {
  final String label;
  final int value;
  final Color color;

  const StatsBar({required this.label, required this.value, required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50, child: Text(label)),
        Expanded(
          child: LinearProgressIndicator(
            value: value / 100,
            backgroundColor: Colors.grey.shade300,
            color: color,
          ),
        ),
        SizedBox(width: 30, child: Text(value.toString())),
      ],
    );
  }
}
