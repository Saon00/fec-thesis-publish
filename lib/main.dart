import 'package:fecthesispublish/constants/supabase_urls.dart';
import 'package:fecthesispublish/screens/splashs/spalsh_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main(List<String> args) async {
  // await Supabase.initialize(
  //   url: SupabaseCredentials.supabaseUrl,
  //   anonKey: SupabaseCredentials.supabaseAnonKey,
  //   debug: true,
  //   // authFlowType: AuthFlowType.implicit,
  // );
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
      url: supabaseUrl,
      anonKey: supabaseAnonKey,
      authFlowType: AuthFlowType.pkce);

  // Get.put<SupabaseClient>(supabaseClient);
  // Get.put<GetStorage>(GetStorage());

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
