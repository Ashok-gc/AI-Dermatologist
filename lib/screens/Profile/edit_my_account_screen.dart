import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_gaps.dart';
import '../../utils/constants/app_images.dart';
import '../../widgets/core_widgets.dart';

class EditMyAccountScreen extends StatelessWidget {
  const EditMyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
          screenContext: context,
          hasBackButton: true,
          titleWidget: const Text('Edit account')),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget2(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top extra spaces
              AppGaps.hGap15,
              /* <---- Profile picture, name, phone number, email address
                       ----> */
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        /* <---- Profile picture ----> */
                        CircleAvatar(
                          backgroundImage: Image.asset(
                            AppAssetImages.myAccountProfilePicture,
                          ).image,
                          radius: 64,
                        ),
                        /* <---- Small camera circle icon button ----> */
                        Positioned(
                            bottom: 7,
                            right: -3,
                            child: IconButton(
                              onPressed: () {},
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(
                                  minHeight: 34, minWidth: 34),
                              icon: Container(
                                height: 34,
                                width: 34,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        const Color.fromARGB(255, 236, 131, 99),
                                    border: Border.all(color: Colors.white)),
                                child: SvgPicture.asset(
                                  AppAssetImages.cameraSVGLogoSolid,
                                  height: 14,
                                  width: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ))
                      ],
                    ),
                    AppGaps.hGap18,
                    /* <---- Profile name ----> */
                    const Text('Srinkhala Baniya',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    AppGaps.hGap8,
                    /* <---- Profile phone number ----> */
                    const Text('+977 9860914588',
                        style: TextStyle(color: AppColors.white)),
                    AppGaps.hGap5,
                    /* <---- Profile email address ----> */
                    const Text('sisanbaniya@gmail.com@gmail.com',
                        style: TextStyle(color: AppColors.white)),
                    AppGaps.hGap32,
                    CustomHorizontalDashedLineWidget(
                        color: AppColors.white.withOpacity(0.1)),
                    AppGaps.hGap5,
                    /* <---- Edit your name ----> */
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppGaps.screenPaddingValue),
                      decoration: const BoxDecoration(
                      color: AppColors.container,
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(20))),
                      
                      child: Column(
                        children: [
                          AppGaps.hGap24,
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                /* <---- Expiration date text field ----> */
                                child: CustomTextFormField(
                                  labelText: 'First Name',
                                  prefixIcon: SvgPicture.asset(
                                      AppAssetImages.profileSVGLogoLine),
                                  hintText: 'Ram',
                                  textInputType: TextInputType.text,
                                ),
                              ),
                              AppGaps.wGap10,
                              Expanded(
                                /* <---- CVV text field ----> */
                                child: CustomTextFormField(
                                  labelText: 'Last Name',
                                  prefixIcon: SvgPicture.asset(
                                      AppAssetImages.profileSVGLogoLine),
                                  hintText: 'Sharma',
                                  textInputType: TextInputType.text,
                                ),
                              )
                            ],
                          ),
                          AppGaps.hGap24,
                          /* <---- Edit your email address ----> */
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                /* <---- Expiration date text field ----> */
                                child: CustomTextFormField(
                                  labelText: 'Date of Birth',
                                  prefixIcon: SvgPicture.asset(
                                      AppAssetImages.calenderSVGLogoLine),
                                  hintText: '2000/01/01',
                                  textInputType: TextInputType.datetime,
                                ),
                              ),
                              AppGaps.wGap10,
                              Expanded(
                                /* <---- CVV text field ----> */
                                child: CustomTextFormField(
                                  labelText: 'Gender',
                                  prefixIcon: SvgPicture.asset(
                                      AppAssetImages.profileSVGLogoLine),
                                  hintText: 'Male',
                                  textInputType: TextInputType.text,
                                ),
                              )
                            ],
                          ),
                          AppGaps.hGap24,
                          /* <---- Edit your date of birth ----> */
                          CustomTextFormField(
                            labelText: 'Email address',
                            hintText: 'contact@gmail.com',
                            prefixIcon: SvgPicture.asset(
                                AppAssetImages.messageSVGLogoLine),
                          ),
                          AppGaps.hGap24,
                          /* <----  Phone number field ----> */
                          CustomTextFormField(
                            labelText: 'Phone Number',
                            hintText: '98XXXXXXXX',
                            textInputType: TextInputType.number,
                            prefixIcon: SvgPicture.asset(
                                AppAssetImages.phoneSVGLogoLine),
                          ),
                          AppGaps.hGap24,
                        ],
                      ),
                    ),
                    // AppGaps.hGap30,
                    // Bottom extra spaces
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      /* <-------- Bottom bar --------> */
      bottomNavigationBar: CustomScaffoldBottomBarWidget(
        backgroundColor: AppColors.container,
          child: CustomStretchedButtonWidget(
        onTap: () {},
        child: const Text('Save changes'),
      )),
    );
  }
}
