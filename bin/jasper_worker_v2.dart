// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'package:jasper_worker_v2/utilities.dart';
import 'dart:io' as io;

Future<void> main(List<String> arguments) async
{
  Utilities.print_welcome();

  Map<String, dynamic>? user_secrets = await Utilities.get_user_secrets();

  if ( user_secrets == null )
  {
    print("E: Cannot read contents of '${ Utilities.get_secrets_file_path() }'");
    io.exit(1);
  }

}
