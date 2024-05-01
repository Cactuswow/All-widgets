import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const List<MenuItem> appMenuItems = [
  MenuItem(
    title: "Botones",
    subtitle: "Azucar",
    link: "/button",
    icon: Icons.radio_button_on_rounded,
  ),
  MenuItem(
    title: "Card",
    subtitle: "Una empanadita",
    link: "/card",
    icon: Icons.card_membership_rounded,
  ),
  MenuItem(
    title: "Progreso",
    subtitle: "Un progresillo... bichi",
    link: "/progress",
    icon: Icons.front_loader,
  ),
  MenuItem(
    title: "Bocadillo",
    subtitle: "Osea, literal, UNA EMPANADITA",
    link: "/snack",
    icon: Icons.food_bank,
  ),
  MenuItem(
    title: "Inpus y oupus",
    subtitle: "Verdad que yes",
    link: "/control",
    icon: Icons.input,
  ),
  MenuItem(
    title: "Sapiens Sapiens",
    subtitle: "Infinity void",
    link: "/infinity",
    icon: Icons.loop,
  ),
];
