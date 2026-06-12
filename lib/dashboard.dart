import 'package:flutter/material.dart';

//Widgets Categories-> Ready made widgets / Custom Widgets -> Classes
//Type of widgets -> Stateless widgets and Stateful widgets
class DashboardScreen extends StatefulWidget{
  @override
  State<DashboardScreen> createState()=> _DashboardScreenState();
}//state - Data -> Real time changes -> State

class _DashboardScreenState extends State<DashboardScreen>{
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Dashboard"),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Profile",
              ),
              Tab(
                text: "Settings",
              )
            ],
          ),
          ),
          body: const TabBarView(
            children: [
              HomeTab(),//Constructor -> Widget
              ProfileTab(),
              SettingsTab()
            ],
          ),
      ));
  }
}

class HomeTab extends StatelessWidget{//Stateless Widget -> Parent class
  const HomeTab({super.key});
  
  Widget dashboardCard
  
}
