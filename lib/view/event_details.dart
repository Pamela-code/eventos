import 'package:flutter/material.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({Key? key}) : super(key: key);

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: Stack(
          children: [
            Image.network(
              'https://yt3.ggpht.com/ytc/AKedOLSZdkOGn2-vktrF6tbGmERQhY6lQN9BmF40XaPaHQ=s900-c-k-c0x00ffffff-no-rj',
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info_outline),
                  color: Colors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: constraints.maxHeight * .55,
                width: constraints.maxWidth,
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Nossa História'),
                      const Text('2001 ingressos disponíveis'),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Reservar'),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.alarm),
                              Text('data'),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.gps_fixed_outlined),
                              Text('data'),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.flag),
                              Text('Evento Presencial'),
                            ],
                          ),
                          const Text('Descrição do Evento'),
                          const Text('data'),
                          TextButton(
                            onPressed: () {},
                            child: Text('VER DESCRIÇÃO'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
