import 'package:flutter/cupertino.dart';
import 'core/database/cache/cache_data.dart';
import 'e_commerce.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
  runApp(ECommerce());
}