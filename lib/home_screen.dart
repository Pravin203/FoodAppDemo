// import 'package:flutter/material.dart';
//
// import 'slider.dart';
// import 'widgets/burger_item.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   var selectedIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: NavigationBar(
//         height: 70,
//         backgroundColor: const Color(0xffFADBD8),
//         // surfaceTintColor: scheme.surface,
//
//         destinations: const [
//           NavigationDestination(
//             icon: Icon(Icons.home_outlined),
//             label: "Home",
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.person),
//             label: "Account",
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.shopping_cart_rounded),
//             label: "Delivery",
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.comment),
//             label: "Notificatin",
//           ),
//         ],
//       ),
//       appBar: AppBar(
//         leading: const Icon(Icons.menu),
//         centerTitle: true,
//         title: const Row(children: [
//           Icon(Icons.location_pin, size: 15, color: Color(0xffF70A15)),
//           Text(
//             'Freedom Way,Lekki Phase',
//             style: TextStyle(fontSize: 15),
//           )
//         ]),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
//             child: CircleAvatar(
//               radius: 15,
//               backgroundImage: AssetImage('assets/images/pravin.jpg'),
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.only(
//                 right: 15,
//                 left: 15,
//               ),
//               child: SizedBox(
//                 height: 50,
//                 child: TextField(
//                   decoration: InputDecoration(
//                     filled: true,
//                     fillColor: Color(0xffFADBD8),
//                     hintText: "Search Data",
//                     prefixIcon: Icon(Icons.search),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(10.0)),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(15.0),
//               child: SliderScreen(),
//             ),
//             SizedBox(
//               height: 33,
//               child: Expanded(
//                 child: ListView.builder(
//                   itemCount: 5,
//                   scrollDirection: Axis.horizontal,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         setState(() {
//                           selectedIndex = index;
//                         });
//                       },
//                       child: Container(
//                         width: 100,
//                         margin: const EdgeInsets.only(left: 20),
//                         decoration: BoxDecoration(
//                             border: Border.all(color: const Color(0xffF70A15)),
//                             color: selectedIndex == index
//                                 ? Colors.red
//                                 : Colors.white,
//                             borderRadius: BorderRadius.circular(5)),
//                         height: 30,
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceAround,
//                             children: [
//                               Image.asset('assets/images/burgerImage.jpg',
//                                   height: 20),
//                               const Text('Burger',
//                                   style: TextStyle(fontSize: 15)),
//                             ]),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 210,
//               child: Expanded(
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 5,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       height: 200,
//                       width: 160,
//                       margin: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: const <BoxShadow>[
//                             BoxShadow(
//                                 color: Colors.black54,
//                                 blurRadius: 5.0,
//                                 offset: Offset(0.0, 0.75))
//                           ],
//                           color: Colors.white),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             const Padding(
//                               padding: EdgeInsets.only(left: 12, top: 5),
//                               child: Row(
//                                 children: [Icon(Icons.star), Text('3.5')],
//                               ),
//                             ),
//                             Image.asset(
//                               'assets/images/burgerImage.jpg',
//                               width: 100,
//                             ),
//                             const Text('Chicken Burger',
//                                 style: TextStyle(fontSize: 20)),
//                             const Text(
//                               '100 gr chicken + tomato\ncheese Lettuse',
//                               style:
//                                   TextStyle(fontSize: 12, color: Colors.grey),
//                             ),
//                             const Padding(
//                               padding:
//                                   EdgeInsets.only(left: 12.0, right: 10),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//
//                                   Text(
//                                     '\$2.00',
//                                     style: TextStyle(
//                                         color: Color(0xffF70A15),
//                                         fontSize: 17),
//                                   ),
//                                   Icon(
//                                     Icons.add_circle_outlined,
//                                     color: Color(0xffF70A15),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ]),
//                     );
//                   },
//                 ),
//               ),
//             ),
//
//             const Padding(
//               padding: EdgeInsets.only(right: 15.0, left: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Popular Meal Menu',style: TextStyle(fontWeight: FontWeight.w700)),
//                   Wrap(
//                     children: [
//                       Text(
//                         'See All',
//                         style: TextStyle(color: Colors.grey),
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_right_rounded,
//                         color: Colors.grey,
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(10),
//                 boxShadow: const <BoxShadow>[
//                   BoxShadow(
//                       color: Colors.black54,
//                       blurRadius: 5.0,
//                       offset: Offset(0.0, 0.75))
//                 ],
//               ),
//               height: 100,
//               margin: const EdgeInsets.only(left: 15, right: 15),
//               child: Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 100,
//                     child: Image.asset('assets/images/burgerImage.jpg'),
//                   ),
//                   const Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Preper Pizza',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.w700),
//                       ),
//                       Text(
//                         '5 Kg Box Of Pizza',
//                         style: TextStyle(fontSize: 10,color: Colors.grey),
//                       )
//                     ],
//                   ),
//
//                   const Padding(
//                     padding: EdgeInsets.only(left: 60),
//                     child: Text('\$15',style: TextStyle(fontSize: 25,color: Color(0xffF70A15)),),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import 'slider.dart';
import 'widgets/burger_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 70,
        backgroundColor: const Color(0xffFADBD8),
        // surfaceTintColor: scheme.surface,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: "Account",
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_rounded),
            label: "Delivery",
          ),
          NavigationDestination(
            icon: Icon(Icons.comment),
            label: "Notification",
          ),
        ],
      ),
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Row(
          children: [
            Icon(Icons.location_pin, size: 15, color: Color(0xffF70A15)),
            Text(
              'Freedom Way, Lekki Phase',
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: CircleAvatar(
              radius: 15,
              backgroundImage: AssetImage('assets/images/pravin.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                right: 15,
                left: 15,
              ),
              child: SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffFADBD8),
                    hintText: "Search Data",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: SliderScreen(),
            ),
            SizedBox(
              height: 33,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      width: 100,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffF70A15)),
                          color: selectedIndex == index
                              ? Colors.red
                              : Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      height: 30,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset('assets/images/burgerImage.jpg',
                                height: 20),
                            const Text('Burger',
                                style: TextStyle(fontSize: 15)),
                          ]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: 200,
                    width: 160,

                    margin: const EdgeInsets.only(left: 15, top: 15, bottom: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 5.0,
                          offset: Offset(0.0, 0.75),
                        )
                      ],
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Row(
                            children: [
                              Icon(Icons.star,color: Colors.orangeAccent),
                              Text('3.5'),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/images/burgerImage.jpg',
                          width: 100,
                        ),
                        const Text(
                          'Chicken Burger',
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text(
                          '100 gr chicken + tomato\ncheese Lettuce',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$2.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffF70A15), fontSize: 17),
                              ),
                              Icon(
                                Icons.add_circle_outlined,
                                color: Color(0xffF70A15),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Meal Menu',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Wrap(
                    children: [
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 0.75),
                  ),
                ],
              ),
              height: 100,
              margin: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/burgerImage.jpg'),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Preper Pizza',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '5 Kg Box Of Pizza',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 30),
                    child: Text(
                      '\$15',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Color(0xffF70A15),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );}}
