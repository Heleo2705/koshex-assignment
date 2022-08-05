import 'package:flutter/material.dart';
import 'package:koshex_assignment/constants/color_constants.dart';
import 'package:koshex_assignment/screeens/home/widgets/explore_investment_card.dart';
import 'package:koshex_assignment/screeens/home/widgets/explore_more.dart';
import 'package:koshex_assignment/screeens/home/widgets/gold_investment_card.dart';
import 'package:koshex_assignment/screeens/home/widgets/investment_overview_card.dart';
import 'package:koshex_assignment/screeens/home/widgets/live_market_index_card.dart';
import 'package:koshex_assignment/screeens/home/widgets/networth_card.dart';
import 'package:koshex_assignment/screeens/home/widgets/personal_ai_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: ColorConstants.grey,
            bottom: AppBar(
              backgroundColor: ColorConstants.grey,
              elevation: 0,
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.shopping_cart),
                )
              ],
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi Manoj"),
                  Text("Welcome to koshex"),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                networthCard(),
                liveMarketIndexCard(),
                investmentOverviewCard(),
                goldinvestmentCard(),
                exploreInvestmentCard(),
                exploreMoreCard(),
                personalAICard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: ColorConstants.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handyman_sharp),
            label: 'Holdings',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Investments',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.white,
        onTap: (v) {},
      ),
    );
  }
}
