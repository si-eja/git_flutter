import 'package:flutter/material.dart';
import 'package:flutter_iuran/bottom.dart';
import 'package:flutter_iuran/login.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.grey.shade800,
                            Colors.white,
                          ],
                        ),
                        border: Border.all(
                          color: Colors.grey.shade800,
                          width: 2,
                        ),
                      ),
                      width: double.infinity,
                      height: 200,
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: IconButton(
                        icon: Icon(Icons.logout, 
                        color: Colors.black
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        }, 
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 100,
                        left: 20,
                        right: 20,
                      ),
                      child: CircleAvatar(
                        radius: 80,
                        child: Icon(  
                          Icons.person,
                          size: 100,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Nama pengguna', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                      SizedBox(height: 2,),
                      Text('Email@gmail.com', style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      )),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // Edit profile action
                            },
                            child: Text('Edit Profile'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey.shade800,
                              foregroundColor: Colors.white
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Jumlah Iuran', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                              SizedBox(height: 10,),
                              Text('Rp. 1.000.000', style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 50,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Periode iuran', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                              SizedBox(height: 10,),
                              Text('Bulanan', style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 50,
                            color: Colors.black,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Rumah', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                              SizedBox(height: 10,),
                              Text('No.32, Cisinga', style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              )),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text('Riwayat Aktivitas', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            TabBar(
                              tabs: [
                                Tab(text: 'Iuran'),
                                Tab(text: 'Riwayat'),
                              ],
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              indicatorColor: Colors.black,
                            ),
                            SizedBox(
                              height: 300,
                              child: TabBarView(
                                children: [
                                  //untuk tab 1
                                  Center(
                                    child: Text('Daftar Iuran', style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    )),
                                  ),
                                  //untuk tab 2
                                  Center(
                                    child: Text('Riwayat Aktivitas', style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}