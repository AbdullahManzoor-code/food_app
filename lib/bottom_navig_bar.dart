import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/item_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(initialPage: 0);

  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      const Item_screen(),
      Page1(
        controller: (_controller),
      ),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: AlwaysScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: Colors.black,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 28.0,
              notchColor: Colors.black87,
              removeMargins: false,
              bottomBarWidth: MediaQuery.of(context).size.width,
              showShadow: false,
              durationInMilliSeconds: 300,
              itemLabelStyle:
                  const TextStyle(fontSize: 10, color: Colors.white),
              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  itemLabel: 'Home',
                ),
                BottomBarItem(
                  inActiveItem: Icon(Icons.shopping_cart, color: Colors.grey),
                  activeItem: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  itemLabel: 'CART',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.wallet,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.wallet,
                    color: Colors.white,
                  ),
                  itemLabel: 'Wallet',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
              ],
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
              kIconSize: 24.0,
            )
          : null,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key, required NotchBottomBarController controller});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("page1")],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("page2")],
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text("page3")],
    );
  }
}
