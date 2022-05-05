import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:finsire_machine_test/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 42,
        backgroundColor: kWhite,
        elevation: 0,
        title: const Text(
          'Feed',
          style: TextStyle(color: kBlack, fontWeight: FontWeight.bold),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(top: 13, bottom: 13, left: 13),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.png'),
            radius: 15,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(
              Icons.add,
              color: kBlack,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.email,
              color: kBlack,
            ),
          )
        ],
      ),
      backgroundColor: kWhite,
      body: Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                buttonMargin: const EdgeInsets.only(left: 15),
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                backgroundColor: kRed,
                borderColor: kRed,
                unselectedBackgroundColor: kWhite,
                unselectedLabelStyle:
                    const TextStyle(color: kBlack, fontWeight: FontWeight.w600),
                height: 30,
                unselectedBorderColor: kRed,
                radius: 100,
                borderWidth: 1,
                labelStyle: const TextStyle(
                    color: kWhite, fontWeight: FontWeight.w600, fontSize: 12),
                tabs: const [
                  Tab(
                    text: "#Trending",
                  ),
                  Tab(
                    text: "#Food",
                  ),
                  Tab(
                    text: '#Activity',
                  ),
                  Tab(
                    text: '#Shopping',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    StaggeredGridView.countBuilder(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 20, top: 10),
                      crossAxisCount: 2,
                      staggeredTileBuilder: (index) =>
                          const StaggeredTile.fit(1),
                      crossAxisSpacing: 0,
                      physics: const BouncingScrollPhysics(),
                      mainAxisSpacing: 8,
                      itemCount: 40,
                      itemBuilder: (context, index) {
                        return buildImageCard(index);
                      },
                    ),
                    const Center(
                      child: Icon(Icons.directions_transit),
                    ),
                    const Center(
                      child: Icon(Icons.directions_bike),
                    ),
                    const Center(
                      child: Icon(Icons.directions_car),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //METHOD TO CREATE IMAGE CARD FOR GRID VIEW
  Widget buildImageCard(int index) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: -5,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8, left: 8, right: 8),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              child: Image.network(
                '$kImageUrl$index',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 1000,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: SizedBox(
                width: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Username',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Selfie',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        const Text(
                          '23 Min Ago',
                          style: TextStyle(fontSize: 9, color: kRed),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundImage: NetworkImage(
                        '$kImageUrl$index',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            decoration: const BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
