import 'package:flutter/material.dart';
import 'package:responsi_mopro/profile_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile UI',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
          color: Colors.black,
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 56,
                      backgroundImage: AssetImage('assets/images/gabriel.jpg'),
                    ),
                  ),
                  const SizedBox(height: 16),

                  const Text(
                    "Teknik Informatika",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Fakultas Vokasi",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 32),

                  ProfileInfoCard(
                    icon: Icons.person,
                    label: "Nama",
                    value: "Gabriel Glenn Peter Pardede",
                  ),
                  const SizedBox(height: 12),
                  ProfileInfoCard(
                    icon: Icons.numbers,
                    label: "NIM",
                    value: "241712041",
                  ),
                  const SizedBox(height: 12),
                  ProfileInfoCard(
                    icon: Icons.class_,
                    label: "Kom",
                    value: "A2",
                  ),
                  const SizedBox(height: 12),
                  ProfileInfoCard(
                    icon: Icons.email,
                    label: "Email",
                    value: "gabrielstudyacc@gmail.com",
                  ),
                  const SizedBox(height: 12),
                  ProfileInfoCard(
                    icon: Icons.calendar_today,
                    label: "Angkatan",
                    value: "2024",
                  ),
                  const SizedBox(height: 12),
                  ProfileInfoCard(
                    icon: Icons.phone,
                    label: "Nomor Telepon",
                    value: "0831-1877-712",
                  ),
                  const SizedBox(height: 12),
                  ProfileInfoCard(
                    icon: Icons.info_outline,
                    label: "Jenis",
                    value: "Manusia",
                  ),
                  const SizedBox(height: 32),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow.shade700,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
