import 'package:flutter/material.dart';

class DailyExpense {
  final IconData icon;
  final String title;
  final String amount;
  final String time;
  final Color color;
  DailyExpense({
    required this.title,
    required this.icon,
    required this.time,
    required this.amount,
    required this.color,
  });
}

List<DailyExpense> dailyExpenseList = [
  DailyExpense(
    title: "NetBanking",
    icon: Icons.account_balance,
    time: "Today",
    amount: "365.89",
    color: Color(0xfff95e5b),
  ),
  DailyExpense(
    title: "Food & Drinks",
    icon: Icons.fastfood,
    time: "02 Apr 2025",
    amount: "165.99",
    color: Color(0xfffbb41a),
  ),
  DailyExpense(
    title: "Clothes",
    icon: Icons.checkroom,
    time: "30 Mar 2025",
    amount: "65.09",
    color: Color(0xff35c999),
  ),
];

class WishList {
  final IconData icon;
  final String title;
  final Color color;

  WishList({required this.icon, required this.title, required this.color});
}

List<WishList>wishList=[
  WishList(icon:Icons.coffee, title: "Tea", color: Color(0xff2c62ff)),
  WishList(icon:Icons.fitness_center, title: "Gym", color: Color(0xff35c999)),
  WishList(icon:Icons.two_wheeler, title: "Bike", color: Color(0xfffbb41a)),
  WishList(icon:Icons.savings, title: "Saving", color: Color(0xfff95e5b)),
  WishList(icon:Icons.movie, title: "Movies", color: Color(0xff34afff)),
];
