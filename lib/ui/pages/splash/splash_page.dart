import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wibuplex_app/blocs/app_cubit.dart';
import 'package:wibuplex_app/common/app_colors.dart';
import 'package:wibuplex_app/common/app_images.dart';
import 'package:wibuplex_app/common/app_lotties.dart';
import 'package:wibuplex_app/repositories/auth_repository.dart';
import 'package:wibuplex_app/ui/pages/splash/splash_navigator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_cubit.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return SplashCubit(
          navigator: SplashNavigator(context: context),
          authRepo: RepositoryProvider.of<AuthRepository>(context),
          appCubit: RepositoryProvider.of<AppCubit>(context),
        );
      },
      child: const SplashChildPage(),
    );
  }
}

class SplashChildPage extends StatefulWidget {
  const SplashChildPage({Key? key}) : super(key: key);

  @override
  State<SplashChildPage> createState() => _SplashChildPageState();
}

class _SplashChildPageState extends State<SplashChildPage> {
  late SplashCubit _splashCubit;

  @override
  void initState() {
    super.initState();
    _splashCubit = context.read<SplashCubit>();
    _splashCubit.checkLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: Container(color: Colors.white)),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.icLogoTransparent,
                  width: 200,
                ),
                const SizedBox(
                  height: 100,
                ),
                Lottie.asset(
                  AppLotties.loading,
                  height: 100,
                  width: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _splashCubit.close();
    super.dispose();
  }
}
