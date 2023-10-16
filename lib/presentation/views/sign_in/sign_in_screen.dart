import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:olearis_test_task/foundation/assets/assets.dart';
import 'package:olearis_test_task/foundation/localizations/localizations.dart';
import 'package:olearis_test_task/presentation/views/sign_in/sign_in_view_model.dart';

@RoutePage(name: "SignInScreenRoute")
class SignInScreen extends ConsumerWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    final bool isPortrait = size.height > size.width;

    return Scaffold(
        appBar: AppBar(
          title: const Text(LocalizationStrings.signIn),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: isPortrait ? 16.0 : 52.0),
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: SvgPicture.asset(
                        Assets.logo,
                        width: isPortrait ? double.infinity : 500,
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
                    if (isPortrait) const Spacer(),
                    ElevatedButton(
                      onPressed: ref.watch(signInProvider).credentialsAreValid
                          ? ref.read(signInProvider.notifier).login
                          : null,
                      child: const Text(LocalizationStrings.continue_),
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
