import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:high_fidelity/core/utils/app_assets.dart';

class FavoriteButton extends HookWidget {
  const FavoriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isFavorite = useState(false);

    return IconButton(
      icon: SvgPicture.asset(
        AppAssets.favoriteIcon,
        colorFilter: ColorFilter.mode(
          isFavorite.value ? Colors.red : Colors.grey,
          BlendMode.srcIn,
        ),
      ),
      onPressed: () {
        isFavorite.value = !isFavorite.value;
      },
    );
  }
}