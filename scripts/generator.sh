#!/bin/bash
flutter gen-l10n
fluttergen
dart run build_runner build clean 
dart run build_runner build --delete-conflicting-outputs