import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mickey/models/CarouselImage.dart';
import 'package:mickey/models/posts.dart';
import 'package:mickey/widgets/postLayout.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageNumber = 0;
  CarouselController buttonCarouselController = CarouselController();

  desktopLandingPage(Size size) {
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/island.jpg"),
                  fit: BoxFit.cover
              )
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black54,  Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
        ),
        Positioned(
          top: 20.0,
          left: 20.0,
          right: 20.0,
          child: Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mickey Tours & Travel", style: GoogleFonts.ubuntu(color: Colors.white, fontWeight: FontWeight.bold),),
                Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(child: Text("Contact Us", style: TextStyle(color: Colors.white),)),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: size.height * 0.4,
          left: size.width * 0.1,
          child: Container(
            width: size.width * 0.6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find inspiration", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.03),),
                Text("for your next holiday", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.03),),
                SizedBox(height: 10.0,),
                Text("Explore Your World with Mickey Safaries", style: TextStyle(color: Colors.white, fontSize: size.width * 0.01),),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Text("View Offers", style: GoogleFonts.fredokaOne(color: Colors.white),),
                      onPressed: () {},
                      color: Colors.pink,
                    ),
                    SizedBox(width: 20.0,),
                    FlatButton.icon(
                      icon: Icon(Icons.call, color: Colors.white,),
                      label: Text("+254702846342", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: size.height/4,
          right: size.width*0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset("assets/instagram.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
                  SizedBox(width: 10.0,),
                  Text("Instagram", style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Image.asset("assets/twitter.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
                  SizedBox(width: 10.0,),
                  Text("Twitter", style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Image.asset("assets/fb.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
                  SizedBox(width: 10.0,),
                  Text("Facebook", style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  mobileLandingPage(Size size, String type)
  {
    return Stack(
      children: [
        Container(
          height: size.height/2,
          width: size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/island.jpg"),
                  fit: BoxFit.cover
              )
          ),
        ),
        Positioned(
          top: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            height: 80.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black54,  Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
        ),
        Positioned(
          top: 20.0,
          left: 20.0,
          right: 20.0,
          child: Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Mickey Tours & Travel", style: GoogleFonts.ubuntu(color: Colors.white, fontWeight: FontWeight.bold),),
                Container(
                  height: 30.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Center(child: Text("Contact Us", style: TextStyle(color: Colors.white),)),
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 30.0,
          left: size.width * 0.1,
          child: Container(
            width: size.width * 0.6,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Find inspiration", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.05),),
                Text("for your next holiday", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: size.width * 0.05),),
                SizedBox(height: 10.0,),
                Text("Explore Your World with Mickey Safaries", style: TextStyle(color: Colors.white, ),),
                SizedBox(height: 10.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: Text("View Offers", style: GoogleFonts.fredokaOne(color: Colors.white),),
                      onPressed: () {},
                      color: Colors.pink,
                    ),
                    SizedBox(height: 20.0,),
                    FlatButton.icon(
                      icon: Icon(Icons.call, color: Colors.white,),
                      label: Text("+254702846342", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: (size.height/2)/4,
          right: size.width*0.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/instagram.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
              SizedBox(height: 20.0,),
              Image.asset("assets/twitter.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
              SizedBox(height: 20.0,),
              Image.asset("assets/fb.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
            ],
          ),
        )
      ],
    );
  }

  mobileIntro(Size size, String type) {
    if(type == "tablet")
      {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            //height: size.height,
            //width: size.height,
            child: Row(
              children: [
                Container(
                  width: size.width/2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome to \nMickey Tours \n& Travel", style: Theme.of(context).textTheme.display2,),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        maxLines: 1000,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    height: size.height*0.7,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/mickey.jpg"),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }
    else
      {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            //height: size.height,
            //width: size.height,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome to \nMickey Tours & Travel", style: Theme.of(context).textTheme.display1,),
                      SizedBox(height: 20.0,),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                        maxLines: 1000,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: size.height*0.5,
                  width: size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/mickey.jpg"),
                          fit: BoxFit.cover
                      )
                  ),
                )
              ],
            ),
          ),
        );
      }
  }

  deskIntroduction(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.2),
      child: Container(
        //height: size.height,
        //width: size.height,
        child: Row(
          children: [
            Container(
              width: size.height/2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome to \nMickey Tours \n& Travel", style: Theme.of(context).textTheme.display2,),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    maxLines: 1000,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            SizedBox(
              width: 30.0,
            ),
            Expanded(
              child: Container(
                height: size.height*0.7,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/mickey.jpg"),
                        fit: BoxFit.cover
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  desktopLayout(Size size, String type) {
    return Scrollbar(
      showTrackOnHover: true,
      isAlwaysShown: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            desktopLandingPage(size),
            deskBody(size, type)
          ],
        ),
      ),
    );
  }
  
  mobileLayout(Size size, String type) {
    return Scrollbar(
      showTrackOnHover: true,
      isAlwaysShown: true,
      child: SingleChildScrollView(
        child: Column(
          children: [
            mobileLandingPage(size, type),
            mobileBody(size, type)
          ],
        ),
      ),
    );
  }

  mobileBody(Size size, String type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.height*0.1,),
        mobileIntro(size, type),
        SizedBox(height: size.height*0.1,),
        displayPosts(size, type),
        SizedBox(height: size.height*0.1,),
        discountInfo(size, type),
        SizedBox(height: size.height*0.1,),
        featured(size, type),
        SizedBox(height: size.height*0.1,),
        footer(size)
      ],
    );
  }

  deskBody(Size size, String type) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: size.height*0.1,),
        deskIntroduction(size),
        SizedBox(height: size.height*0.1,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width*0.1),
          child: displayPosts(size, type),
        ),
        SizedBox(height: size.height*0.1,),
        discountInfo(size, type),
        SizedBox(height: size.height*0.1,),
        featured(size, type),
        SizedBox(height: size.height*0.1,),
        footer(size)
      ],
    );
  }
  
  double getFeaturedHeight(Size size, String type) {
    if(type == "desktop")
      {
        return size.height*0.7;
      }
    else if(type == "tablet")
      {
        return size.height*0.5;
      }
    else
    {
    return size.height*0.3;
    }
  }

  featured(Size size, String type) {

    double height = getFeaturedHeight(size, type);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Featured", style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize(size, type),),),
        SizedBox(height: size.height*0.05,),
        CarouselSlider(
            items: List.generate(carousels.length, (index) {
              CarouselImage image = carousels[index];
              bool isCenter = pageNumber == index;

              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  children: [
                    Container(
                      height: height,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 3.0,
                                blurRadius: 6.0,
                                offset: Offset(2.0, 2.0)
                            )
                          ],
                          image: DecorationImage(
                              image: AssetImage(image.imageUrl),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: AnimatedContainer(
                        height: isCenter ? height/2 : 0.0,
                        duration: Duration(seconds: 1),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(5.0)),
                            gradient: LinearGradient(
                                colors: [Colors.black54, Colors.transparent],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 20.0,
                      child: AnimatedOpacity(
                        duration: Duration(seconds: 1),
                        opacity: isCenter ? 1.0 : 0.0,
                        curve: Curves.easeIn,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(image.title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10.0,),
                            Container(
                              width: size.width*0.6,
                              child: Text(
                                image.description,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.white,),),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: height,
              //aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: false,
              reverse: false,
              autoPlay: false,
              //autoPlayInterval: Duration(seconds: 3),
              //autoPlayAnimationDuration: Duration(milliseconds: 800),
              //autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              onPageChanged: onPageChanged,
              scrollDirection: Axis.horizontal,
            )
        ),
        SizedBox(height: size.height*0.05,),
        type == "desktop" || type == "tablet" ? Container(
          height: 40.0,
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 3.0,
                  blurRadius: 6.0,
                  offset: Offset(2.0, 2.0)
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_rounded, color: Colors.grey,),
                onPressed: () {
                  buttonCarouselController.previousPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                },
              ),
              Container(height: 2.0, width: 20.0,),
              Text((pageNumber+1).toString()),
              Container(height: 2.0, width: 20.0,),
              IconButton(
                icon: Icon(Icons.arrow_forward_rounded, color: Colors.grey,),
                onPressed: () {
                  buttonCarouselController.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                },
              ),
            ],
          ),
        ) : Container()
      ],
    );
  }

  onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      pageNumber = index;
    });
  }

  double fontSize(Size size, String type) {
    if(type == "mobile")
      {
        return size.width * 0.03;
      }
    else if(type == "tablet")
      {
        return size.width * 0.02;
      }
    else
      {
        return size.width * 0.015;
      }
  }

  discountInfo(Size size, String type) {
    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height/2,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.cover
              )
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          top: 0.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black26,
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          right: size.width*0.15,
          left: size.width*0.15,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Text("Discount 10-30% Off", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: fontSize(size, type)),),
              SizedBox(height: 10.0,),
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. When an unknown printer took a galley of type and scrambled it to make a type specimen book. It was popularised in the 1960s.",
                maxLines: 10,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    height: 30.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                            color: Colors.white,
                            width: 1.0
                        )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Center(child: Text("Contact Us", style: TextStyle(color: Colors.white),)),
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
  
  footer(Size size) {
    return Container(
      width: size.width,
      //height: size.height*0.15,
      decoration: BoxDecoration(
          color: Colors.grey.shade800
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 20.0,),
          Text("Mickey Tours & Travel", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/instagram.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
              SizedBox(width: 10.0,),
              Image.asset("assets/twitter.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
              SizedBox(width: 10.0,),
              Image.asset("assets/fb.png", height: 20.0, width: 20.0, fit: BoxFit.contain,),
            ],
          ),
          SizedBox(height: 10.0,),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
            maxLines: 2,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 10.0,),
        ],
      ),
    );
  }
  
  int getGridCount(String type) {
    if(type == "mobile")
      {
        return 2;
      }
    else {
      return 3;
    }
  }

  double getHeight(Size size, String type) {
    if(type == "mobile")
    {
      return size.height*0.12;
    }
    else if(type == "tablet")
      {
        return size.height*0.2;
      }
    else {
      return size.height/3;
    }
  }

  double getPadding(Size size, String type) {
    if(type == "mobile")
    {
      return 20.0;
    }
    else {
      return size.height*0.1;
    }
  }

  displayPosts(Size size, String type) {

    bool isMobile = type == "mobile" || type == "tablet";

    double height = getHeight(size, type);
    double width = size.width*0.15;

    return Padding(
      padding: EdgeInsets.all(getPadding(size, type)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isMobile
                  ? Text("Recommended", style: TextStyle(fontWeight: FontWeight.bold),)
                  : Text("Recommended", style: TextStyle(fontWeight: FontWeight.bold, fontSize: size.width*0.015),),
              Text("View All", style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          SizedBox(height:20.0),
          GridView.count(
            shrinkWrap: true,
            childAspectRatio: width/height,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: getGridCount(type),
            children: List.generate(postList.length, (index) {
              Post post = postList[index];

              return PostLayout(post: post, height: height, width: width, type: type,);
            }),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: ScreenTypeLayout(
        watch: Container(),
        mobile: mobileLayout(size, "mobile"),
        desktop: desktopLayout(size, "desktop"),
        tablet: mobileLayout(size, "tablet"),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    Offset point1 = Offset(0.0, size.height * 0.7);
    Offset point2 = Offset(size.width * 0.05, size.height * 0.82);
    Offset controlPoint2 = Offset(size.width * 0.07, size.height * 0.87);
    Offset endPoint2 = Offset(size.width * 0.15, size.height * 0.9);
    Offset controlPoint3 = Offset(size.width * 0.35, size.height);
    Offset endPoint3 = Offset(size.width * 0.4, size.height * 0.95);
    Offset point4 = Offset(size.width, size.height * 0.45);

    path.lineTo(point1.dx, point1.dy);
    path.lineTo(point2.dx, point2.dy);
    path.quadraticBezierTo(controlPoint2.dx, controlPoint2.dy, endPoint2.dx, endPoint2.dy);
    path.lineTo(endPoint2.dx, endPoint2.dy);
    path.quadraticBezierTo(controlPoint3.dx, controlPoint3.dy, endPoint3.dx, endPoint3.dy);
    path.lineTo(endPoint3.dx, endPoint3.dy);
    path.lineTo(point4.dx, point4.dy);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }

}

