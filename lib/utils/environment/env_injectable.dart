import 'package:injectable/injectable.dart';
import 'package:record_app/utils/environment/env_type_raw.dart';

const mock = Environment(mockRaw);
const debug = Environment(debugRaw);
const profile = Environment(profileRaw);
const release = Environment(releaseRaw);