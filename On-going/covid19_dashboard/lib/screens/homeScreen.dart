import 'package:covid19_dashboard/config/palette.dart';
import 'package:covid19_dashboard/widgets/countryDropdown.dart';
import 'package:covid19_dashboard/widgets/customAppBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _country = 'USA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          _buildHeader(screenHeight),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Palette.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40.0),
              bottomRight: Radius.circular(40.0),
            )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "COVID-19",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                CountryDropdown(
                  countries: ['CN', 'FR', 'IN', 'IT', 'UK', 'USA'],
                  country: _country,
                  onChanged: (val) => setState(() => _country = val),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Are you feeling sick?',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  'If you '
                  'feel sick with any COVID-19 symptoms, please call or text '
                  'us for help',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  children: [
                    FlatButton.icon(
                      label: Text(
                        'Call Now',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      icon: const Icon(Icons.phone, color: Colors.white),
                      color: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    ),
                    SizedBox(width: 10),
                    FlatButton.icon(
                      label: Text(
                        'SMS',
                        style: TextStyle(color: Colors.white),
                      ),
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      onPressed: () {},
                      icon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
