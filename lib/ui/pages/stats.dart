import 'package:advanced_covid/core/viewModels/get_countryStart_VM.dart';
import 'package:advanced_covid/utils/utils.dart';
import 'package:advanced_covid/ui/sharedWidgets/resultscontainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

enum toggle { country, all }

class Stats extends StatefulWidget {
  Stats({
    this.cases,
    this.death,
    this.recovered,
    this.active,
    this.critical,
    this.allcases,
    this.alldeath,
    this.allrecovered,
    this.allactive,
    this.allcritical,
    this.country,
    this.flag,
  });
  final int cases;
  final int death;
  final int recovered;
  final int active;
  final int critical;
  final int allcases;
  final int alldeath;
  final int allrecovered;
  final int allactive;
  final int allcritical;
  final String country;
  final String flag;
  @override
  _StatsState createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  TextStyle graphcolor = TextStyle(color: UIColors.color11);
  toggle selected = toggle.country;

  @override
  Widget build(BuildContext context) {
    Color activecolor = Colors.white;
    Color inactivecolor = Color(0xff6C65AC);

    return Scaffold(
      backgroundColor: UIColors.color1,
      body: SafeArea(
        child: Consumer<CountryStatVM>(
          builder: (context, value, child) {
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: screenHeight(context, 0.8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.sort,
                              color: UIColors.color2,
                              size: 27,
                            ),
                            Spacer(),
                            Icon(
                              Icons.notifications_none,
                              color: UIColors.color2,
                              size: 27,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text(
                              'Statistics',
                              style: TextStyle(
                                color: UIColors.color2,
                                fontSize: 25,
                              ),
                            ),
                            Spacer(),
                            Text(
                              selected == toggle.country
                                  ? value.countryStat.country
                                  : 'Global',
                              style: TextStyle(
                                color: UIColors.color2,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            selected == toggle.country
                                ? Image.network(
                                    value.countryStat.countryInfo.flag,
                                    height: 30,
                                    width: 40,
                                  )
                                : Container(),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: screenWidth(context, 1),
                          height: screenHeight(context, 0.07),
                          decoration: BoxDecoration(
                              color: Color(0xff6C65AC),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = toggle.country;
                                  });
                                },
                                child: Container(
                                  height: screenHeight(context, 0.07),
                                  width: screenWidth(context, 0.45),
                                  decoration: BoxDecoration(
                                    color: selected == toggle.country
                                        ? activecolor
                                        : inactivecolor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'My country',
                                      style: TextStyle(
                                          color: selected == toggle.country
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selected = toggle.all;
                                  });
                                },
                                child: Container(
                                  height: screenHeight(context, 0.07),
                                  width: screenWidth(context, 0.45),
                                  decoration: BoxDecoration(
                                    color: selected == toggle.all
                                        ? activecolor
                                        : inactivecolor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Global',
                                      style: TextStyle(
                                          color: selected == toggle.all
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: Row(
                            children: <Widget>[
                              Spacer(),
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: UIColors.color2,
                                  fontSize: 15,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Today',
                                style: TextStyle(
                                  color: UIColors.color2,
                                  fontSize: 15,
                                ),
                              ),
                              Spacer(),
                              Text(
                                'Yesterday',
                                style: TextStyle(
                                  color: UIColors.color2,
                                  fontSize: 15,
                                ),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            ResultsContainer(
                              width: screenWidth(context, 0.45),
                              color: UIColors.color6,
                              label: 'Affected',
                              value: selected == toggle.country
                                  ? value.countryStat.cases
                                  : widget.allcases,
                            ),
                            Spacer(),
                            ResultsContainer(
                              width: screenWidth(context, 0.45),
                              color: UIColors.color7,
                              label: 'Death',
                              value: selected == toggle.country
                                  ? value.countryStat.deaths
                                  : widget.alldeath,
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            ResultsContainer(
                              width: screenWidth(context, 0.29),
                              color: UIColors.color8,
                              label: 'Recovered',
                              value: selected == toggle.country
                                  ? value.countryStat.recovered
                                  : widget.allrecovered,
                            ),
                            Spacer(),
                            ResultsContainer(
                              width: screenWidth(context, 0.29),
                              color: UIColors.color9,
                              label: 'Active',
                              value: selected == toggle.country
                                  ? value.countryStat.recovered
                                  : widget.allactive,
                            ),
                            Spacer(),
                            ResultsContainer(
                              width: screenWidth(context, 0.29),
                              color: UIColors.color10,
                              label: 'Serious',
                              value: selected == toggle.country
                                  ? value.countryStat.critical
                                  : widget.allcritical,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
