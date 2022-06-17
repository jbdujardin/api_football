import 'fourty_six_to_sixty.dart';
import 'ninety_one_to_one_hundred_five.dart';
import 'one_hundred_six_to_one_hundred_twenty.dart';
import 'seventy_six_to_ninety.dart';
import 'sixteen_to_thirty.dart';
import 'sixty_one_to_seventy_five.dart';
import 'thirty_one_to_fourty_five.dart';
import 'zero_to_fiveteen.dart';

class Minute {
  ZeroToFiveteen? zeroToFiveteen;
  SixteenToThirty? sixteenToThirty;
  ThirtyOneToFourtyFive? thirtyOneToFourtyFive;
  FourtySixToSixty? fourtySixToSixty;
  SixtyOneToSeventyFive? sixtyOneToSeventyFive;
  SeventySixToNinety? seventySixToNinety;
  NinetyOneToOneHundredFive? ninetyOneToOneHundredFive;
  OneHundredSixToOneHundredTwenty? oneHundredSixToOneHundredTwenty;

  Minute({
    this.zeroToFiveteen,
    this.sixteenToThirty,
    this.thirtyOneToFourtyFive,
    this.fourtySixToSixty,
    this.sixtyOneToSeventyFive,
    this.seventySixToNinety,
    this.ninetyOneToOneHundredFive,
    this.oneHundredSixToOneHundredTwenty,
  });

  factory Minute.fromJson(Map<String, dynamic> json) => Minute(
        zeroToFiveteen: json['0-15'] == null
            ? null
            : ZeroToFiveteen.fromJson(json['0-15'] as Map<String, dynamic>),
        sixteenToThirty: json['16-30'] == null
            ? null
            : SixteenToThirty.fromJson(json['16-30'] as Map<String, dynamic>),
        thirtyOneToFourtyFive: json['31-45'] == null
            ? null
            : ThirtyOneToFourtyFive.fromJson(
                json['31-45'] as Map<String, dynamic>),
        fourtySixToSixty: json['46-60'] == null
            ? null
            : FourtySixToSixty.fromJson(json['46-60'] as Map<String, dynamic>),
        sixtyOneToSeventyFive: json['61-75'] == null
            ? null
            : SixtyOneToSeventyFive.fromJson(
                json['61-75'] as Map<String, dynamic>),
        seventySixToNinety: json['76-90'] == null
            ? null
            : SeventySixToNinety.fromJson(
                json['76-90'] as Map<String, dynamic>),
        ninetyOneToOneHundredFive: json['91-105'] == null
            ? null
            : NinetyOneToOneHundredFive.fromJson(
                json['91-105'] as Map<String, dynamic>),
        oneHundredSixToOneHundredTwenty: json['106-120'] == null
            ? null
            : OneHundredSixToOneHundredTwenty.fromJson(
                json['106-120'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        '0-15': zeroToFiveteen?.toJson(),
        '16-30': sixteenToThirty?.toJson(),
        '31-45': thirtyOneToFourtyFive?.toJson(),
        '46-60': fourtySixToSixty?.toJson(),
        '61-75': sixtyOneToSeventyFive?.toJson(),
        '76-90': seventySixToNinety?.toJson(),
        '91-105': ninetyOneToOneHundredFive?.toJson(),
        '106-120': oneHundredSixToOneHundredTwenty?.toJson(),
      };
}
