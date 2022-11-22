import 'package:flutter/material.dart';

//background
bgColor() {
  return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFF0B0808), Color(0xFFD9D9D9)]);
}

//now_playing
nowplayingColor() {
  return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFF0B0808), Color(0xFF393636)]);
}
