import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Screen13 extends StatefulWidget {
  const Screen13({Key? key}) : super(key: key);

  @override
  State<Screen13> createState() => _Screen13State();
}

class _Screen13State extends State<Screen13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Review',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          const Text('How was the cleaning with jane doe?'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'How was everithing?',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: Colors.blue,
            ),
            onRatingUpdate: (rating) {},
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'What did you love most?',
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Chip(
                label: Text('Profesional'),
              ),
              Chip(
                label: Text('Profesional'),
              ),
              Chip(
                label: Text('Profesional'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Chip(
                label: Text('Profesional'),
              ),
              Chip(
                label: Text('Profesional'),
              ),
              Chip(
                label: Text('Profesional'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Tell Us More...',
            style: TextStyle(color: Colors.grey),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text('Done'),
              onPressed: () {},
            ),
          )
        ]),
      ),
    );
  }
}
