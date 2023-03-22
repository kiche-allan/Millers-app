import 'package:ecommerce/functPart/maize_home.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/pages/listing_page.dart';
import 'package:ecommerce/pages/cereals/maize.dart';

class Cereals extends StatefulWidget {
  const Cereals({Key? key}) : super(key: key);

  @override
  CerealsState createState() => CerealsState();
}

class CerealsState extends State<Cereals> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 600),
  )..repeat(reverse: true);

  final List<CustomIcon> customIcons = [
    CustomIcon(name: "Maize", icon: 'assets/maize.png'),
    CustomIcon(name: "Wheat", icon: 'assets/wheat.png'),
    CustomIcon(name: "Millet", icon: 'assets/millet.png'),
    CustomIcon(name: "Rice", icon: 'assets/rice.png'),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {

        return GestureDetector(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage2()),
              );
            } else {
              _goToListingPage(context);
            }
          },
          child: Column(

            children: [
              RotationTransition(
                turns: Tween(begin: 0.0, end: 0.2).animate(_controller),
                child: Container(
                  width: 60,
                  height: 60,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .primaryContainer
                        .withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    customIcons[index].icon,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(customIcons[index].name)
            ],
            
          ),
        );

      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;
  CustomIcon({
    required this.name,
    required this.icon,
  });
}

void _goToListingPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ListingPage()),
  );
}
