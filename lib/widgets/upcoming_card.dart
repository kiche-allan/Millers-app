
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpcomingCard extends StatefulWidget {
  const UpcomingCard({Key? key}) : super(key: key);

  @override
  _UpcomingCardState createState() => _UpcomingCardState();
}

class _UpcomingCardState extends State<UpcomingCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  )..forward();

  late final Animation<Offset> _offsetAnimation =
      Tween<Offset>(begin: const Offset(0, 0.5), end: Offset.zero).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeOut));

  late final Animation<double> _fadeAnimation =
      Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
          parent: _controller,
          curve: const Interval(0, 6.7, curve: Curves.easeOut)));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          width: double.maxFinite,
          height: 170,
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/doctor_2.jpg',
                  width: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 14),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Millers and Farmers App",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    
                    "BUY AND SELL MAIZE",
                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white70,
                        ),
                  ),
                  Text(
                    
                    "We bring you together for sales",
                     style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.white70,
                        ),
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 6,
                      horizontal: 8.0,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: const [
                        Icon(
                          Ionicons.calendar_outline,
                          size: 18,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 6, right: 14),
                          child: Text(
                            "24HRS",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: Icon(
                            Ionicons.time_outline,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "MONDAY- FRIDAY",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _toggleCardExpansion() {
    if (_controller.isCompleted) {
      _controller.reverse();
    }else {
      _controller.forward();
    }
  }
}