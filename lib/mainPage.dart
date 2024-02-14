import 'dart:html';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:sheenai/Screensize.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> with TickerProviderStateMixin {
  // moving gradient
  late AnimationController _controller;
  late Animation<double> _animation;
  late AnimationController _gradientController;
  late AnimationController _firstTranslatingController;
  late AnimationController _secondTranslatingController;
  late Animation<Color?> _gradientanimation;
  late Animation<Color?> _gradientanimation2;
  late Animation<double> _translatingtext;
  late Animation<double> firsttranslatingPhoneYcoord;
  late Animation<double> secondTranslatingPhoneXcoord;
  //main resizing black container
  late double widthResizingCon;
  late double heightResizingCon;
  Color sheenaiColleft = Colors.black;
  Color sheenaiColRight = Colors.black;
  double opacityofContact = 0;
  double opacityoftext = 1;
  double opacityofbackdrop = 0;
  bool resizingconSheenAitext = true;
  bool iphonetranslationfirst = true;
  bool iphonetranslationfirstback = false;
  bool iphonetranslationsecond = true;
  bool iphonetranslationsecondbackward = false;
  bool iphoneassingment = false;
  bool bottomgradientvis = false;
  bool topgradient = false;
  bool translatinggrad = true;
  bool translatinggradback = true;
  bool iphonetranslationsecondsecond = true;
  bool redHeightbool = false;
  bool blueheightbool = false;
  bool resizingconbackward = false;
  double blueheight = 0;
  double redheight = 0;
  double orderopac = 0;
  double ecommopac = 0;
  double chittiopac = 0;
  double cortexopac = 0;
  double jsafeopac = 0;
  double divaopac = 0;
  double iphoneopacity = 1;
  bool iphonopacbool = true;
  bool orderopacbool = true;
  bool ecommopacbool = true;
  bool chittiopacbool = true;
  bool cortexopacbool = true;
  bool jsafeopacbool = true;
  bool divaopacbool = true;

  void resizeCon() {
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        widthResizingCon = MediaQuery.of(context).size.width + 200;
        heightResizingCon = MediaQuery.of(context).size.height + 200;
        _gradientController.forward();
        opacityofContact = 1;
        opacityofbackdrop=1;
      });
    Future.delayed(Duration(seconds: 1),(){
      setState(() {
        _firstTranslatingController.forward();

      });
    });
    Future.delayed(Duration(milliseconds: 1500),(){
      setState(() {
        firsttranslatingPhoneYcoord = Tween<double>(begin:ScreenSize.height!-50, end: (ScreenSize.height!/2)-250 ).animate(_secondTranslatingController)..addListener(() {setState(() {

        });});
      });
    });
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<double>(begin: 100, end: ScreenSize.height!-200).animate(_controller)..addListener(() {setState(() {

    });});
    _firstTranslatingController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _secondTranslatingController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _gradientController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    firsttranslatingPhoneYcoord = Tween<double>(begin: ScreenSize.height, end: ScreenSize.height!-220).animate(_firstTranslatingController)..addListener(() {setState(() {

    });});
    secondTranslatingPhoneXcoord = Tween<double>(begin: (ScreenSize.width!/2)-125, end: ((ScreenSize.width!/2)+(ScreenSize.width!/4))-125).animate(_secondTranslatingController)..addListener(() {setState(() {

    });});
    _gradientanimation = ColorTween(begin: Colors.black, end: Color(0xFF5644FF))
        .animate(_gradientController)
      ..addListener(() {
        setState(() {});
      });
    _gradientanimation2 =
        ColorTween(begin: Colors.black, end: Color(0xFFFF7C6E))
            .animate(_gradientController)
          ..addListener(() {
            setState(() {});
          });
    _translatingtext = Tween<double>(
            begin: (ScreenSize.height! / 2) - 150,
            end: (ScreenSize.height!) / 2 - 50)
        .animate(_gradientController)
      ..addListener(() {
        setState(() {});
      });
    widthResizingCon = ScreenSize.width! / 2.5;
    heightResizingCon = ScreenSize.height! / 2.5;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            NotificationListener(
              onNotification: (v) {
                // blue color height
                if(v is ScrollNotification && v.metrics.pixels > 250){
                  setState(() {
                    blueheight=500;
                    blueheightbool=true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels < 249){
                  setState(() {
                    blueheight = 0;
                    blueheightbool = false;
                  });
                }
                // red color height
                if(v is ScrollNotification && v.metrics.pixels > 1050){
                  setState(() {
                    redheight=500;
                    redHeightbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels < 1049 && redHeightbool){
                  setState(() {
                    redHeightbool=true;
                    redheight=0;
                  });
                }
                // resizing box sheen ai opacity
                if(v is ScrollNotification && v.metrics.pixels > 5 && resizingconSheenAitext){
                  setState(() {
                    setState(() {
                      widthResizingCon = MediaQuery.of(context).size.width + 200;
                      heightResizingCon = MediaQuery.of(context).size.height + 200;
                      _gradientController.forward();
                      opacityofContact = 1;
                      opacityofbackdrop=1;
                      resizingconSheenAitext = false;
                      bottomgradientvis = true;
                      resizingconbackward = true;
                    });

                  });
                }
                if(v is ScrollNotification && v.metrics.pixels < 5 && resizingconbackward){
                  setState(() {
                    resizingconSheenAitext = true;
                    widthResizingCon = ScreenSize.width!/2.5;
                    heightResizingCon = ScreenSize.height!/2.5;
                    _gradientController.reverse();
                    opacityofbackdrop=0;
                    opacityofContact=0;
                    bottomgradientvis = false;
                    resizingconbackward = false;
                  });
                }
                // iphone translation first
                if(v is ScrollNotification && v.metrics.pixels > 35 && iphonetranslationfirst){
                  setState(() {
                    _firstTranslatingController.forward();
                    iphonetranslationfirst=false;
                    iphonetranslationfirstback = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels < 34 && iphonetranslationfirstback){
                  setState(() {
                    _firstTranslatingController.reverse();
                    iphonetranslationfirst=true;
                    iphonetranslationfirstback = false;
                  });
                }
                // assigning second controller to iphone animator
                if(v is ScrollNotification && v.metrics.pixels >75 && iphonetranslationsecond){
                  setState(() {
                    firsttranslatingPhoneYcoord = Tween<double>(begin:ScreenSize.height!-220, end: (ScreenSize.height!/2)-250 ).animate(_secondTranslatingController)..addListener(() {setState(() {
                    iphoneassingment= true;
                    });});
                    iphonetranslationsecond=false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels <74&& iphoneassingment){
                  setState(() {
                    firsttranslatingPhoneYcoord = Tween<double>(begin: ScreenSize.height, end: ScreenSize.height!-220).animate(_firstTranslatingController)..addListener(() {setState(() {

                    });});
                    iphoneassingment = false;
                    iphonetranslationsecondsecond=true;
                    iphonetranslationsecond = true;
                  });
                }
                // second translation of iphone
                if (v is ScrollNotification && v.metrics.pixels > 120 && iphonetranslationsecondsecond) {
                  setState(() {
                    iphonetranslationsecondsecond = false;
                    _secondTranslatingController.forward();
                    _gradientController.reverse();
                    opacityoftext = 0;
                    opacityofContact = 0;
                    bottomgradientvis = false;
                    topgradient=true;
                    iphonetranslationsecondbackward = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels < 119 && iphonetranslationsecondbackward){
                  setState(() {
                    iphonetranslationsecondsecond = true;
                    _secondTranslatingController.reverse();
                    _gradientController.forward();
                    opacityoftext = 1;
                    opacityofContact = 1;
                    bottomgradientvis = true;
                    topgradient=false;
                    iphonetranslationsecondbackward = false;
                  });
                }
                // translating gradient
                if(v is ScrollNotification && v.metrics.pixels>300 && translatinggrad){
                  _controller.forward();
                  setState(() {
                    translatinggrad=false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels >1050 && translatinggradback){
                  setState(() {
                    translatinggradback = false;
                  });
                  _controller.reverse();
                }
                // text opacity
                if(v is ScrollNotification && v.metrics.pixels>300 && orderopacbool){
                  setState(() {
                      orderopac=1;
                      ecommopac = 0;
                      chittiopac = 0;
                      cortexopac = 0;
                      jsafeopac = 0;
                      divaopac = 0;
                      orderopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels<300 && !orderopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 0;
                    orderopacbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels>1050 && ecommopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 1;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 0;
                    ecommopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels<1050 && !ecommopacbool){
                  setState(() {
                    orderopac=1;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 0;
                    ecommopacbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels>2000 && chittiopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 1;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 0;
                    chittiopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels<2000 && !chittiopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 1;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 0;
                    chittiopacbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels>3000 && cortexopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 1;
                    jsafeopac = 0;
                    divaopac = 0;
                    cortexopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels<3000 && !cortexopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 1;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 0;
                    cortexopacbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels>4000 && jsafeopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 1;
                    divaopac = 0;
                    jsafeopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels<4000 && !jsafeopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 1;
                    jsafeopac = 0;
                    divaopac = 0;
                    jsafeopacbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels>5000 && divaopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 0;
                    divaopac = 1;
                    divaopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels<5000 && !divaopacbool){
                  setState(() {
                    orderopac=0;
                    ecommopac = 0;
                    chittiopac = 0;
                    cortexopac = 0;
                    jsafeopac = 1;
                    divaopac = 0;
                    divaopacbool = true;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels>5500 && iphonopacbool){
                  setState(() {
                    iphoneopacity=0;
                    iphonopacbool = false;
                  });
                }
                if(v is ScrollNotification && v.metrics.pixels <5500 && !iphonopacbool){
                  setState(() {
                    iphoneopacity=1;
                    iphonopacbool=true;
                  });
                }

                return true;
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    // resizable Container
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AnimatedContainer(
                        height: heightResizingCon,
                        width: widthResizingCon,
                        decoration: BoxDecoration(color: Color(0xFF0C0C0C)),
                        duration: Duration(seconds: 2),
                      ),
                    ),


                    // top gradient
                    Positioned(
                        top: _animation.value,
                        left: -150,
                        child: AnimatedOpacity(
                          opacity: topgradient?1:0,
                          duration: Duration(seconds: 2),
                          child: Container(
                            child: Stack(
                              children: [
                                Positioned(
                                    child:Transform.rotate(
                                      angle: (3*pi)/4,
                                      child: Container(
                                        width: (MediaQuery.of(context).size.width*0.3255208333),
                                        height: ((MediaQuery.of(context).size.width*0.3255208333)*0.6),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(200),
                                          gradient: LinearGradient(
                                            colors: [Color(0xFF9159CB).withOpacity(0.7), Color(0xFF3500FF).withOpacity(0.7)],
                                          ),
                                        ),
                                      ),
                                    )
                                ),
                                Positioned(
                                    top:0,
                                    left: 0,
                                    child:Transform.rotate(
                                      angle: (3*pi)/4,
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 100,
                                          sigmaY: 90,

                                        ),
                                        child: Container(
                                          width: 400,
                                          height: 500,
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),
                          ),
                        )
                    ),

                    //bottom gradient
                    Positioned(
                      top: ScreenSize.height!-25,
                      child: AnimatedOpacity(
                        opacity: opacityofbackdrop,
                        duration: Duration(seconds: 3),
                        child: Container(
                          child: Stack(
                            children: [

                              AnimatedOpacity(
                                duration: Duration(seconds: 3),
                                opacity: bottomgradientvis?1:0,
                                child: Container(
                                  width:MediaQuery.of(context).size.width,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [Color(0xFF5644FF),Color(0xFFFF7C6E)],
                                      ),
                                      borderRadius: BorderRadius.all(Radius.elliptical(2000, 200))
                                  ),
                                ),
                              ),
                              BackdropFilter(filter: ImageFilter.blur(
                                sigmaX:100,
                                sigmaY: 50,
                              ),
                                child: Container(
                                  width: ScreenSize.width,
                                  height: 400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Hey There!! Text
                    Positioned(
                      top: _translatingtext.value,
                      left: (MediaQuery.of(context).size.width / 2)-145,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedOpacity(
                            duration: Duration(seconds: 1),
                            opacity: opacityoftext,
                            child: GradientText(
                              "Hey There!!",
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 72,
                              ),
                              colors: [
                                _gradientanimation.value ?? Colors.black,
                                _gradientanimation2.value ?? Colors.black
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          AnimatedOpacity(
                            opacity: opacityofContact,
                            duration: Duration(seconds: 1),
                            child: Container(
                              height: 50,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40)),
                              child: Center(
                                  child: Text(
                                    "Contact us",
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //English Hindi
                    Align(
                      alignment: Alignment.topRight,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 3),
                        opacity: opacityofbackdrop,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                          child: Container(
                            width: 200,
                            height: 40,
                            child: Row(
                              children: [
                                Container(
                                  width: 98,
                                  height: 40,
                                  child: Center(
                                    child: Text(
                                      "English",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomRight,
                                        end: Alignment.topLeft,
                                        colors: [
                                          Color(0xFF5644FF),
                                          Color(0xFFFF7C6E)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                    width: 98,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        "Hindi",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ))
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        Color(0xFFFF7C6E),
                                        Color(0xFF5644FF)
                                      ]),
                                  width: 1,
                                )),
                          ),
                        ),
                      ),
                    ),

                    // main text
                    Positioned(
                      child: SingleChildScrollView(
                        child: Container(
                          width: ScreenSize.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Order",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 72,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "Say goodbye to manual calculations and hello\nto fast inventory tracking with our app",
                                      style: TextStyle(
                                        fontSize: 15,

                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Ecomm\n(white labelling)",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 72,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "Elevate your digital presence with our white-label\njewellery app for iOS and Android.",
                                      style: TextStyle(
                                        fontSize: 15,

                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Chitti",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 72,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "Secure and streamline your invoicing with\nChitti, the future of invoicing",
                                      style: TextStyle(
                                        fontSize: 15,

                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cortex",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 72,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "Revolutionize your design number matching\nprocess with Cortex’s state-of-the-art AI\ncapabilities",
                                      style: TextStyle(
                                        fontSize: 15,

                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "J Safe",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 72,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "Keep your local data safe and private with our\nsoftware",
                                      style: TextStyle(
                                        fontSize: 15,

                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Diva",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 72,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Text(
                                      "Simplify your jewelry exhibition workflow with our\napp - effortlessly manage orders from start to finish",
                                      style: TextStyle(
                                        fontSize: 15,

                                        color: Colors.white,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              SizedBox(
                                height: ScreenSize.height!+50,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: (ScreenSize.height!/2)-150, bottom: 300),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Level up with our latest stack",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 84,
                                        color: Colors.white,

                                      ),
                                    ),
                                    SizedBox(height: 15,),
                                    Container(
                                      height: 50,
                                      width: 140,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(40)),
                                      child: Center(
                                          child: Text(
                                            "Contact us",
                                            style: TextStyle(fontWeight: FontWeight.w600),
                                          )),
                                    ),

                                  ],
                                ),
                              ),


                            ],
                          ),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),

                    // iphone image
                    Positioned(
                      top: firsttranslatingPhoneYcoord.value,
                      left: secondTranslatingPhoneXcoord.value,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity: iphoneopacity,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(45),
                            child: Stack(
                                children:[
                                  Container(
                                    height: 500,
                                    width: 248,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [Color(0xFFCD6C9A).withOpacity(0.2),Color(0xFF704DEA).withOpacity(0.2)],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0.01,1],
                                      ),
                                      borderRadius: BorderRadius.circular(45),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 45,),
                                        Text(
                                          "About Us",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:18.0,left: 30.0, right: 30.0),
                                          child: Text(
                                            "Sheen AI provides state-of-the-art technology tailor-made for the jewellery industry. Designed by jewellers for jewellers, our solutions empower you to excel in your craft",
                                            style: TextStyle(
                                              color: Colors.white,

                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom:0,
                                      child: AnimatedContainer(
                                        duration: Duration(seconds: 2),
                                        height: blueheight,
                                        width: 248,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(45),
                                        ),
                                      )
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      child: AnimatedContainer(
                                        duration: Duration(seconds: 2),
                                        height: redheight,
                                        width: 248,
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(45),
                                        ),
                                      )
                                  ),
                                  Container(
                                    height: 500,
                                    width: 250,
                                    child: Image.asset("assets/phone_img.png",fit: BoxFit.fill,),
                                  ),
                                ]
                            ),
                          ),
                        ),
                      ),
                    ),
                    // left side text
                    Positioned(
                      top: ScreenSize.height!/4,
                      left: 20,
                      child: Container(
                        height: ScreenSize.height!/2,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 1, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("open",style: TextStyle(color: Colors.white.withOpacity(0)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("order",style: TextStyle(color: Colors.white.withOpacity(orderopac)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("Ecomm",style: TextStyle(color: Colors.white.withOpacity(ecommopac)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("Chitti",style: TextStyle(color: Colors.white.withOpacity(chittiopac)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("Cortex",style: TextStyle(color: Colors.white.withOpacity(cortexopac)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("J Safe",style: TextStyle(color: Colors.white.withOpacity(jsafeopac)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: AnimatedContainer(
                                duration: Duration(seconds: 1),
                                height: 0,
                                width: 48,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.white,
                                        width: 1
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:8.0, left: 4, bottom: 8.0),
                              child: Text("Diva",style: TextStyle(color: Colors.white.withOpacity(divaopac)),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
