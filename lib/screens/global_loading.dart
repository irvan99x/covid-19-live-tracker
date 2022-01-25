import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GlobalLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        loadingCard(),
        loadingCard(),
        loadingCard(),
        loadingCard(),
        loadingLabel(),
      ],
    );
  }

  Widget loadingCard() {
    return Card(
      elevation: 1.0,
      child: Container(
        height: 100,
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: Shimmer.fromColors(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 20,
                color: Colors.white,
              ),
              Expanded(
                child: Container(),
              ),
              Container(
                width: double.infinity,
                height: 15.0,
                color: Colors.white,
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                width: double.infinity,
                height: 30.0,
                color: Colors.white,
              ),
            ],
          ),
          baseColor: Colors.grey[300],
          highlightColor: Colors.grey[100],
        ),
      ),
    );
  }

  Widget loadingLabel() {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Shimmer.fromColors(
        child: Column(
          children: [
            Container(width: 200, height: 16.0, color: Colors.white),
          ],
        ),
        baseColor: Colors.blue[300],
        highlightColor: Colors.blue[600],
      ),
    );
  }
}
