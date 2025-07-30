import 'package:flutter/material.dart';

class Snapchat extends StatefulWidget {
  const Snapchat({super.key});

  @override
  State<Snapchat> createState() => _SnapchatState();
}

class _SnapchatState extends State<Snapchat> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),

                Spacer(),
                Icon(Icons.search, size: 32, color: Colors.white),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 30)),

                InkWell(
                  onTap: () {
                    setState(() {
                      if (!isClicked) {
                        isClicked = true;
                      } else {
                        isClicked = false;
                      }
                    });
                  },

                  child: !isClicked
                      ? Text(
                          "Chat",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          "Chat",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.green,
                          ),
                        ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 30)),

                Icon(
                  Icons.supervised_user_circle_sharp,
                  size: 32,
                  color: Colors.yellow,
                ),
                SizedBox(width: 12),

                Icon(Icons.menu, color: Colors.white),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(radius: 16, backgroundColor: Colors.blue),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'All',

                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 181, 218, 249),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Text(
                  "Unread",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 4),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 184, 218, 247),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '9+',

                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 24),
                Text("😭", style: TextStyle(fontSize: 20)),
                SizedBox(width: 28),
                Text("🐒", style: TextStyle(fontSize: 20)),
                SizedBox(width: 28),
                Text(
                  "Unreplied",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mnzl",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 1 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          " 1000🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30283739-100257301609_15-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rijju Pijju",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟥 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 1 d .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "259🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ishan",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 1 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "259🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Saurav",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 1 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "1345🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Romit",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 5 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "234🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Prashant",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 8 d .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "678🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sanjil",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 4 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "259🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rija",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 1 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "256🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                    "https://cf-st.sc-cdn.net/3d/render/30060626-99524936428_6-s5-v1.webp?trim=circle&scale=1&ua=2",
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Samir",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "🟪 New Snap",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          ". 1 mo .",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "1234🔥",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 64),
                Icon(Icons.chat_bubble, color: Colors.grey),
              ],
            ),
            Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
