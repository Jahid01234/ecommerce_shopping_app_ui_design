import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal,
          title: const Text('Profile Page'),
          centerTitle: true,
        ),

        body:Column(
          children: [
            Stack
              (
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 200.0,
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.jpg'),
                          fit: BoxFit.cover
                      )
                  ),
                ),

                Positioned(
                  bottom: -65.0,
                  child: Container(
                    height: 180.0,
                    width:150.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: Colors.white,
                            width: 2.0
                        ),
                        //color: Colors.red,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/jahidimage.jpg'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ),


              ],
            ),
            const SizedBox(height: 70),
            const Text('Md. Jahid Hasan',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20
              ),),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildActionItem(Icons.photo, 'Photos',   'https://images.google.com/'),
                buildActionItem(Icons.videocam, 'Videos',    'https://www.youtube.com/'),
                buildActionItem(Icons.location_on, 'Check In',   'https://maps.google.com/'),
              ],
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Divider(
                height: 10,
                color: Colors.grey,
              ),
            ),
          ],
        )
    );
  }



 Widget buildActionItem(IconData icon, String label, String url) {
    return GestureDetector(
      onTap: () async {
        if (await canLaunch(url))
        {
          await launch(url);
        }
        else
        {
          print('Could not launch $url');// Handle error
        }
      },

      child: Column(
        children: [
          Icon(icon, color: Colors.blue),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}