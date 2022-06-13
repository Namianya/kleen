import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget {
  const Screen8({Key? key}) : super(key: key);

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Theme.of(context).canvasColor,
      ),
      body: Column(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).canvasColor,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Jane Dee',
                    style: TextStyle(color: Colors.blue),
                  ),
                  const Text(
                    '+254746366069',
                    style: TextStyle(),
                  ),
                  const Text(
                    'someone@someone.com',
                    style: TextStyle(),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('edit profile'.toUpperCase()),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        child: Text('Change Pin'.toUpperCase()),
                        onPressed: () {},
                      ),
                    ],
                  )
                ],
              ),
            ]),
          ),
        ),
        const CustomListTile(
          title: 'Subscription',
          subtitle: 'Some valid text placed here',
        ),
        const CustomListTile(
          title: 'Invoice and Billing',
          subtitle: 'Some valid text placed here',
        ),
        const CustomListTile(
          title: 'Jobs',
          subtitle: 'Some valid text placed here',
        )
      ]),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.caption,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 12,
        color: Colors.grey,
      ),
    );
  }
}
