// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    this.profileImage,
    required this.profileName,
  }) : super(key: key);

  final String? profileImage;
  final String profileName;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 121,
      child: Column(
        children: [
          profileImage != ''
              ? Image.asset(profileImage!)
              : Container(
                  width: 100,
                  height: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(
                      width: 1,
                      color: const Color.fromARGB(255, 105, 105, 105),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
          const SizedBox(
            height: 10,
          ),
          Text(
            profileName,
            style: const TextStyle(
                color: Colors.white, fontSize: 13.25, fontFamily: 'Roboto'),
          )
        ],
      ),
    );
  }
}
