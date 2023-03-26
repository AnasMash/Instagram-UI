import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    required this.circleAvatarImageLink,
    required this.name,
    required this.postTime,
    required this.postImageLink,
    required this.likesNumber,
    required this.commentsNumber,
    this.marginTop = 0,
    this.marginBottom = 0,
    super.key,
  });

  final String circleAvatarImageLink;
  final String name;
  final String postTime;
  final String postImageLink;
  final String likesNumber;
  final String commentsNumber;
  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 440,
      // color: Colors.white,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
        top: marginTop,
        bottom: marginBottom,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      color: Colors.black,
                    )
                  ],
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(circleAvatarImageLink),
                  radius: 25,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(postTime),
                ],
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  size: 36,
                ),
              )
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              width: 300,
              height: 300,
              fit: BoxFit.cover,
              image: NetworkImage(postImageLink),
            ),
          ),
          Container(
            // color: Colors.grey,
            margin: const EdgeInsets.all(10),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 36,
                      ),
                    ),
                    Text(likesNumber)
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.insert_comment_outlined,
                        size: 36,
                      ),
                    ),
                    Text(commentsNumber)
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border,
                    size: 36,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
