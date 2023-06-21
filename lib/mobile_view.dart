import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Color(0xff1F1932),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.apps_rounded,
              size: 40,
            ),
          ),
          title: Row(
            children: [
              Container(
                height: 37,
                width: 238,
                decoration: BoxDecoration(
                    color: Color(0xff3C3E69),
                    borderRadius: BorderRadius.circular(9)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Feed",
                      style: TextStyle(fontSize: 19, color: Color(0xffFAF1E8)),
                    ),
                    Container(
                      height: 33,
                      width: 116,
                      decoration: BoxDecoration(
                          color: Color(0xffFAF1E8),
                          borderRadius: BorderRadius.circular(9)),
                      child: const Center(
                        child: Text(
                          "My Boats",
                          style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.send))],
          backgroundColor: Color(0xff1F1932),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              TabBar(
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Color(0xff3C3E69),
                ),
                isScrollable: true,
                tabs: [
                  const Center(
                    child: Text(
                      'My Boats',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xffFAF1E8),
                      ),
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Center(
                      child: Text(
                        'All Boats',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFAF1E8),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 36,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: const Center(
                      child: Text(
                        'Requests',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffFAF1E8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  MyBoats(),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.red,
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyBoats extends StatelessWidget {
  MyBoats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .8,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(29),
              topRight: Radius.circular(29),
            ),
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xff1F1932),
                  ),
                  hintText: "Search....",
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return listBoxItem(index, false);
                    }),
              )
            ],
          ),
        )
      ],
    );
  }
}

List<String> title = [
  "Mobile Service",
  "Mobile Services",
  "Graphic Design",
  "Graphic Designs",
  "Graphic Design",
  "Mobile Services",
  "Graphic Design",
  "Mobile Services",
];
List<String> subtitle = [
  "Jeccicha Anderson",
  "Poojitha Manne",
  "Partha saradhi",
  "Mythri Sekhar",
  "Jeccicha Anderson",
  "Poojitha Manne",
  "Mythri Sekhar",
  "Partha Saradhi",
];
List<String> numbers = [
  "25",
  "21",
  "35",
  "45",
  "25",
  "35",
  "21",
  "45",
];
List<String> imageUrl = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrYRG75X0eu9un4Sn34PVBuOl959zXG2ZF2VCpJ8c00RuDV7h9qm8UWkpN_5FkhWZe_rM&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZl25rQArtXar5k383QO5ZRen8YNEkXeEXYg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHCDgeozGTuyBpeXc4HK5wcbdCUG9DIIm2dg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6zZSZDjRFxoMjQ6qOIRs5ObNY6-i6vFQGaQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfQRhZj_S30JiCP42Q5TrrhKcx5TxykoiGlQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8LBLUYfaDOHF2Ao3gELGxz1YjTUy-yr9Udg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROT-hqDAurQ_sk9My_f315XcTKOD3jhuFefA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROT-hqDAurQ_sk9My_f315XcTKOD3jhuFefA&usqp=CAU",
];

Widget listBoxItem(int index, bool isRequest) {
  return Column(children: [
    const Padding(padding: EdgeInsets.all(8)),
    Stack(
      alignment: Alignment.center,
      children: [
        Material(
          elevation: 2,
          child: Container(
            height: 98,
            width: 334,
            decoration: const BoxDecoration(
              color: Color(0xffF0EFF5),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xffFFFFFF), width: 2.0)),
              child: CircleAvatar(
                radius: 41,
                backgroundImage: NetworkImage(imageUrl[index]),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30, right: 40),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title[index],
                style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subtitle[index],
                style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000)),
              ),
            ]),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 12,
              ),
              const SizedBox(
                width: 8,
              ),
              const CircleAvatar(
                radius: 12,
              ),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                radius: 12,
              ),
              const SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xff47126B),
                child: Text(
                  numbers[index],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                      color: Color(0xffFAF1E8)),
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                const Icon(Icons.more_horiz),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        backgroundColor:
                            isRequest ? Colors.blue : Color(0xffFF5E2C)),
                    onPressed: () {},
                    child: Text(
                      isRequest ? "Join" : "Requested",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    )
  ]);
}
