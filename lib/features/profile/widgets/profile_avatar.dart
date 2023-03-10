import 'package:flutter/material.dart';
import 'package:smart_city_getx/core/extensions/extensions.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    this.onPressed,
    this.avatarUrl,
    required this.sex,
  });

  final VoidCallback? onPressed;
  final String? avatarUrl;
  final String sex;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.grey.withOpacity(0.2),
      ),
      child: SizedBox(
        width: 115,
        height: 115,
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                sex == '0'
                    ? 'assets/images/boy-normal.jpg'
                    : 'assets/images/girl-normal.jpg',
              ),
            ),
            Positioned(
              bottom: 0,
              right: -12,
              child: Container(
                alignment: Alignment.center,
                width: 46,
                height: 46,
                decoration:
                    BoxDecoration(color: context.grey5, shape: BoxShape.circle),
                child: IconButton(
                  onPressed: onPressed,
                  icon: Icon(Icons.camera_alt, color: context.grey),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
