import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/data/models/store_model/store_model.dart';
import 'package:flutter/material.dart';

class DonationScreen extends StatefulWidget {
  final StoreModel store;

  const DonationScreen({super.key, required this.store});

  @override
  _DonationScreenState createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {
  int dotoCount = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  double imageSize = constraints.maxWidth;
                  return Hero(
                    tag: widget.store.id!,
                    child: Image.network(
                      widget.store.imageUrl!,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              Text(
                widget.store.name!,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(widget.store.content!),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text('후원할 도토리 개수: ', style: TextStyle(fontSize: 18)),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (dotoCount > 1) dotoCount--;
                      });
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  Text('$dotoCount', style: const TextStyle(fontSize: 18)),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        dotoCount++;
                      });
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    print('$dotoCount 도토리');
                  },
                  style: AppTheme.textButtonPrimaryTheme,
                  child: const Text(
                    '후원하기',
                    style: AppTheme.buttonTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
