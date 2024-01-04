import 'package:countries_app/view_model/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/country.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: _buildCountryList(context),
    );
  }

  Widget _buildCountryList(BuildContext context) {
    return Consumer<HomePageViewModel>(builder: (context,viewModel,child)=>ListView.builder(
      itemCount: viewModel.countries.length,
      itemBuilder: (context, index) {
        Country country = viewModel.countries[index];
        return ListTile(
          title: Text(country.name),
          subtitle: Text(country.capital),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(country.flag),
          ),
        );
      },
    ),);
  }
}
