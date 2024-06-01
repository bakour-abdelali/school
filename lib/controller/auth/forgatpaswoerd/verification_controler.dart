// import 'package:get/get.dart';
// import 'package:summarize_me_app/core/class/state_raqust.dart';
// import 'package:summarize_me_app/data/remote/forgatpaswoerd/verfay_code.dart';

// import '../../../core/funcion/head_data.dart';

// import '../../../view/auth/forget/restcode_screen.dart';

// abstract class VerificationControler extends GetxController {
//   void checkCode(String verfaycode);

//   void goToResPasowrd();
// }

// class VerificationControlerImp extends VerificationControler {
//   //late TextEditingController code;
//   String? email;
//   StateRaqust? stateRaqust;
//   VerfayCode verfayCodeRemot = VerfayCode(Get.find());
//   @override
//   void checkCode(String verfaycode) async {
//     // print(value);
//     stateRaqust = StateRaqust.Laoding;
//     update();

//     // print("-----> ");
//     var respons = await verfayCodeRemot.postData(
//         email: email!, user_verfaicode: verfaycode);

//     stateRaqust = headData(respons);

//     if (stateRaqust == StateRaqust.succes) {
//       if (respons['status'] == 'success') {
//         //data.addAll(respons);
//         Get.to(const RestCodeScreen(),
//             transition: Transition.upToDown,
//             arguments: {'email': email}); //SuccuesSignUp
//         // Get.offAndToNamed(
//         //   AppRoutes.restcode,
//         // );
//         print('${respons}');
//       } else {
//         stateRaqust = StateRaqust.fuler;
//         update();
//         print('!!!!!!!!!!!!!!!!!!!!!!!!!!!!!');
//         print('${respons}');
//         // Get.defaultDialog(
//         //     title: "waring ",
//         //     middleText: 'the email or number phont is not fud');
//       }
//     } else {
//       Get.defaultDialog(
//           title: "waring ", middleText: 'the email or number phont is not fud');
//     }
//     update();
//   }

//   void dispose() {
//     // code.dispose();
//     super.dispose();
//   }

//   @override
//   void goToResPasowrd() {
//     Get.to(
//       () => const RestCodeScreen(),
//       transition: Transition.upToDown,
//     );
//   }

//   @override
//   void onInit() {
//     print("===================================");
//     //print('${Get.arguments(["email"])}');
//     //code = TextEditingController();
//     email = Get.arguments["email"]; //arguments: {'email': email.text}
//     print("================ Finsh ===================");
//     super.onInit();
//   }
// }
