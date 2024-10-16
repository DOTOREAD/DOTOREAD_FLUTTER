import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await _googleLogin(context);
          },
          child: const Text(
            'Google 로그인하기',
          ),
        ),
      ),
    );
  }

  Future<void> _googleLogin(BuildContext context) async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn(
        scopes: ['email', 'profile', 'openid'],
      );

      final GoogleSignInAccount? account = await googleSignIn.signIn();

      if (account != null) {
        log('Display Name: ${account.displayName}');
        log('Email: ${account.email}');
        log('ID: ${account.id}');

        final GoogleSignInAuthentication auth = await account.authentication;

        log('Access Token: ${auth.accessToken}');
        log('ID Token: ${auth.idToken}');
        log('Server Auth Code: ${auth.serverAuthCode}');
      }
    } catch (error) {
      log('$error');
    }
  }
}
