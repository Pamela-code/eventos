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
                height: constraints.maxHeight * .6,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Nossa História',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('2001 ingressos disponíveis'),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Reservar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.alarm),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Qua. 07 Jun. 2020       16h - 00:30'),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Icon(Icons.location_on),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Arena da Amazônia'),
                            ],
                          ),
                          const Text(
                              'Av. Constantino Nery, 5001 - Flores, Manaus - AM'),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Icon(Icons.flag),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Evento Presencial'),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'Descrição do Evento',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus est enim, eget convallis dui facilisis nec. Pellentesque nec odio purus. Vestibulum ut lacus pellentesque, condimentum nunc id, tincidunt metus.'),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'VER DESCRIÇÃO',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
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
