import 'package:flutter/material.dart';

import '../../../theme/enums.dart';

class InitialEpisode extends StatelessWidget {
  const InitialEpisode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            right: Paddings.twenty,
            left: Paddings.twenty,
            top: Paddings.sixteen),
        child: Container(
          padding: EdgeInsets.all(Paddings.sixteen),
          decoration: BoxDecoration(
            color: AppColors.backgroundSecondary,
            borderRadius: BorderRadius.circular(Rounding.twenty),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Sizes.twenty,
                width: Sizes.oneHundred,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(Rounding.five),
                ),
              ),
              SizedBox(height: Spaces.eight),
              Container(
                height: Sizes.twenty,
                width: Sizes.oneHundredFifty,
                decoration: BoxDecoration(
                  color: AppColors.background,
                  borderRadius: BorderRadius.circular(Rounding.five),
                ),
              ),
            ],
          ),
        ));
  }
}
