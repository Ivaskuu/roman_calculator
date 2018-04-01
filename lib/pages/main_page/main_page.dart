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