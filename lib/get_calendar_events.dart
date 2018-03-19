import 'package:googleapis/calendar/v3.dart';
import 'dart:async';
import 'package:googleapis_auth/auth_browser.dart' as auth;
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
class GetCalendarEvents {

var id = new auth.ClientId("<264388633411-d64jql7ap17qq6u415fhioas0u7apt07.apps.googleusercontent.com>", "<yourKey>");
var scopes = [CalendarApi.CalendarScope];

  void main() {
try {
  auth.createImplicitBrowserFlow(id, scopes).then((auth.BrowserOAuth2Flow flow) {
        flow.clientViaUserConsent().then((auth.AuthClient client) {

          var calendar = new CalendarApi(client);

              String adminPanelCalendarId = 'primary';
              var event = calendar.events;
              var events = event.list(adminPanelCalendarId);
              events.then((showEvents) {
                showEvents.items.forEach((Event ev) { print(ev.summary); });
              });      


          client.close();
          flow.close();
        });
      });
}
catch(e) {print('getcalevents threw: $e');}
}
}
