import 'package:flutter/material.dart';
import './theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Experiment - Design System',
              style: Theme.of(context).textTheme.title.copyWith(
                color: ColorLight,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          backgroundColor: ColorSecondary,
        ),
        body: Container(
          padding: padding.all.xs, // Padding - Design System
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0, 1],
                    colors: [ColorPrimary, ColorSecondary], // Colors - Design System
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(grid_spacer), // Dimensions - Design System
                ),
                padding: padding.x.md + padding.top.xs, // Dimensions - Design System
                child: Row(
                  children: <Widget>[
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cristiano'.toUpperCase(),
                            style: Theme.of(context).textTheme.subtitle.copyWith(
                              color: ColorLight, // Color - Design System
                              fontWeight: FontWeight.w700,
                              height: 1.0,
                            ),
                          ),
                          Text(
                            'Ronaldo'.toUpperCase(),
                            style: Theme.of(context).textTheme.display1.copyWith(
                              color: ColorLight, // Colors - Design System
                              fontWeight: FontWeight.w900,
                              height: 1.1,
                            ),
                          ),
                          SizedBox(
                            height: grid_spacer * 1.5,  // Dimensions - Design System
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.event,
                                color: ColorMuted,  // Colors - Design System
                                size: grid_spacer * 2,
                              ),
                              SizedBox(
                                width: grid_spacer,
                              ),
                              Text(
                                '5th February 1985',
                                style: Theme.of(context).textTheme.body1.copyWith(
                                  color: ColorMuted,  // Colors - Design System
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: grid_spacer * 3,  // Dimensions - Design System
                          ),
                          Row(
                            children: <Widget>[
                              Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                  Positioned(
                                    left: grid_spacer * 4,  // Dimensions - Design System
                                    child: Container(
                                      padding: padding.all.xxs,  // Dimensions - Design System
                                      width: grid_spacer * 6,  // Dimensions - Design System
                                      height: grid_spacer * 6, // Dimensions - Design System
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(grid_spacer * 8),  // Dimensions - Design System
                                        color: ColorLight,  // Colors - Design System
                                        boxShadow: [BoxShadow(
                                          offset: Offset(0.0, 4.0),
                                          color: ColorShadow,  // Colors - Design System
                                          blurRadius: grid_spacer * 5,  // Dimensions - Design System
                                        )],
                                      ),
                                      child: Image.asset(
                                        './assets/images/portugal.png',
                                        height: grid_spacer * 2,  // Dimensions - Design System
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: padding.all.xxs,  // Dimensions - Design System
                                    width: grid_spacer * 6,  // Dimensions - Design System
                                    height: grid_spacer * 6,  // Dimensions - Design System
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(grid_spacer * 8),  // Dimensions - Design System
                                      color: ColorLight,  // Colors - Design System
                                      boxShadow: [BoxShadow(
                                        offset: Offset(0.0, 4.0),
                                        color: ColorShadow,  // Colors - Design System
                                        blurRadius: grid_spacer * 5,  // Dimensions - Design System
                                      )],
                                    ),
                                    child: Image.asset(
                                      './assets/images/juventus.png',
                                      height: grid_spacer * 2,  // Dimensions - Design System
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: grid_spacer * 2,  // Dimensions - Design System
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    './assets/images/cr7.png',
                    height: 220.0,
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
}