///
//  Generated code. Do not modify.
//  source: example/hello1/v1/hello1.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'hello1.pb.dart' as $1;
import 'hello1.pbjson.dart';

export 'hello1.pb.dart';

abstract class HelloServiceBase extends $pb.GeneratedService {
  $async.Future<$1.HelloReply> hello($pb.ServerContext ctx, $1.HelloRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'Hello': return $1.HelloRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'Hello': return this.hello(ctx, request);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => HelloServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => HelloServiceBase$messageJson;
}

