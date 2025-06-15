import 'package:flutter/material.dart';

@immutable
sealed class CharacterState {}

final class CharacterInitial extends CharacterState {}

final class CharacterLodded extends CharacterState {}

final class CharacterLodding extends CharacterState {}

final class CharactertError extends CharacterState {}
