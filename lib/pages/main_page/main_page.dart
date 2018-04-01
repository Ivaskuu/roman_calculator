import 'package:flutter/material.dart';

class MainPage extends StatefulWidget
{
  @override
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage>
{
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold
    (
      backgroundColor: Colors.white,
      body: new Column
      (
        children: <Widget>
        [

        ],
      )
    );
  }

  int romanToArabic(String romNum)
  {
    int sum = 0;

    for(int i = 0; i < romNum.length; i++)
    {
      if(romNum[i] == 'C')
      {
        if(i+1 != romNum.length) // If not the last letter
        {
          if(romNum[i+1] == 'M')
          {
            sum += 900;
            i++;
          }
          else if(romNum[i+1] == 'D')
          {
            sum += 400;
            i++;
          }
          else sum += 100;
        }
        else sum += 100;
      }
      else if(romNum[i] == 'X')
      {
        if(i+1 != romNum.length) // If not the last letter
        {
          if(romNum[i+1] == 'C')
          {
            sum += 90;
            i++;
          }
          else if(romNum[i+1] == 'L')
          {
            sum += 40;
            i++;
          }
          else sum += 10;
        }
        else sum += 10;
      }
      else if(romNum[i] == 'I')
      {
        if(i+1 != romNum.length) // If not the last letter
        {
          if(romNum[i+1] == 'X')
          {
            sum += 9;
            i++;
          }
          else if(romNum[i+1] == 'V')
          {
            sum += 4;
            i++;
          }
          else sum += 1;
        }
        else sum += 1;
      }
      else if(romNum[i] == 'M') sum += 1000;
      else if(romNum[i] == 'D') sum += 500;
      else if(romNum[i] == 'L') sum += 50;
      else if(romNum[i] == 'V') sum += 5;
    }

    return sum;
  }

  String arabicToRoman(int arabicNum)
  {
    String romanNum = '';
    do
    {
      if(arabicNum >= 1000)
      {
        romanNum += 'M';
        arabicNum -= 1000;
      }
      else if(arabicNum >= 900)
      {
        romanNum += 'CM';
        arabicNum -= 900;
      }
      else if(arabicNum >= 500)
      {
        romanNum += 'D';
        arabicNum -= 500;
      }
      else if(arabicNum >= 400)
      {
        romanNum += 'CD';
        arabicNum -= 400;
      }
      else if(arabicNum >= 100)
      {
        romanNum += 'C';
        arabicNum -= 100;
      }
      else if(arabicNum >= 90)
      {
        romanNum += 'XC';
        arabicNum -= 90;
      }
      else if(arabicNum >= 50)
      {
        romanNum += 'L';
        arabicNum -= 50;
      }
      else if(arabicNum >= 40)
      {
        romanNum += 'XL';
        arabicNum -= 40;
      }
      else if(arabicNum >= 10)
      {
        romanNum += 'X';
        arabicNum -= 10;
      }
      else if(arabicNum >= 9)
      {
        romanNum += 'IX';
        arabicNum -= 9;
      }
      else if(arabicNum >= 5)
      {
        romanNum += 'V';
        arabicNum -= 5;
      }
      else if(arabicNum >= 4)
      {
        romanNum += 'IV';
        arabicNum -= 4;
      }
      else if(arabicNum >= 1)
      {
        romanNum += 'I';
        arabicNum -= 1;
      }
    }
    while (arabicNum > 0);

    return romanNum;
  }

  bool checkIsRomanNumber(String number)
  {
    List romanChars = [ 'I', 'V', 'X', 'L', 'C', 'D', 'M' ];

    for (int i = 0; i < number.length; i++) // Foreach letter of [number]
    {
      bool isRomanLetter = false;
      romanChars.forEach((String char) // Check if at least one letter is a roman letter
      {
        if(number[i] == char)
        {
          isRomanLetter = true;
        }
      });

      if(!isRomanLetter) return false;
    }

    return true;
  }
}