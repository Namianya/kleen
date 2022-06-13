import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    List address = [
      {"Pysical Address": "Kilimani, Nairobi"},
      {"Start date": "Jan 1st 2000"},
      {"Pysical Address": "Kilimani, Nairobi"},
      {"Pysical Address": "Kilimani, Nairobi"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscription Details',
            style: TextStyle(color: Colors.black)),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.deepOrange[100],
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.deepOrange,
                  ),
                  child: const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Weekly Full Day',
                      style: TextStyle(fontSize: 20),
                    ),
                    CheckData(),
                    CheckData(),
                    CheckData(),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          'Ksh',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '500',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '/per week',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Change packege',
                      style: TextStyle(fontSize: 12, color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          CardContainer(address: address, title: "Physicale Address"),
          CardContainer(
            address: address,
            title: "Service Provider Details",
            imageUrl:
                'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1480&q=80',
          ),
          CardContainer(
            address: address,
            title: "Service provider verfication",
          ),
          ListTile(
            title: const Text('Pay Now'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pay After'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ]),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class CardContainer extends StatelessWidget {
  const CardContainer({
    Key? key,
    required this.address,
    required this.title,
    this.imageUrl,
  }) : super(key: key);

  final List address;
  final String title;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).canvasColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...address.map((e) {
                    String title = '';
                    String value = '';
                    for (final mapEntry in e.entries) {
                      title = mapEntry.key;
                      value = mapEntry.value;
                    }

                    return KeyValueDetails(
                      title: title,
                      value: value,
                    );
                  }).toList(),
                ],
              ),
              imageUrl != null
                  ? CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl!),
                      radius: 30,
                    )
                  : Container()
            ],
          ),
        ],
      ),
    );
  }
}

class KeyValueDetails extends StatelessWidget {
  const KeyValueDetails({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: RichText(
        text: TextSpan(
          text: title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: value,
              style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}

class CheckData extends StatelessWidget {
  const CheckData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.verified_outlined, color: Colors.yellow[900], size: 10),
        const SizedBox(
          width: 5,
        ),
        const Text('8 hours a week', style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
