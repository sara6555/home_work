import 'package:flutter/material.dart';

class CampgroundInfoCard extends StatelessWidget {
  const CampgroundInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xfff7f2f9)),
        child: Column(children: [
          Row(children: [
            const Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text(
                  'Oeschinen Lake',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  'Campground',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            const SizedBox(
              width: 50,
            ),
            Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xfffbecea)),
              child: const Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red,
                    size: 18,
                  ),
                  Text(
                    '4.1',
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
              ),
            ),
          ]),
          const Padding(
            padding: EdgeInsets.only(left: 11),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 18,
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Color(0XFF878289)),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            indent: 15,
            endIndent: 15,
            color: Color(0XFF878289),
          ),
          Row(
            children: [
              const SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xffe1e8fa)),
                    child: const Icon(
                      Icons.phone,
                      color: Color(0XFF2196e7),
                    ),
                  ),
                  const Text(
                    'CALL',
                    style: TextStyle(color: Color(0XFF2196e7), fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xffe6eae9)),
                    child: const Icon(
                      Icons.send,
                      color: Color(0XFF4eac4d),
                    ),
                  ),
                  const Text(
                    'ROUTE',
                    style: TextStyle(color: Color(0XFF4eac4d), fontSize: 13),
                  ),
                ],
              ),
              const SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: const Color(0xffefddf3)),
                    child: const Icon(
                      Icons.share,
                      color: Color(0XFFa027ae),
                    ),
                  ),
                  const Text(
                    'SHARE',
                    style: TextStyle(color: Color(0XFFa027ae), fontSize: 13),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
