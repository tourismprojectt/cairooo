import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../Specification.dart';
import 'info.dart';

class ScreenOne extends StatefulWidget {
  
  ScreenOne({Key? key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
    int _activeIndex = 0;

  List<List<Widget>> slideContainersList = [
      // Slide containers for the first set of slides (Ramses Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/ramses hilton.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/rest.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/room.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/swimming-pool-day.avif'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the second set of slides (Tolip Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/tolip.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/toliprest.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/toliproom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/swimmpool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the third set of slides (Fairmont Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmont.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmontrestt.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmontroom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmontpool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the fourth set of slides (Kempinski Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kempinski.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kemppool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kemprest.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kemproom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the fifth set of slides (Steigenberger Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steigenberger.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steighenloopy.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steighenroom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steinpool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
    ];

  @override
  
  Widget build(BuildContext context) {
    // Define the list of slide containers for each slider
    List<List<Widget>> slideContainersList = [
      // Slide containers for the first set of slides (Ramses Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/ramses hilton.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/rest.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/room.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ramsesimages/swimming-pool-day.avif'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the second set of slides (Tolip Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/tolip.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/toliprest.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/toliproom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tolipimages/swimmpool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the third set of slides (Fairmont Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmont.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmontrestt.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmontroom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/fairmonthotel/fairmontpool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the fourth set of slides (Kempinski Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kempinski.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kemppool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kemprest.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/kempinskihotel/kemproom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
      // Slide containers for the fifth set of slides (Steigenberger Hotel)
      [
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steigenberger.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steighenloopy.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steighenroom.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/steighenberghotel/steinpool.jpg'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ],
    ];

    // Prices for each set of slides
    List<List<String>> slidePrices = [
      ["\$150", "\$180", "\$200", "\$220"], // Prices for Ramses Hotel
      ["\$120", "\$150", "\$170", "\$190"], // Prices for Tolip Hotel
      ["\$200", "\$220", "\$250", "\$270"], // Prices for Fairmont Hotel
      ["\$250", "\$280", "\$300", "\$320"], // Prices for Kempinski Hotel
      ["\$180", "\$200", "\$220", "\$240"], // Prices for Steigenberger Hotel
    ];
 

    // Text descriptions for each set of slides
    List<String> slideTitles = [
      "  Ramses Hotel",
      "  Tolip Hotel",
      "  Fairmont Hotel",
      "  Kempinski Hotel",
      "  Steigenberger Hotel",
    ];

    List<String> slideDescriptions = [
      "Luxurious accommodation with stunning views and relaxing amenities.",
      "Experience comfort and convenience in the heart of the city.",
      "Where luxury meets elegance, offering top-notch services.",
      "Unparalleled luxury and impeccable service for a memorable stay.",
      "Discover sophistication and charm in every detail of your stay.",
    ];

    // Create CarouselSlider widgets for each slide container list
    List<Widget> sliders = [];
    for (int i = 0; i < slideContainersList.length; i++) {
      List<Widget> slides = [];
      for (int j = 0; j < slideContainersList[i].length; j++) {
        slides.add(slideContainersList[i][j]);
      }
      sliders.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              items: slides,
              options: CarouselOptions(
                height: 180,
                aspectRatio: 16 / 8,
                viewportFraction: 0.8,
                autoPlay: false,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.5,
                reverse: true,
                scrollDirection: Axis.horizontal,
                initialPage: 0,
                 onPageChanged: (index, reason){
                setState(() {
                  _activeIndex = index;
                });
              }
              ),
            ),
            SizedBox(height: 10),
            buildIndicator(i),
              SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 5, 59, 107),
                  ),
                  SizedBox(width: 8),
                  Text(
                    slideTitles[i],
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'MadimiOne',
                      color: Color.fromARGB(255, 83, 137, 182), // Change color to your preference
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 5, 59, 107),
                  ),
                  SizedBox(width: 8),
                  // Add animated jumping dot effect
                  JumpingDot(),
                  SizedBox(width: 8),
                  // Add animated smooth indicator
                  SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    // Handle "Add to Trip" action
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Added to Trip!'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.add_circle_outline,
                    color: Color.fromARGB(255, 13, 16, 74),
                  ),
                ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                slideDescriptions[i],
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 36, 108, 163),
                  fontFamily: 'MadimiOne',
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 5),
            // Display prices
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    Icons.attach_money,
                    color: Color.fromARGB(255, 5, 59, 107),
                  ),
                  SizedBox(width: 8),
                  Text(
                    slidePrices[i][0],
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 5, 59, 107),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '-',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 5, 59, 107),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    slidePrices[i][3],
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 5, 59, 107),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cairo',
          style: TextStyle(
            fontFamily: 'MadimiOne',
            color: Color.fromARGB(255, 121, 155, 228),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 121, 155, 228),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => FirstRoute()));
          },
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'Hotels',
              style: TextStyle(
                fontFamily: 'MadimiOne',
                color: Color.fromARGB(255, 121, 155, 230),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20), // Add some spacing between text and sliders
          ...sliders,
        ],
      ),
    );
  }

  // Animated jumping dot effect widget
// Animated jumping dot effect widget
Widget buildIndicator(int index) => Center(
  child: AnimatedSmoothIndicator(
    activeIndex: _activeIndex,
    count: slideContainersList[index].length,
    effect: WormEffect(
      dotWidth: 18,
      dotHeight: 18,
      activeDotColor: Colors.blue,
      dotColor: Color.fromARGB(255, 16, 65, 106),
    ),
  ),
);

}

// Animated jumping dot effect widget
class JumpingDot extends StatefulWidget {
  @override
  _JumpingDotState createState() => _JumpingDotState();
}

class _JumpingDotState extends State<JumpingDot> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -0.1),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Icon(
        Icons.star,
        color: Color.fromARGB(255, 87, 139, 184),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
