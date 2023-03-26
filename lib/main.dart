import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/circle_avatar_widget.dart';
import 'package:instagram_ui/widgets/post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: const Color(0xffEDF0F7),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            'Instagram',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.live_tv_outlined,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    CircleAvatarWidget(
                      imageLink:
                          'https://play-lh.googleusercontent.com/HHJb4ew7S16SHjqNjp1nEkVKn8L2j1rXPjVmF4fqf-mGjZYYIjhHYKjUJSLbB7SRx1HS',
                    ),
                    CircleAvatarWidget(
                      imageLink:
                          'https://img.freepik.com/premium-vector/anime-boy-avatar_24640-79420.jpg?w=2000',
                    ),
                    CircleAvatarWidget(
                      imageLink:
                          'https://img1.ak.crunchyroll.com/i/spire3/3614810e9ada5235038e8deb4adc264c1447729591_large.jpg',
                    ),
                    CircleAvatarWidget(
                      imageLink:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsZ0cwmEtXTK7xxnDc8cHobvC0Q5BlsxvnMg&usqp=CAU',
                    ),
                    CircleAvatarWidget(
                      imageLink:
                          'https://www.meme-arsenal.com/memes/50a03a151c699d2764e43c0973f76e51.jpg',
                    ),
                    CircleAvatarWidget(
                      imageLink:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdL5VJd4EhQXRR-_HaJZkfE5CEz0zpKggDFw&usqp=CAU',
                    ),
                    CircleAvatarWidget(
                      imageLink:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_qPtwVfpCfdRcgxtebxwkbkssWTmOmJqpYg&usqp=CAU',
                      marginRight: 15,
                    ),
                  ],
                ),
              ),
              const PostWidget(
                circleAvatarImageLink:
                    'https://preview.redd.it/tudjq02jost71.jpg?auto=webp&s=ed558eeba8ee7c136febe2cd0084d2ab3661b9eb',
                name: 'uzumaki naruto',
                postTime: '5 minutes',
                postImageLink:
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4618b046-b58d-4a1a-84c0-87a71b7aa326/dfiswb3-8ada393d-368b-40af-a96e-cfcde99da594.png/v1/fill/w_1280,h_1871,q_80,strp/the_real_naruto_uzumaki_by_sonlenonidas_dfiswb3-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTg3MSIsInBhdGgiOiJcL2ZcLzQ2MThiMDQ2LWI1OGQtNGExYS04NGMwLTg3YTcxYjdhYTMyNlwvZGZpc3diMy04YWRhMzkzZC0zNjhiLTQwYWYtYTk2ZS1jZmNkZTk5ZGE1OTQucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.3cNhIcolADueP0cwz2ORMUQieWvzyu8Uabz_pJg4DM8',
                likesNumber: '2520',
                commentsNumber: '400',
              ),
              const PostWidget(
                circleAvatarImageLink:
                    'https://cdn.dribbble.com/users/81809/screenshots/3443452/ssg-goku.jpg',
                name: 'Goku',
                postTime: '23 minutes',
                postImageLink: 'https://wallpaperaccess.com/full/54713.jpg',
                likesNumber: '2520',
                commentsNumber: '400',
                marginTop: 20,
                marginBottom: 20,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          onTap: (int itemIndex) {
            setState(() {
              _currentIndex = itemIndex;
            });
          },
          currentIndex: _currentIndex,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 32,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 32,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(
                  Icons.add_circle_outlined,
                  color: Colors.black,
                  size: 50,
                ),
                onPressed: () {},
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 32,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              // backgroundColor: ,
              icon: Icon(
                Icons.person,
                size: 32,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
