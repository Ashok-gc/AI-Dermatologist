import 'package:ai_dermatologist/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback? onDeletePressed;
  final VoidCallback? onCancelPressed;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.message,
    this.onDeletePressed,
    this.onCancelPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppGaps.hGap10,
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ),
              AppGaps.hGap12,
              Center(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: AppColors.black,
                  ),
                ),
              ),
              AppGaps.hGap20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 130, // Adjust the width as desired
                    child: TextButton(
                      onPressed: onDeletePressed,
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.all(14),
                        foregroundColor: Colors.white,
                        shadowColor: AppColors.primaryColor.withOpacity(0.25),
                        backgroundColor: onCancelPressed == null
                            ? Colors.transparent
                            : AppColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(AppComponents.default2BorderRadius),
                          side: BorderSide(
                            color: onCancelPressed == null
                                ? AppColors.primaryColor.withOpacity(0.5)
                                : AppColors.primaryColor,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: const Text('Confirm'),
                    ),
                  ),
                  AppGaps.wGap15,
                  SizedBox(
                    width: 130, // Adjust the width as desired
                    child: ElevatedButton(
                      onPressed: onCancelPressed,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(14), backgroundColor: onDeletePressed == null
                            ? Colors.transparent
                            : AppColors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              const BorderRadius.all(AppComponents.default2BorderRadius),
                          side: BorderSide(
                            color: onDeletePressed == null
                                ? AppColors.primaryColor.withOpacity(0.5)
                                : AppColors.primaryColor,
                            width: 2.0,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: const Text('Cancel', style: TextStyle(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                
            ],),
            AppGaps.hGap10,
            ],
          ),
        ),
      ),
    );
  }
}
