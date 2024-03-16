import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../constants/route_path.dart';
import '../../widgets/textinput/custom_text_field.dart';
import '../../widgets/buttons/custom_elevated_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) => Center(
                    child: Container(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(1, 1))
                      ],
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                          'https://picsum.photos/${constraints.maxWidth * 0.60}/${constraints.maxHeight}'),
                      Container(
                          width: constraints.maxWidth * 0.40,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 200, vertical: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Text('Masuk',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge)),
                                const SizedBox(height: 30),
                                Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text('Email :'),
                                        const SizedBox(height: 10),
                                        customTextField(
                                            context: context,
                                            placeholder: 'Masukkan Email'),
                                        const SizedBox(height: 20),
                                        const Text('Kata Sandi :'),
                                        const SizedBox(height: 10),
                                        customTextField(
                                            context: context,
                                            placeholder: 'Masukan Kata Sandi',
                                            obsecure: true),
                                        const SizedBox(height: 30),
                                      ],
                                    )),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      customElevatedButton(
                                          title: 'Masuk',
                                          backgroundColor: Theme.of(context)
                                              .buttonTheme
                                              .colorScheme
                                              ?.primary,
                                          titleColor: Colors.white,
                                          context: context,
                                          onCallback: () =>  Navigator.pushNamed(context, RoutePath.dashboard)),
                                      const SizedBox(height: 10),
                                      customElevatedButton(
                                          title: 'Login with Google',
                                          backgroundColor: Theme.of(context)
                                              .buttonTheme
                                              .colorScheme
                                              ?.inversePrimary
                                              .withOpacity(0.2),
                                          leading: Brand(Brands.google),
                                          context: context,
                                          onCallback: () {}),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text('Belum punya akun?'),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(child: const Text('register'), onPressed: () => Navigator.pushNamed(context, RoutePath.register)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]))
                    ],
                  ),
                ))));
  }
}
