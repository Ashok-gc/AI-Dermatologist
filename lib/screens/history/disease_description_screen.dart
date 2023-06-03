import 'package:flutter/material.dart';

import '../../utils/constants/app_constants.dart';
import '../../utils/constants/description_data.dart';
import '../../widgets/core_widgets.dart';
import '../../widgets/screen_widgets/disease_description_widget.dart';

class DiseaseDescriptionScreen extends StatelessWidget {
  const DiseaseDescriptionScreen({Key? key}) : super(key: key);

  /// Get delivered order stepper widget based on current order status
  Widget _title(String title) {
    switch (title) {
      case DescriptionData.title:
        return const StepperEnabledWidget(
            topicText: 'Disease',
            topicDescriptionText: [
              'Seborrheic Keratosis (ICD-10: L82) is a common noncancerous skin growth.It appears as waxy, elevated lesions on the skins surface.',
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Disease',
            topicDescriptionText: [
              'Seborrheic Keratosis (ICD-10: L82) is a common noncancerous skin growth.It appears as waxy, elevated lesions on the skins surface.',
            ]);
    }
  }

  /// Get processing order stepper widget based on current order status
  Widget _predisposingFactors(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
        return const StepperEnabledWidget(
          topicText: 'Predisposing Factors:',
          topicDescriptionText: [
            'Advancing age',
            'Genetic predisposition',
            'Excessive sun exposure over time'
          ],
        );
      default:
        return const StepperDisabledWidget(
          topicText: 'Predisposing Factors:',
          topicDescriptionText: [
            'Advancing age',
            'Genetic predisposition',
            'Excessive sun exposure over time'
          ],
        );
    }
  }

  /// Get confirmed order stepper widget based on current order status
  Widget _diagnostics(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
        return const StepperEnabledWidget(
            topicText: 'Diagnostics',
            topicDescriptionText: [
              'Visual examination by a healthcare   professional.',
              'Biopsy may be performed for confirmation.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Diagnostics',
            topicDescriptionText: [
              'Visual examination by a healthcare   professional.',
              'Biopsy may be performed for confirmation.'
            ]);
    }
  }

  /// Get pending order stepper widget based on current order status
  Widget _symptoms(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Symptoms',
            topicDescriptionText: [
              'Raised, waxy, and rough lesions on the skin.',
              'Color varies from light tan to dark brown or black.',
              'Size can range from a few millimeters to several centimeters.',
              'Lesions are usually painless but may cause itching or irritation.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Symptoms',
            topicDescriptionText: [
              'Raised, waxy, and rough lesions on the skin.',
              'Color varies from light tan to dark brown or black.',
              'Size can range from a few millimeters to several centimeters.',
              'Lesions are usually painless but may cause itching or irritation.'
            ]);
    }
  }

  /// Get placed order stepper widget based on current order status
  Widget _dermatoscopicDescription(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.dermatoscopicDescription:
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Dermatoscopic Description',
            topicDescriptionText: [
              'Dermatoscopy is a non-invasive technique using a dermatoscope.',
              'Seborrheic Keratosis shows characteristic features under dermatoscopy.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Dermatoscopic Description',
            topicDescriptionText: [
              'Dermatoscopy is a non-invasive technique using a dermatoscope.',
              'Seborrheic Keratosis shows characteristic features under dermatoscopy.'
            ]);
    }
  }

  Widget _differentialDiagnosis(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.differentialDiagnosis:
      case DescriptionData.dermatoscopicDescription:
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Differential Diagnosis:',
            topicDescriptionText: [
              'Differentiating Seborrheic Keratosis from other skin conditions, such as melanoma or basal cell carcinoma.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Differential Diagnosis:',
            topicDescriptionText: [
              'Differentiating Seborrheic Keratosis from other skin conditions, such as melanoma or basal cell carcinoma.'
            ]);
    }
  }

  Widget _risks(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.risks:
      case DescriptionData.differentialDiagnosis:
      case DescriptionData.dermatoscopicDescription:
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Risks',
            topicDescriptionText: [
              'Seborrheic Keratosis is generally benign and does not pose significant health risks.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Risks',
            topicDescriptionText: [
              'Seborrheic Keratosis is generally benign and does not pose significant health risks.'
            ]);
    }
  }

  Widget _tactics(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.tactics:
      case DescriptionData.risks:
      case DescriptionData.differentialDiagnosis:
      case DescriptionData.dermatoscopicDescription:
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Tactics',
            topicDescriptionText: [
              'Regular self-examination of the skin to detect any changes in existing growths or the development of new lesions.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Tactics',
            topicDescriptionText: [
              'Regular self-examination of the skin to detect any changes in existing growths or the development of new lesions.'
            ]);
    }
  }

  Widget _treatment(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.treatment:
      case DescriptionData.tactics:
      case DescriptionData.risks:
      case DescriptionData.differentialDiagnosis:
      case DescriptionData.dermatoscopicDescription:
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Treatment',
            topicDescriptionText: [
              'Treatment is not always necessary, as Seborrheic Keratosis is benign.',
              'Options include cryotherapy, curettage, electrocautery, and laser therapy.',
              'Surgical excision may be performed for larger or symptomatic lesions.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Treatment',
            topicDescriptionText: [
              'Treatment is not always necessary, as Seborrheic Keratosis is benign.'
                  'Options include cryotherapy, curettage, electrocautery, and laser therapy.',
              'Surgical excision may be performed for larger or symptomatic lesions.'
            ]);
    }
  }

  Widget _prevention(String descriptionStatus) {
    switch (descriptionStatus) {
      case DescriptionData.prevention:
      case DescriptionData.treatment:
      case DescriptionData.tactics:
      case DescriptionData.risks:
      case DescriptionData.differentialDiagnosis:
      case DescriptionData.dermatoscopicDescription:
      case DescriptionData.title:
      case DescriptionData.predisposingFactors:
      case DescriptionData.diagnostics:
      case DescriptionData.symptoms:
        return const StepperEnabledWidget(
            topicText: 'Prevention',
            topicDescriptionText: [
              'Protection from excessive sun exposure, including using sunscreen and wearing protective clothing.',
              'Regular skin checks by a healthcare professional to monitor any changes in the skin.'
            ]);
      default:
        return const StepperDisabledWidget(
            topicText: 'Prevention',
            topicDescriptionText: [
              'Protection from excessive sun exposure, including using sunscreen and wearing protective clothing.',
              'Regular skin checks by a healthcare professional to monitor any changes in the skin.'
            ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Current order status set to delivered for demo purpose
    const String descriptionStatus = DescriptionData.title;
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      /* <-------- Appbar --------> */
      appBar: CoreWidgets.appBarWidget(
        screenContext: context,
        titleWidget: const Text(''),
      ),
      /* <-------- Content --------> */
      body: CustomScaffoldBodyWidget2(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top extra spaces
              AppGaps.hGap10,
              const Center(
                child: Text(
                  'Disease Description',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              AppGaps.hGap15,
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppGaps.screenPaddingValue,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.container3,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top extra spaces
                    AppGaps.hGap25,
                    /* <---- Order product name ----> */
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Seborrheic Keratosics',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                            Text(
                              '(ICD-10: L82.1)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    AppGaps.hGap24,
                    /* <---- Order placed status ----> */
                    _title(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order placed status ----> */
                    _predisposingFactors(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order pending status ----> */
                    _diagnostics(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order confirmed status ----> */
                    _symptoms(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order processing status ----> */
                    _dermatoscopicDescription(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order delivered status ----> */
                    _differentialDiagnosis(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order delivered status ----> */
                    _risks(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order delivered status ----> */
                    _tactics(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order delivered status ----> */
                    _treatment(descriptionStatus),
                    AppGaps.hGap15,
                    /* <---- Order delivered status ----> */
                    _prevention(descriptionStatus),
                    // Bottom extra spaces
                    AppGaps.hGap30,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
