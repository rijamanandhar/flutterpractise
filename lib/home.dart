import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Text(
                    "facebook",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Icon(Icons.add, color: Colors.white),
                  ),
                  SizedBox(width: 12),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),

                    child: Container(
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),

                  SizedBox(width: 12),
                  Icon(Icons.message),
                  SizedBox(width: 12),
                ],
              ),
            ),

            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  Icon(Icons.home, size: 32),
                  SizedBox(width: 28),
                  Icon(Icons.video_call_sharp, size: 32),
                  SizedBox(width: 28),
                  Icon(Icons.store, size: 32),
                  SizedBox(width: 28),
                  Icon(Icons.games_rounded, size: 32),
                  SizedBox(width: 28),
                  Icon(Icons.notifications, size: 32),
                  SizedBox(width: 23),

                  Icon(Icons.menu, size: 32),
                ],
              ),
            ),
            Divider(thickness: 4, color: Colors.grey),

            // what's on your mind?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 19,

                    backgroundImage: NetworkImage(
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t39.30808-6/505232227_702509419153175_22714808341027296_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeFJ1UCJynZ7ykfura8ieMPYJO6vVky3Sgwk7q9WTLdKDG5A1WNScWjTGotlgJlu3KbrSpgzs0pNO0Lw4v-ktUac&_nc_ohc=JfgDcBB33XIQ7kNvwGhISK3&_nc_oc=AdnSAly3PXxv-ogh7JMvkattxV30y2mWeIc_thPpt0lXM9WOPAfROcuzAOvb4j0ZRs6m7bioYuuXFuLERyLVbCQP&_nc_zt=23&_nc_ht=scontent.fktm19-1.fna&_nc_gid=777F-ai5gkGFuaewlFq_Ig&oh=00_AfSgRZr2btVqwy5-zM4NjaosMYEas2zTeay0RLhl1lsKMg&oe=68821E98",
                    ),
                  ),
                  SizedBox(width: 8),

                  Text(
                    "What's on your mind?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  Spacer(),
                  Icon(Icons.photo_album, color: Colors.green),
                ],
              ),
            ),
            SizedBox(height: 8),
            Divider(thickness: 4, color: Colors.grey),

            // Story Section
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 8,
                  bottom: 8,
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8),
                          child: Container(
                            height: 160,
                            width: 100,
                            child: Image.network(
                              "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?cs=srgb&dl=pexels-hsapir-1054655.jpg&fm=jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(100),
                              border: Border.all(color: Colors.blue, width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                  "https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8),
                          child: Container(
                            height: 160,
                            width: 100,
                            child: Image.network(
                              "https://scontent.fktm20-1.fna.fbcdn.net/v/t39.30808-6/480680239_7983743505083983_5477421136329254333_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeFLF1P6TPRaJAinrNHQuJriEJ8mYRj4rdcQnyZhGPit1w38mqciaN_GCmDuVQbSgbfiPiYflLja1qi2Nad-Q08t&_nc_ohc=wqFTYuQsrG0Q7kNvwGsmjIb&_nc_oc=AdlLqN_4qkkjG9poQDVDUDpY93QWDauZYdnJzew4BAD11ruCtIJUln3DKylmCWrp9YU&_nc_zt=23&_nc_ht=scontent.fktm20-1.fna&_nc_gid=0zs8yyMUmxFeLuauILgcWw&oh=00_AfQojQhu6n9ePuuSrZy9E032wLIXn_u_tAimZbz8G_rhhQ&oe=6883C46E",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(100),
                              border: Border.all(color: Colors.blue, width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                  "https://scontent.fktm20-1.fna.fbcdn.net/v/t39.30808-6/480532418_7983743711750629_6723716052723165240_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGHisorFC5rh40B-EKr-m68EnQNzqXs3d4SdA3Opezd3tApxtxWX-CKlk9OrPkRp7JlsaIc-2KymS8shd7lyR42&_nc_ohc=okXKfviOh1EQ7kNvwE9mY6j&_nc_oc=Adk9DaI1tz94RUk8zZW40_Jet9Vp_KX7usswLpg9XuB4J202Fv73M2G8efaaGHjbftY&_nc_zt=23&_nc_ht=scontent.fktm20-1.fna&_nc_gid=296-GBSSaL5usgsn2lqxxA&oh=00_AfSuc0ggj4C5MUwTrcC46DDeiBhD-TOlzeuXvXdkzQqmkQ&oe=6883C5C6",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8),
                          child: Container(
                            height: 160,
                            width: 100,
                            child: Image.network(
                              "https://scontent.fktm20-1.fna.fbcdn.net/v/t39.30808-6/480704247_7983743551750645_1021464635314362603_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGbLWANQe5l660CWi1w7eSZ3qj5oFm409beqPmgWbjT1qV7x7wnadSJxZA-E9aZOk39kj__eGvtulhW8tE0nCIf&_nc_ohc=f9LkMh_R6UgQ7kNvwHg0QUb&_nc_oc=Adk8bGJ0rPsBVygg9UdJuN2_eEtb3Hv98sN87uX-0f-aqbXmPGUiBABcQvDLnTJaUxg&_nc_zt=23&_nc_ht=scontent.fktm20-1.fna&_nc_gid=7CleMwwWZW15UwTqsIaXYQ&oh=00_AfTr9fkLJcbyNXPZE8tOIcKMGIoA0I7xfjJL1lbcy73coA&oe=6883DB32",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(100),
                              border: Border.all(color: Colors.blue, width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                  "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/480661238_7983743395083994_8653952771662418742_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeFY7oXwQ24oyMou2Xk53t6-aLR8MwCqpeBotHwzAKql4PZhWmmG4gWFCD6GBlum5NxpAHMxpmD68KYixlITiwg2&_nc_ohc=-DrSxIrg67sQ7kNvwFBiz6o&_nc_oc=Adlu6md58FiXwGk34wDSg1Oj7mmq32iT9EOyiKO_PAKHOj6cyaMjsPRSimgvO4QaO7NqKqsPvIUTXvD6oeQEHgzW&_nc_zt=23&_nc_ht=scontent.fktm8-1.fna&_nc_gid=5r2H6KeXaJA-4NoRpKlkRw&oh=00_AfSTvTcUQmNWMN_qUHa8swQbwFz4jtRdZ8XSzGnEqL5kgw&oe=6883C3E1",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8),
                          child: Container(
                            height: 160,
                            width: 100,
                            child: Image.network(
                              "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/480351943_7983743255084008_4350186916513215262_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGpFMX3lQPYTnfGTfqaf1vykyeEMI6j306TJ4QwjqPfTtsWLzPVrIwqTXeSzpi2chZMf_cfOAxWgTUDdXRtcZMQ&_nc_ohc=IYO_8mWXU3EQ7kNvwFlTRdk&_nc_oc=AdnnkT7bMVyTVdhWivu0SDCo4t0v-qOwAzs_kYuaeHKcBfAB6R__pSO_ZtFf6dS-lHx3LEuzcxF-OMkD02aS7eaI&_nc_zt=23&_nc_ht=scontent.fktm8-1.fna&_nc_gid=U7UUymNMmIzGGlV0LYQ6dw&oh=00_AfTujf8-hFtcM4vmuBeGbdbl1yf7bDFlQx6hyPThb7fWkA&oe=6883C1E5",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(100),
                              border: Border.all(color: Colors.blue, width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                  "https://scontent.fktm8-1.fna.fbcdn.net/v/t39.30808-6/480351943_7983743255084008_4350186916513215262_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeGpFMX3lQPYTnfGTfqaf1vykyeEMI6j306TJ4QwjqPfTtsWLzPVrIwqTXeSzpi2chZMf_cfOAxWgTUDdXRtcZMQ&_nc_ohc=IYO_8mWXU3EQ7kNvwFlTRdk&_nc_oc=AdnnkT7bMVyTVdhWivu0SDCo4t0v-qOwAzs_kYuaeHKcBfAB6R__pSO_ZtFf6dS-lHx3LEuzcxF-OMkD02aS7eaI&_nc_zt=23&_nc_ht=scontent.fktm8-1.fna&_nc_gid=U7UUymNMmIzGGlV0LYQ6dw&oh=00_AfTujf8-hFtcM4vmuBeGbdbl1yf7bDFlQx6hyPThb7fWkA&oe=6883C1E5",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(8),
                          child: Container(
                            height: 160,
                            width: 100,
                            child: Image.network(
                              "https://images.pexels.com/photos/1054655/pexels-photo-1054655.jpeg?cs=srgb&dl=pexels-hsapir-1054655.jpg&fm=jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadiusGeometry.circular(100),
                              border: Border.all(color: Colors.blue, width: 3),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: NetworkImage(
                                  "https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE=",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(thickness: 4, color: Colors.grey),

            // post section
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        backgroundImage: NetworkImage(
                          "https://scontent.fktm20-1.fna.fbcdn.net/v/t39.30808-6/481086781_7983743338417333_4553354210846603960_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeHjWWAJaY2V7cUh0jxS-avNKLauK7KwFfkotq4rsrAV-bCWhF8AvSs7xwpMimqThy4YuWnx7wbDQ-sHIIp9WcK7&_nc_ohc=aQDWJSn69dgQ7kNvwENoVK1&_nc_oc=AdkYlKlGhPVewj4qOkSflqsBiKEdEkeH3h2ed4wXvmlx9dKp16nK7yXpuH5Kx-RKvbQ&_nc_zt=23&_nc_ht=scontent.fktm20-1.fna&_nc_gid=_SfEm6kU8XCgYJIPu_Cjdw&oh=00_AfSWxBUJ3t37CnyGm0oKCniApffhngCc4lRunkO2QMFaQg&oe=6883CA02",
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            "Rija Manandhar",
                            style: TextStyle(fontSize: 14),
                          ),

                          Row(
                            children: [
                              Text("1 d", style: TextStyle(fontSize: 10)),
                              SizedBox(width: 2),
                              Text(".", style: TextStyle(fontSize: 10)),
                              SizedBox(width: 2),
                              Icon(Icons.circle, color: Colors.grey),
                              SizedBox(width: 180),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Icon(Icons.menu, color: Colors.grey),
                              ),
                              SizedBox(width: 4),

                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Icon(Icons.close, color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Post
          ],
        ),
      ),
    );
  }
}
