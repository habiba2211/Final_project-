import 'package:final_project/config/routes/routes.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Welcome to SignUp Page',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.home,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SignUp',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'First Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.drive_file_rename_outline,
                    //semanticLabel: 'First Name',
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.drive_file_rename_outline,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: 'Address',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.location_on,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Nationality',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.flag,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.phone_android,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                onSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    labelText: 'Enter Eimal',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    )),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                onSubmitted: (value) {
                  print(value);
                },
                onChanged: (value) {
                  print(value);
                },
                decoration: InputDecoration(
                    labelText: 'Enter password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    )),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                color: Colors.teal,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRoutes.login,
                    );
                  },
                  child: Text(
                    'Done',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  disabledColor: Colors.blue,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('You already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.login);
                      },
                      child: Text('Login Now'))
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'dart:io';
//
// import 'package:final_project/config/routes/routes.dart';
// import 'package:final_project/core/utils/controllers.dart';
// import 'package:final_project/layout/home_layout.dart';
// import 'package:flutter/material.dart';
//
// import '../widgets/field_item.dart';
//
//
// GlobalKey<FormState> formKey = GlobalKey<FormState>();
//
// class SignUpScreen extends StatefulWidget {
//   static const String routeName = 'LoginScreen';
//
//   const SignUpScreen({super.key});
//
//   @override
//   State<SignUpScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<SignUpScreen> {
//   // File? image;
//   // final imagePicker = ImagePicker();
//   //
//   // uploadImage() async {
//   //   var pickedImage = await imagePicker.pickImage(source: ImageSource.gallery);
//   //   if (pickedImage != null) {
//   //     setState(() {
//   //       image = File(pickedImage.path);
//   //     });
//   //   } else {}
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         body: Padding(
//           padding: const EdgeInsets.all(6.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 const Center(
//                   child: Text(
//                     'حساب جديد',
//                     style: TextStyle(
//                       fontSize: 25.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(
//                   height: 10.0,
//                 ),
//                 Form(
//                   key: formKey,
//                   child: Column(
//                     children: [
//                       TextFieldItem(
//                         txt: 'اسمك',
//                         controller: Controllers.nameController,
//                         obscureText: false,
//                         textInputType: TextInputType.text,
//                         warningMessage: 'من فضلك أدخل الاسم',
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       TextFieldItem(
//                         txt: 'اسم ولى الأمر',
//                         controller: Controllers.lastNameController,
//                         obscureText: false,
//                         textInputType: TextInputType.text,
//                         warningMessage: 'من فضلك أدخل اسم ولى الأمر',
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       TextFieldItem(
//                         txt: 'رقم هاتفك',
//                         controller: Controllers.phoneController,
//                         obscureText: false,
//                         textInputType: TextInputType.phone,
//                         warningMessage: 'من فضلك أدخل رقم الهاتف',
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       TextFieldItem(
//                         txt: 'رقم هاتف ولى الأمر',
//                         controller: Controllers.parPhoneController,
//                         obscureText: false,
//                         textInputType: TextInputType.phone,
//                         warningMessage: 'من فضلك أدخل رقم هاتف ولى الأمر',
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       TextFieldItem(
//                         txt: 'الإيميل',
//                         controller: Controllers.emailController,
//                         obscureText: false,
//                         textInputType: TextInputType.emailAddress,
//                         warningMessage: 'من فضلك أدخل الإيميل',
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       TextFieldItem(
//                         txt: 'كلمة المرور',
//                         controller: Controllers.passWordController,
//                         obscureText: true,
//                         textInputType: TextInputType.text,
//                         warningMessage: 'من فضلك أدخل كلمة المرور',
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       TextFieldItem(
//                         txt: 'ملاحظات',
//                         controller: Controllers.noteController,
//                         obscureText: false,
//                         textInputType: TextInputType.text,
//                         required: false,
//                       ),
//                       const SizedBox(
//                         height: 10.0,
//                       ),
//                       SizedBox(
//                         width: double.infinity,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: const Color(0xff087884),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                           ),
//                           onPressed: () {
//                             if (formKey.currentState!.validate()) {
//                               FocusManager.instance.primaryFocus?.unfocus();
//                               Navigator.pushNamed(
//                                 context,
//                                 AppRoutes.login,
//                               );
//                             } else {
//                               return;
//                             }
//                           },
//                           child: const Text(
//                             'متابعة',
//                             style: TextStyle(
//                               fontSize: 25.0,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 20.0,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text('لديك حساب بالفعل ؟ قم'),
//                     TextButton(
//                         onPressed: () {},
//                         child: InkWell(
//                           onTap: (){
//                             Navigator.pushNamed(
//                               context,
//                               AppRoutes.login,
//                             );
//                           },
//                           child: const Text(
//                             ' بتسجيل الدخول',
//                             style: TextStyle(color: Color(0xff087884)),
//                           ),
//                         ))
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
// // Center(
// //                   child: CircleAvatar(
// //                     radius: 50.0,
// //                     backgroundColor: const Color(0xff087884),
// //                     backgroundImage: image == null ? null : FileImage(image!),
// //                     child: Column(
// //                       children: [
// //                         const SizedBox(
// //                           height: 10,
// //                         ),
// //                         IconButton(
// //                           onPressed: uploadImage,
// //                           icon: const Icon(
// //                             Icons.camera_alt,
// //                           ),
// //                         ),
// //                         image == null ? const Text('أضف صورة') : const Text(''),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
