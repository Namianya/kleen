import 'package:flutter/material.dart';
import 'package:kleen/widgets/custom_icon_button.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Select the type of service you want'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomIconButtons(
                    title: 'Home Cleaning', icon: Icons.clean_hands_outlined),
                CustomIconButtons(
                    title: 'Office Cleaning', icon: Icons.offline_bolt),
                CustomIconButtons(
                    title: 'Home Cleaning',
                    icon: Icons.cleaning_services_outlined),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomIconButtons(
                    title: 'Home Cleaning', icon: Icons.home_outlined),
                CustomIconButtons(
                    title: 'Office Cleaning',
                    icon: Icons.account_balance_rounded),
                CustomIconButtons(
                    title: 'Home Cleaning', icon: Icons.work_history_outlined),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).canvasColor,
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1563453392212-326f5e854473?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
