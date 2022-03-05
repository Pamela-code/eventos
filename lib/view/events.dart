import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  right: 32,
                  top: 70,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://blog.unyleya.edu.br/wp-content/uploads/2017/12/saiba-como-a-educacao-ajuda-voce-a-ser-uma-pessoa-melhor.jpeg'),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('Olá,'),
                            Text('Ayana'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      width: constraints.maxWidth,
                      height: 40,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Busque seu evento'),
                            Icon(Icons.search)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text('Eventos'),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) => Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                    child: Image.network(
                                      'https://yt3.ggpht.com/ytc/AKedOLSZdkOGn2-vktrF6tbGmERQhY6lQN9BmF40XaPaHQ=s900-c-k-c0x00ffffff-no-rj',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Row(
                                    children: const [
                                      Text('Evento: '),
                                      Text('Nossa História - Sandy & Junior')
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: const [
                                          Text('Local: '),
                                          Text('Vegas pub - P10')
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text('Data:'),
                                          Text('13 de Nov'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Mais informações'),
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  label: '000',
                  icon: Icon(Icons.person),
                ),
                BottomNavigationBarItem(
                  label: '000',
                  icon: Icon(Icons.shopping_basket),
                ),
                BottomNavigationBarItem(
                  label: '000',
                  icon: Icon(Icons.favorite),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
