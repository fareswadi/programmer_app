import 'package:flutter/material.dart';
import 'package:page_view_indicator/page_view_indicator.dart';

class Sweppage extends StatefulWidget {
  @override
  _SweppageState createState() => _SweppageState();
}

class _SweppageState extends State<Sweppage> {
  @override
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);

  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Card(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.05,
                        right: 10,
                        left: 10,
                        bottom: MediaQuery.of(context).size.height * 0.02),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.4,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: ExactAssetImage('images/view2.png'),
                          fit: BoxFit.cover,
                        )),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(

                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'شعارنا',
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('#واثق الخطى يمشي ملكاً',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              skipmethods(index),
            ],
          ),
        );
      },
      onPageChanged: (index) {
        _pageViewNotifier.value = index;
      },
    );
  }

  Widget _displayPageIndicators(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 6.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 10.0,
          color: Colors.purple,
        ),
      ),
    );
  }

  Widget skipmethods(int index) {
    if (index == 3) {
      return Transform.translate(
        offset: Offset(0, MediaQuery.of(context).size.height * 0.87),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _displayPageIndicators(4),
              RaisedButton(
                onPressed: () {
                  return Navigator.pushNamedAndRemoveUntil(context, '/MainPage', (route) => false);
                },
                child: Text(
                  'تخطي',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                color: Colors.red,
              )
            ],
          ),
        ),
      );
    }
    return Transform.translate(
        offset: Offset(0, MediaQuery.of(context).size.height * 0.89),
        child: _displayPageIndicators(4));
  }
}
