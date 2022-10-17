// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'dart:convert';
import 'dart:io' as io;
import 'package:jasper_worker_v2/constants.dart';

class Utilities
{
  static void print_welcome()
  {
    print("Jasper Worker (${ Constants.VERSION })");
    print('---------------------');
    print('W: Warnings');
    print('E: Errors');
    print('I: Infos');
    print('---------------------');
  }

  static String get_secrets_file_path()
  {
    // Running compiled, file is alongside executable
    return "./${ Constants.SECRETS_FILE_NAME }";
  }

  static Future<Map<String, dynamic>?> get_user_secrets() async
  {
    bool fileExists = await (io.File(get_secrets_file_path())).exists();

    if ( fileExists )
    {
      String secrets_raw = await (io.File(get_secrets_file_path())).readAsString();
      Map<String, dynamic> user_secrets = json.decode(secrets_raw);

      return user_secrets;
    }

    return null;
  }
}