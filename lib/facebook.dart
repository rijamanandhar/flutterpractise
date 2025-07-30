import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "facebook",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(255, 4, 132, 236),
                  ),
                ),
                Spacer(),

                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(100),
                  child: Container(
                    color: Colors.black,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(16),
                  child: Container(
                    height: 150,
                    width: 110,
                    child: Image.network(
                      "https://scontent.fktm19-1.fna.fbcdn.net/v/t51.75761-15/508383578_18002344838795797_3491585641140760612_n.webp?stp=dst-jpg_tt6&_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFMseZJC950HL2z3HAlarOvpUMy3gn6byOlQzLeCfpvI6QcRDTwCMsn4H5x4r3XnkSe2ieBd2-wXm06mgbvAwrP&_nc_ohc=KgIWlYrS6jQQ7kNvwE5o7Nf&_nc_oc=AdmqeyJFinoGeUImH6wB8VPwqszVXRd0WGRlbaMe7bZQMUT74eJ18at5ZQvKf7dPOdarLvhwD2JtVzVSxqAD7VIC&_nc_zt=23&_nc_ht=scontent.fktm19-1.fna&_nc_gid=qvw6pLk0eU_nm2YT_BznHQ&oh=00_AfOLSlJ3JeEQi81lZVJk8A2DpMslskqo6hyDz-PjkDDKpA&oe=686D885B",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3, color: Colors.blue),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),

                    child: CircleAvatar(
                      radius: 15,
                      backgroundImage: NetworkImage(
                        "https://scontent.fktm19-1.fna.fbcdn.net/v/t51.75761-15/508383578_18002344838795797_3491585641140760612_n.webp?stp=dst-jpg_tt6&_nc_cat=107&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeFMseZJC950HL2z3HAlarOvpUMy3gn6byOlQzLeCfpvI6QcRDTwCMsn4H5x4r3XnkSe2ieBd2-wXm06mgbvAwrP&_nc_ohc=KgIWlYrS6jQQ7kNvwE5o7Nf&_nc_oc=AdmqeyJFinoGeUImH6wB8VPwqszVXRd0WGRlbaMe7bZQMUT74eJ18at5ZQvKf7dPOdarLvhwD2JtVzVSxqAD7VIC&_nc_zt=23&_nc_ht=scontent.fktm19-1.fna&_nc_gid=qvw6pLk0eU_nm2YT_BznHQ&oh=00_AfOLSlJ3JeEQi81lZVJk8A2DpMslskqo6hyDz-PjkDDKpA&oe=686D885B",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
