import 'package:flutter/material.dart';
import 'package:online_courses_mobile_app/utils/category_title.dart';
import 'package:online_courses_mobile_app/utils/homework_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.list,
                    size: 35,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/student1.jpg',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    size: 35,
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                children: const [
                  Text(
                    'Hello, ',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'John',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              const CategoryTitle(
                title: 'Classes',
                secondTitle: '5 classes today',
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/icons/textbooks.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.grey[400],
                          ),
                          child: Image.asset(
                            'assets/icons/arrows.png',
                            height: 25,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'History',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '8:00 - 8:45',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Container(
                      width: width / 3,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.login,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            height: 20,
                            child: VerticalDivider(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Join Now',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),
              const CategoryTitle(
                title: 'Home Works',
                secondTitle: 'View All',
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  const HomeworkCard(
                    backgroundColor: Colors.purple,
                  ),
                  Positioned(
                    top: 25,
                    left: 0,
                    right: 0,
                    child: HomeworkCard(
                      backgroundColor: Colors.pink[100]!,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
