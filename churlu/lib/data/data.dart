import 'package:flat_icons_flutter/flat_icons_flutter.dart';
import 'package:flutter/material.dart';

class Category {
  final String name;
  final Icon icon;
  final String title;

  const Category({
    @required this.name,
    @required this.icon,
    @required this.title,
  });
}

final List<Category> categoryList = const [
  Category(name: 'Furniture', icon: Icon(FlatIcons.home), title: 'Furniture'),
  Category(
      name: 'Farming Land & Equipment',
      icon: Icon(FlatIcons.home),
      title: 'Farming Land & Equipment'),
  Category(
      name: 'Party/Wedding Clothing',
      icon: Icon(FlatIcons.home),
      title: 'Party/Wedding Clothing'),
  Category(
      name: 'Commercial & Heavy Vehicles',
      icon: Icon(FlatIcons.home),
      title: 'Commercial & Heavy Vehicles'),
  Category(name: 'Vehicles', icon: Icon(FlatIcons.home), title: 'Vehicles'),
  Category(
      name: 'Sports & Adventure',
      icon: Icon(FlatIcons.home),
      title: 'Sports & Adventure'),
  Category(
      name: 'Camping/Outdoor',
      icon: Icon(FlatIcons.home),
      title: 'Camping/Outdoor'),
  Category(
      name: 'Real-Estate & Space',
      icon: Icon(FlatIcons.home),
      title: 'Real-Estate & Space'),
  Category(
      name: 'Vacation Rentals',
      icon: Icon(FlatIcons.home),
      title: 'Vacation Rentals'),
  Category(
      name: 'Music and Entertainment',
      icon: Icon(FlatIcons.home),
      title: 'Music and Entertainment'),
  Category(
      name: 'Home Appliances',
      icon: Icon(FlatIcons.home),
      title: 'Home Appliances'),
  Category(
      name: 'Computers Electronics',
      icon: Icon(FlatIcons.home),
      title: 'Computers Electronics'),
  Category(name: 'Tools', icon: Icon(FlatIcons.home), title: 'Tools'),
  Category(name: 'Employment', icon: Icon(FlatIcons.home), title: 'Employment'),
  Category(
      name: 'Freelancer & Tradesman',
      icon: Icon(FlatIcons.home),
      title: 'Freelancer & Tradesman'),
  Category(name: 'Services', icon: Icon(FlatIcons.home), title: 'Services'),
];
