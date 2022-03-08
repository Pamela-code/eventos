import 'package:eventos/theme/colors.dart';
import 'package:eventos/view/event_details.dart';
import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 18,
                right: 18,
                top: 65,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(),
                  const SizedBox(
                    height: 10,
                  ),
                  _searchBar(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Eventos',
                    style: TextStyle(
                      color: Color(0xff2d2d2d),
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 10),
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) => _eventCard(),
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            backgroundColor: kPrimaryColor,
            items: const [
              BottomNavigationBarItem(
                label: 'Início',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Eventos',
                icon: Icon(Icons.alarm),
              ),
              BottomNavigationBarItem(
                label: 'Em breve',
                icon: Icon(Icons.notifications_outlined),
              ),
              BottomNavigationBarItem(
                label: 'Conta',
                icon: Icon(Icons.person_outline),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://blog.unyleya.edu.br/wp-content/uploads/2017/12/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg'),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Olá,',
              style: TextStyle(
                color: Color(0xff2d2d2d),
                fontSize: 20,
              ),
            ),
            Text(
              'Ayana',
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffe8e8e8),
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      width: double.infinity,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Busque seu evento',
              style: TextStyle(
                color: Color(0xff8c8c8c),
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              Icons.search,
              color: Color(0xff8c8c8c),
            )
          ],
        ),
      ),
    );
  }

  Widget _eventCard() {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.network(
                  'https://yt3.ggpht.com/ytc/AKedOLSZdkOGn2-vktrF6tbGmERQhY6lQN9BmF40XaPaHQ=s900-c-k-c0x00ffffff-no-rj',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text(
                          'Evento: ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Nossa História - Sandy & Junior',
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Local: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('Vegas pub - P10')
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'Data:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text('13 de Nov'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EventDetails(),
                            ),
                          );
                        },
                        child: const Text(
                          'Mais informações',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
