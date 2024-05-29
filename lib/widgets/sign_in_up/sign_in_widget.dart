import 'package:flutter/material.dart';
import 'package:usound/assets/colors.dart';
import 'package:usound/assets/fonts.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  var _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Login to your account',
            style: textLargeStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'hudson0123@gmail.com',
              hintStyle: const TextStyle(color: hintTextColor),
              label: const Text('Email'),
              labelStyle: const TextStyle(
                color: hintTextColor,
              ),
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white,
              filled: true,
            ),
            validator: (value) {
              if (value != null || value!.isNotEmpty) {
                return null;
              }
              return 'Email không hợp lệ!';
            },
          ),
          const SizedBox(height: 20),
          TextFormField(
            obscureText: _passwordVisible,
            decoration: InputDecoration(
              hintText: 'Enter your password',
              hintStyle: const TextStyle(
                color: hintTextColor,
              ),
              label: const Text('Password'),
              labelStyle: const TextStyle(
                color: hintTextColor,
              ),
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              fillColor: Colors.white,
              filled: true,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
                icon: _passwordVisible
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || value.trim().length < 8) {
                return 'Vui lòng nhập khẩu trên 8 chữ số!';
              }
              return null;
            },
          ),
          //Căn chỉnh trong column
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(0),
                animationDuration: Duration.zero,
              ),
              onPressed: () {},
              child: Text(
                'Forget password?',
                style: textSmallStyle.copyWith(
                  color: subtitleColor,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: subtitleColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Sign in',
              style: textNormalStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
