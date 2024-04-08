import 'package:http/http.dart' as http;

void feedNow() async {
  try {
    final response =
        await http.get(Uri.parse('http://arduino-ip-address/feed'));
    if (response.statusCode == 200) {
      print('Feeding activated');
    } else {
      print('Failed to activate feeding');
    }
  } catch (e) {
    print('Error: $e');
  }
}

void scheduleFeeding() async {
  try {
    final response =
        await http.get(Uri.parse('http://arduino-ip-address/schedule'));
    if (response.statusCode == 200) {
      print('Feeding scheduled');
    } else {
      print('Failed to schedule feeding');
    }
  } catch (e) {
    print('Error: $e');
  }
}
