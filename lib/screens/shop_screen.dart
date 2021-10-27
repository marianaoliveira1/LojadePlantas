import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:planta/models/plant.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {

  TabController? _tabController;
  PageController? _pageController;
  int _selectedPage = 0;

  _plantSelector(int index){
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: Color(0xFF32A060),
            borderRadius: BorderRadius.circular(15.0),
          ),
          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
          child: Stack(children: [
            Center(
              child: Hero(
                tag: plants[index].imageUrl,
                child: Image(
                  height: 280.0,
                  width: 280.0,
                  image: AssetImage(
                    'assets/images/plant$index.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],),
        ),
      ],
    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 60.0),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                      Icons.menu,
                      size: 30.0,
                      color: Colors.grey
                  ),
                  Icon(
                      Icons.shopping_cart,
                      size: 30.0,
                      color: Colors.black
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'Melhores Escolhas',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              labelPadding: EdgeInsets.symmetric(horizontal: 35.0),
              isScrollable: true,
              tabs: [
                Tab(
                  child: Text(
                    'Principal',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Exterior',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Interior',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Chegou agora',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Tab(
                //   child: Text(
                //     'New Arrivals',
                //     style: TextStyle(
                //       fontSize: 16.0,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                // ),
                Tab(
                  child: Text(
                    'Edição limitada',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20.0,),
            Container(
              height: 500.0,
              width: double.infinity,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int index) {
                  setState(() {
                    _selectedPage = index;
                  });
                },
                itemCount: plants.length,
                itemBuilder: (BuildContext, int index) {
                  return _plantSelector(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
