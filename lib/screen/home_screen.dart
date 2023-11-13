import 'package:flutter/material.dart';
import 'package:real_estate_app/screen/details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  List<String> nameChoice = [
    'Building',
    'Community',
    'House',
    'Hotel',
    'Rent',
    'Building',
  ];
  List<String> imge = [
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
    'assets/images/Image1.png',
  ];
  List<String> imge1 = [
    'assets/images/Image7.png',
    'assets/images/Image8.png',
    'assets/images/Image2.png',
    'assets/images/Image9.png',
    'assets/images/Image7.png',
    'assets/images/Image9.png',
    'assets/images/Image8.png',
    'assets/images/Image2.png',
    'assets/images/Image9.png',
    'assets/images/Image7.png',
    'assets/images/Image2.png',
    'assets/images/Image8.png',
  ];
  List<String> imge2 = [
    'assets/images/Image1.png',
    'assets/images/Image4.png',
    'assets/images/Image5.png',
    'assets/images/Image6.png',
    'assets/images/Image1.png',
  ];
  List<String> title = [
    "Department Aplux",
    "Nacoa Apartment",
    "Passion Aprtment",
    "LightHouse Aprtment",
    "Luxurious Apartment",
    "Passion Aprtment",
    "LightHouse Aprtment",
    "Luxurious Apartment",
  ];
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wei = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "London",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF4975E9),
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "Washington, New York",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: EdgeInsets.only(right: wei * 0.03),
              child: Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                height: hei * 0.05,
                width: wei * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  "assets/images/profile.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                      width: wei * 0.74,
                      height: hei * 0.06,
                      child: TextField(
                        cursorOpacityAnimates: true,
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: "Search your home",
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF4975E9),
                          ),
                          hintStyle: TextStyle(
                              color: Colors.grey.shade300, fontSize: 12),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: wei * 0.12,
                    height: hei * 0.06,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.settings,
                      color: Color(0xFF4975E9),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      6,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ChoiceChip(
                            avatar: const Icon(
                              Icons.hotel,
                              color: Color(0xFF4975E9),
                            ),
                            label: Text(
                              nameChoice[index],
                              style: const TextStyle(
                                color: Color(0xFF4975E9),
                              ),
                            ),
                            selected: false,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: hei * 0.01, left: wei * 0.06, right: wei * 0.06),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Nearest You",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xFF4975E9),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    5,
                    (index) {
                      return SizedBox(
                        width: wei * 0.79,
                        height: hei * 0.4,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: wei * 0.06, top: 15.0, right: wei * 0.06),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                  img: imge2[index],
                                  title: title[index],
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: hei * 0.17,
                                  child: Container(
                                    width: wei * 0.65,
                                    height: hei * 0.18,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade300,
                                          blurRadius: 6,
                                          spreadRadius: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: wei * 0.017),
                                      child: Image.asset(imge2[index]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: wei * 0.02),
                                                child: Text(
                                                  title[index],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1.0),
                                                child: Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.location_on,
                                                      color: Color(0xFF4975E9),
                                                    ),
                                                    Text(
                                                      "Alexander City, Alamba",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors
                                                              .grey.shade400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    const Text(
                                                      "\$750",
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF4975E9),
                                                      ),
                                                    ),
                                                    Text(
                                                      "/mo",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey.shade400),
                                                    ),
                                                    SizedBox(width: wei * 0.17),
                                                    const Icon(Icons.star,
                                                        color: Colors.amber),
                                                    const Text("4.9"),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: hei * 0.01, left: wei * 0.06, right: wei * 0.06),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommend For You",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xFF4975E9),
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(
                    8,
                    (index) {
                      return InkWell(
                        splashColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              img: imge[index],
                              title: title[index],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: wei * 0.85,
                            height: hei * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                  offset: const Offset(4, 9),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: ClipRRect(
                                    child: Image.asset(imge1[index]),
                                  ),
                                ),
                                SizedBox(width: wei * 0.01),
                                Padding(
                                  padding: EdgeInsets.only(top: hei * 0.03),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: wei * 0.01),
                                        child: Text(
                                          title[index],
                                          style:  TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: wei*0.037),
                                        ),
                                      ),
                                      SizedBox(height: hei * 0.02),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: wei * 0.01),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on,
                                              size: 15,
                                              color: Color(0xFF4975E9),
                                            ),
                                            Text(
                                              "Alexander City",
                                              style: TextStyle(fontSize: 12,
                                                  color: Colors.grey.shade400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: hei * 0.015),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: wei * 0.01),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.bed,
                                                  size: 13,
                                                  color: Colors.grey.shade300,
                                                ),
                                                SizedBox(width: wei * 0.01),
                                                Text(
                                                  "2",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.apartment,
                                                  size: 13,
                                                  color: Colors.grey.shade300,
                                                ),
                                                SizedBox(width: wei * 0.01),
                                                Text(
                                                  "3",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.reviews,
                                                  size: 13,
                                                  color: Colors.grey.shade300,
                                                ),
                                                SizedBox(width: wei * 0.01),
                                                Text(
                                                  "750",
                                                  style:
                                                      TextStyle(fontSize: 12),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                     SizedBox(height: hei*0.01),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: wei * 0.01),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "\$750",
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF4975E9),
                                              ),
                                            ),
                                            Text(
                                              "/mo",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey.shade400),
                                            ),
                                            SizedBox(width: wei * 0.05),
                                            const Icon(Icons.star,
                                                size: 15, color: Colors.amber),
                                            const Text("4.9")
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
