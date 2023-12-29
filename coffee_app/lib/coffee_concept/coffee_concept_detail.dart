import 'package:coffee_app/coffee_concept/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeConceptDetail extends StatelessWidget {
  const CoffeeConceptDetail({Key? key, this.coffee}) : super(key: key);
  final Coffee? coffee;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(color: Colors.black),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
            child: Hero(
              tag: "text_${coffee!.name.toString()}",
              child: Material(
                child: Text(coffee!.name.toString(),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700)),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: size.height * 0.4,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Hero(
                  tag: coffee!.name.toString(),
                  child: Image.asset(
                    coffee!.image.toString(),
                    fit: BoxFit.fitHeight,
                  ),
                )),
                Positioned(
                    left: size.width * 0.05,
                    bottom: 0,
                    child: TweenAnimationBuilder<double>(
                      tween: Tween(begin: 1.0, end: 0.0),
                      builder: (context, value, child) {
                        return Transform.translate(
                            offset: Offset(-100 * value, 240 * value),
                            child: child);
                      },
                      duration: const Duration(milliseconds: 800),
                      child: Text(
                        '\$${coffee!.price!.toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 50, 
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 0, 0, 0),
                            shadows: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 10,
                                spreadRadius: 20
                              )
                            ]
                            ),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
