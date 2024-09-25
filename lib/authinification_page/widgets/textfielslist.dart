import 'package:project/authinification_page/constants/registerpage_constants.dart';
import 'package:project/authinification_page/widgets/textfields.dart';
import 'package:flutter/material.dart';

List<MyTextField> textfields = [
  MyTextField(
      obscureText: false,
      controller: kRNameController,
      icon: Icons.person_add_alt_sharp,
      label: 'First Name'),
  MyTextField(
      obscureText: false,
      controller: kRLastNameController,
      icon: Icons.person_add_alt_sharp,
      label: 'Last Name'),
  MyTextField(
      obscureText: false,
      controller: kRAgeController,
      icon: Icons.more_time,
      label: 'Age'),
  MyTextField(
      obscureText: false,
      controller: kRPhoneNumber,
      icon: Icons.phone,
      label: 'Phone Number'),
  MyTextField(
      obscureText: false,
      controller: kREmailController,
      icon: Icons.email,
      label: 'Email'),
  MyTextField(
      obscureText: true,
      controller: kRPasswordController,
      icon: Icons.lock,
      label: 'Password'),
  MyTextField(
      obscureText: true,
      controller: kRConfirmPasswordController,
      icon: Icons.lock_person_rounded,
      label: 'Confirm Password'),
  MyTextField(
      obscureText: false,
      controller: kRDescription,
      icon: Icons.description,
      label: 'Description'),
];
