import 'package:flutter/material.dart';

// Define the DailyRewards widget as a StatefulWidget
class DailyRewards extends StatefulWidget {
  @override
  _DailyRewardsState createState() => _DailyRewardsState();
}

// Define the state for the DailyRewards widget
class _DailyRewardsState extends State<DailyRewards> {
  // Create a PageController with a viewportFraction to control the PageView
  final PageController _pageController = PageController(viewportFraction: 0.25);

  // List to determine which items are highlighted
  final List<bool> isHighlighted = [
    false,
    false,
    false,
    false,
    false,
    true,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Minimize the size of the column
      children: [
        // Padding for the title text
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Claim your Daily Reward",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown,
            ),
          ),
        ),
        // SizedBox to set the height of the PageView
        SizedBox(
          height: 66,
          width: 200,
          // Adjust height as needed
          child: PageView.builder(
            controller: _pageController, // Use the PageController
            itemCount: isHighlighted.length, // Number of items in the PageView
            itemBuilder: (context, index) {
              return AnimatedBuilder(
                animation:
                    _pageController, // Animate based on the PageController
                builder: (context, child) {
                  double value = 1.0;
                  if (_pageController.position.haveDimensions) {
                    value = _pageController.page! - index;
                    value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
                  }
                  return Center(
                    child: Transform.scale(
                      scale: Curves.easeOut.transform(
                        value,
                      ), // Scale the item based on its position
                      child: child,
                    ),
                  );
                },
                child: Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                    border:
                        isHighlighted[index]
                            ? Border.all(
                              color: Colors.white,
                              width: 2,
                            ) // Highlight the selected item
                            : null,
                  ),
                  child: Center(
                    child: Text(
                      "\$2\nAD",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize:
                            isHighlighted[index]
                                ? 14
                                : 12, // Adjust font size based on highlight
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
