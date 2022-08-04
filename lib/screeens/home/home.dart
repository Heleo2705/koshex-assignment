import 'package:flutter/material.dart';
import 'package:koshex_assignment/screeens/home/widgets/explore_investment_card.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            backgroundColor: Colors.black,
            bottom: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              leading: Icon(
                Icons.person,
                size: 40,
              ),
              actions: [Icon(Icons.shopping_cart)],
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
                personalAICard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black,
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
