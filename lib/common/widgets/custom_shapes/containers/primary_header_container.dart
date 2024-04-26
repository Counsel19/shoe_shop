
import 'package:flutter/material.dart';
import 'package:shop_shoes/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:shop_shoes/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:shop_shoes/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: CustomColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: CircularConatiner(
                  backgroundColor: CustomColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: CircularConatiner(
                  backgroundColor: CustomColors.textWhite.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}