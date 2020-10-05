import 'package:flutter/material.dart';
import 'package:shikha_makeover_customer_app/screens/LoginPage.dart';
import 'package:shikha_makeover_customer_app/components/OnBoardPage.dart';
import 'package:shikha_makeover_customer_app/components/getIndicator.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe9ceb8),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/bg.png'),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    OnBoardPage(
                      img: 'ChooseYourService',
                      title: 'Choose your Service',
                      txt:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et sem viverra, finibus ipsum non, dapibus nulla. ',
                    ),
                    OnBoardPage(
                      img: 'ScheduleAppointment',
                      title: 'Schedule Appointment',
                      txt:
                          'Schedule your day and your address to continew our service of home salon and enjoy the perks ',
                    ),
                    OnBoardPage(
                      img: 'BestHomeSalon',
                      title: 'Best Home Salon',
                      txt:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et sem viverra, finibus ipsum non, dapibus nulla.  ',
                    ),
                    OnBoardPage(
                      img: 'ProfessionalAtHome',
                      title: 'Professional at Home',
                      txt:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et sem viverra, finibus ipsum non, dapibus nulla. ',
                    ),
                    OnBoardPage(
                      img: 'PayLater',
                      title: 'Pay Later',
                      txt:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam et sem viverra, finibus ipsum non, dapibus nulla. ',
                    ),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => GetIndicator(
                    pageNo: index,
                    cPageNo: currentPage,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: changePage,
              child: Container(
                height: 70,
                width: 70,
                margin: EdgeInsets.only(bottom: 30),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffff7d85),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void changePage() {
    if (currentPage == 4) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }
}
