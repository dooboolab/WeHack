import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class PrizeBox extends StatelessWidget {
  final Key key;
  final String label;
  final String title;
  final String text;
  final Color color;
  final EdgeInsets margin;

  const PrizeBox({
    this.key,
    @required this.label,
    @required this.title,
    @required this.text,
    @required this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 401),
      margin: this.margin,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 401,
            height: 300,
            decoration: BoxDecoration(
              color: this.color,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.label,
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          color: Colors.black,
                        ),
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    this.title,
                    style: Theme.of(context).textTheme.bodyText1.merge(
                          TextStyle(
                            fontSize: 64,
                            color: Color.fromARGB(255, 92, 92, 92),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
                ),
                Text(
                  this.text,
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          color: Colors.black,
                        ),
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SectionPrize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 1088),
            margin: EdgeInsets.only(top: 28, bottom: 100),
            child: Column(
              children: [
                Text(
                  localization.trans('PRIZE'),
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, bottom: 44),
                  child: Text(
                    '총 상금 350만원의 주인공이 되세요!',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PrizeBox(
                          color: Color.fromARGB(255, 192, 239, 255),
                          label: '1등',
                          title: '200만원',
                          text: '(1팀 수상)',
                        ),
                        PrizeBox(
                          color: Color.fromARGB(255, 237, 237, 237),
                          label: '2등',
                          title: '100만원',
                          text: '(1팀 수상)',
                          margin: EdgeInsets.symmetric(horizontal: 33),
                        ),
                        PrizeBox(
                          color: Color.fromARGB(255, 231, 249, 255),
                          label: '3등',
                          title: '50만원',
                          text: '(1팀 수상)',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}