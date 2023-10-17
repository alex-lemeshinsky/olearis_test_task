import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olearis_test_task/foundation/assets/assets.dart';
import 'package:olearis_test_task/foundation/localizations/localizations.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_model.dart';
import 'package:olearis_test_task/presentation/widgets/primary_button.dart';

@RoutePage(name: "SignInScreenRoute")
class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: AppBar(
        title: const Text(LocalizationStrings.signIn),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: isLandscape ? 52.0 : 16.0),
        child: Scrollbar(
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: SvgPicture.asset(
                        Assets.logo,
                        width: isLandscape ? 500 : double.infinity,
                      ),
                    ),
                    TextField(
                      controller:
                          ref.read(signInProvider.notifier).loginController,
                      decoration: const InputDecoration(
                        labelText: LocalizationStrings.login,
                      ),
                    ),
                    TextField(
                      controller:
                          ref.read(signInProvider.notifier).passwordController,
                      decoration: const InputDecoration(
                        labelText: LocalizationStrings.password,
                      ),
                    ),
                    if (!isLandscape) const Spacer(),
                    PrimaryButton(
                      onPressed: ref.read(signInProvider.notifier).login,
                      title: LocalizationStrings.continue_,
                      enabled: ref.watch(signInProvider).credentialsAreValid,
                      loading: ref.watch(signInProvider).loading,
                    ),
                    const SizedBox(height: 24),
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
