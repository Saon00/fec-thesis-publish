import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = "https://vxrnxqqdeeymkucsobeq.supabase.co";
const String supabaseAnonKey =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ4cm54cXFkZWV5bWt1Y3NvYmVxIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTE3NjY3ODcsImV4cCI6MjAwNzM0Mjc4N30.6mwp8YN1JBuIpBjhi42CqTYSp7wiHUHa3yXdRoyo-ks";
const String emailRedirect = "io.supabase.flutterquickstart://login-callback/";

final supabaseClient = SupabaseClient(supabaseUrl, supabaseAnonKey);
final supabase = Supabase.instance.client;
