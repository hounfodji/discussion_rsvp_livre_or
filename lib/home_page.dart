// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:diss/app_state.dart';
import 'package:diss/guest_book.dart';
import 'package:diss/src/authentication.dart';
import 'package:diss/yes_no_selection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase Meetup'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset('lib/assets/codelab.png'),
          const SizedBox(height: 8),
          const IconAndDetail(Icons.calendar_today, 'October 30'),
          const IconAndDetail(Icons.location_city, 'San Francisco'),

          // état de l'application au widget AuthFunc
          Consumer<ApplicationState>(
            builder: (context, appState, _) => AuthFunc(
                loggedIn: appState.loggedIn,
                signOut: () {
                  FirebaseAuth.instance.signOut();
                }),
          ),

          const Divider(
            height: 8,
            thickness: 1,
            indent: 8,
            endIndent: 8,
            color: Colors.grey,
          ),
          const Header("What we'll be doing"),
          const Paragraph(
            'Join us for a day full of Firebase Workshops and Pizza!',
          ),
          //
          Consumer<ApplicationState>(
  builder: (context, appState, _) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // Add from here...
      switch (appState.attendees) {
        1 => const Paragraph('1 person going'),
        >= 2 => Paragraph('${appState.attendees} people going'),
        _ => const Paragraph('No one going'),
      },
      // ...to here.
      if (appState.loggedIn) ...[
        // Add from here...
        YesNoSelection(
          state: appState.attending,
          onSelection: (attending) => appState.attending = attending,
        ),
        // ...to here.
        const Header('Discussion'),
        GuestBook(
          addMessage: (message) =>
              appState.addMessageToGuestBook(message),
          messages: appState.guestBookMessages,
        ),
      ],
    ],
  ),
),

        ],
      ),
    );
  }
}
