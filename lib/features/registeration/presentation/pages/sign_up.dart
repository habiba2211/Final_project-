import 'package:final_project/config/routes/routes.dart';
import 'package:final_project/core/utils/controllers.dart';
import 'package:final_project/features/registeration/presentation/widgets/field_item.dart';
import 'package:flutter/material.dart';

GlobalKey<FormState> formKey = GlobalKey<FormState>();

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SignUpScreen> {
  // File? image;
  // final imagePicker = ImagePicker();
  //
  // uploadImage() async {
  //   var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     setState(() {
  //       image = File(pickedImage.path);
  //     });
  //   } else {}
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Center(
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFieldItem(
                        txt: 'First Name',
                        controller: Controllers.nameController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                        warningMessage: 'Please Enter First Name',
                        sufIcon: null,
                        postIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'Last Name',
                        controller: Controllers.lastNameController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                        warningMessage: 'Please Enter Last Name',
                        sufIcon: null,
                        postIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'Phone Number',
                        controller: Controllers.phoneController,
                        obscureText: false,
                        textInputType: TextInputType.phone,
                        warningMessage: 'Please Enter Phone Number',
                        postIcon: null,
                        sufIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'Nationality',
                        controller: Controllers.parPhoneController,
                        obscureText: false,
                        textInputType: TextInputType.phone,
                        warningMessage: 'Please Enter Your Nationality',
                        postIcon: null,
                        sufIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'Email',
                        controller: Controllers.emailController,
                        obscureText: false,
                        textInputType: TextInputType.emailAddress,
                        warningMessage: 'Please Enter Your Email',
                        postIcon: null,
                        sufIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'Password',
                        controller: Controllers.passWordController,
                        obscureText: true,
                        textInputType: TextInputType.text,
                        warningMessage: 'Please Enter Your Password',
                        postIcon: null,
                        sufIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFieldItem(
                        txt: 'Address',
                        warningMessage: 'Please Enter Your Address',
                        controller: Controllers.noteController,
                        obscureText: false,
                        textInputType: TextInputType.text,
                        required: false,
                        postIcon: null,
                        sufIcon: null,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green.shade300,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              FocusManager.instance.primaryFocus?.unfocus();
                              Navigator.pushNamed(
                                context,
                                AppRoutes.login,
                              );
                            } else {
                              return;
                            }
                          },
                          child: const Text(
                            'Done',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('You Already have an account'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.login);
                        },
                        child: const Text(
                          ' Login Now',
                          style: TextStyle(color: Color(0xff087884)),
                        ))
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

