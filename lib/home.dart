import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,bottomNavigationBar: FluidNavBar());
  }
}

class FluidNavBar extends StatefulWidget {
  @override
  _FluidNavBarState createState() => _FluidNavBarState();
}

class _FluidNavBarState extends State<FluidNavBar> {
  int _selectedIndex = 0;

  final List<NavItem> _navItems = [
    NavItem(Icons.home_outlined, "خانه"),
    NavItem(Icons.category_outlined, "دسته بندی"),
    NavItem(Icons.featured_play_list_outlined, "لیست"),
    NavItem(Icons.account_circle_outlined, "پروفایل"),
  ];

  void Function()? _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f7fc),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40.0), topLeft: Radius.circular(40.0)),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _navItems.map((item) {
              var index = _navItems.indexOf(item);
              return (_selectedIndex == index) ?
              InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)
                ),
                //highlightColor: Colors.grey,
                //splashColor: Colors.grey,
                onTap: (){
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        item.icon,
                        size: 29.0,
                        color: const Color(0xff6271dd),
                      ),
                      const SizedBox(width: 6.0,),
                      Text(
                        item.title,
                        maxLines: 1,
                        style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontFamily: 'IranSans',
                            color: Color(0xff6271dd),
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                        child: Builder(
                          builder: (context) {
                            return CustomPaint(
                              painter: DotWidget(),
                              size: const Size(10.0, 18.0),
                            );
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              )
                : InkWell(
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22.0)
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                //highlightColor: Colors.grey,
                //splashColor: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    item.icon,
                    size: 29.0,
                    color: Colors.grey,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class DotWidget extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = const Color(0xff05edbe)
      ..style = PaintingStyle.fill
      ..maskFilter = const MaskFilter.blur(BlurStyle.inner, 1.0);
    canvas.drawCircle(const Offset(-2, 9), 3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}

class NavItem {
  IconData icon;
  String title;

  NavItem(this.icon, this.title);
}
