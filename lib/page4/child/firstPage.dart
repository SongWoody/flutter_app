import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          _buildTop(),
          _buildMiddle(),
          _buildBottom(
              [
                "공지사항1",
                "공지사항2",
                "공지사항3",
                "공지사항4",
                "공지사항5",
                "공지사항6",
                "공지사항7",
                "공지사항8",
                "공지사항9",
                "공지사항10",
                "공지사항11",
              ]
          ),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, ),
                  Text("택시"),
                ],
              ),
              Opacity(
                opacity: 0,
                child: Column(
                  children: [
                    Icon(Icons.local_taxi, ),
                    Text("택시"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return SizedBox(
      height: 200,
      child: CarouselSlider(
          options: CarouselOptions(height: 400.0, viewportFraction: 0.9),
          items: [1, 2, 3, 4, 5,].map((i) {
            return Builder(builder: (BuildContext ctx) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.red
                    ),
                    width: MediaQuery.of(ctx).size.width,
                    child: Center(child: Text("$i item"))),
              );
            });
          }).toList()),
    );
  }

  Widget _buildBottom(List<String> items) {
    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "공지 사항",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "자세히 보기",
                  style: TextStyle(color: Color(0xff33dddd)),
                ),
              )
            ],
          ),
          Divider(color: Colors.black, height: 0, thickness: 1,),
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
                  child: Text(
                    items[i],
                    style: TextStyle(fontSize: 16),
                  ),
                );
              },
              separatorBuilder: (ctx, i) {
                return Divider(color: Colors.grey, height: 0, indent: 10, endIndent: 10,);
              },
            ),
          )
        ],
      ),
    );
  }
}