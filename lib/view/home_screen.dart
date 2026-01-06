import 'package:fino/core/assets.dart';
import 'package:fino/export.dart';
import 'package:fino/widgets/text_widget.dart';

// homeview
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              AppColors.primary,
              AppColors.secondary,
              AppColors.background,
            ],
            stops: const [0.0, 0.2, 2.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // greeting row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 44.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.r),
                        child: Image.asset(Assets.sophie, fit: BoxFit.cover),
                      ),
                    ),
                    Gap(12.0.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: "Good Morning!",
                            color: AppColors.textPrimary,
                            size: 16.sp,
                            weight: FontWeight.bold,
                          ),
                          AppText(
                            text: "Sophie",
                            color: AppColors.textPrimary,
                            size: 14.sp,
                            weight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ),

                    Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: AppColors.background,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          Assets.notificationunfilled,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
                // continue with other UI elements
                Container(
                  height: 30.h,
                  width: 170.w,
                  margin: EdgeInsets.only(top: 20.h),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: AppColors.textSecondary,
                      width: 1.w,
                    ),
                  ),
                  child: Center(
                    child: AppText(
                      text: "Value - Performace",
                      color: AppColors.textSecondary,
                      size: 14.sp,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),

                // balance
                Gap(16.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Amount on the left
                    AppText(
                      text: "\$12,345.67",
                      color: AppColors.textPrimary,
                      size: 23.sp,
                      weight: FontWeight.bold,
                    ),
                    // Analytics and percent on the right
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          Assets.analytics,
                          color: AppColors.primary,
                        ),
                        Gap(4.0.w),
                        AppText(
                          text: "1.5%",
                          color: AppColors.primary,
                          size: 16.0.sp,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
