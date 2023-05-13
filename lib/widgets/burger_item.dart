import 'package:flutter/material.dart';

class BurgerItem extends StatefulWidget {
  const BurgerItem({Key? key}) : super(key: key);

  @override
  State<BurgerItem> createState() => _BurgerItemState();
}

class _BurgerItemState extends State<BurgerItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 160,
        margin: EdgeInsets.only(left: 15,top: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 5.0,
                  offset: Offset(0.0, 0.75))
            ],
            color: Colors.white),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 5),
            child: Row(
              children: [Icon(Icons.star), Text('3.5')],
            ),
          ),
          Image.asset(
            'assets/images/burgerImage.jpg',
            width: 100,
          ),
          Text('Chicken Burger', style: TextStyle(fontSize: 20)),
          Text(
            '100 gr chicken + tomato\ncheese Lettuse',
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  children: [
                    Icon(Icons.currency_rupee_outlined, color: Color(0xffF70A15)),
                    Text('2.00',style: TextStyle( color: Color(0xffF70A15),fontSize: 17),)
                  ],
                ),
                Icon(
                  Icons.add_circle_outlined,
                  color: Color(0xffF70A15),
                )
              ],
            ),
          )
        ]
      ),
    );
  }
}
