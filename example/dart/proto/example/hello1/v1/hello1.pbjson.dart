///
//  Generated code. Do not modify.
//  source: example/hello1/v1/hello1.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import '../../types/v1/types.pbjson.dart' as $0;

const HelloRequest$json = const {
  '1': 'HelloRequest',
  '2': const [
    const {'1': 'v', '3': 1, '4': 1, '5': 11, '6': '.example.types.v1.Type', '10': 'v'},
  ],
};

const HelloReply$json = const {
  '1': 'HelloReply',
  '2': const [
    const {'1': 'Text', '3': 1, '4': 1, '5': 9, '10': 'Text'},
  ],
};

const HelloServiceBase$json = const {
  '1': 'Hello',
  '2': const [
    const {'1': 'Hello', '2': '.example.hello1.v1.HelloRequest', '3': '.example.hello1.v1.HelloReply', '4': const {}},
  ],
};

const HelloServiceBase$messageJson = const {
  '.example.hello1.v1.HelloRequest': HelloRequest$json,
  '.example.types.v1.Type': $0.Type$json,
  '.example.hello1.v1.HelloReply': HelloReply$json,
};

