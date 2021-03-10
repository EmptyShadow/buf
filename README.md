# docker buf = buf + protoc

Combining two docker images [buf](https://github.com/bufbuild/buf/blob/master/Dockerfile.buf) and [docker protoc](https://github.com/TheThingsIndustries/docker-protobuf) for more convenient use of the buf utility.

You do not need to install buf locally together with protoc and buf, compilation and installation of utilities and plugins for protoc tool.

Use buf:

```console
$ docker run --rm -u $(id -u):$(id -g) -v $(pwd):/workdir emptyshadow/buf generate -v
DEBUG   get_ref {"duration": "14.653µs"}
DEBUG   get_config      {"duration": "322.937µs"}
DEBUG   get_module_config       {"duration": "437.92µs"}
DEBUG   parse   {"duration": "1.71776ms"}
DEBUG   get_image       {"duration": "25.477µs"}
DEBUG   build   {"duration": "1.957583ms"}
DEBUG   build_module    {"duration": "1.969741ms"}
DEBUG   plugin_proxy    {"duration": "152.559606ms", "plugin": "protoc-gen-gogoslick"}
DEBUG   plugin_proxy    {"duration": "155.108034ms", "plugin": "protoc-gen-gogoslick"}
DEBUG   plugin_proxy    {"duration": "146.876787ms", "plugin": "protoc-gen-go-grpc"}
DEBUG   plugin_proxy    {"duration": "151.092262ms", "plugin": "protoc-gen-go-grpc"}
DEBUG   plugin_proxy    {"duration": "190.663413ms", "plugin": "protoc-gen-grpc-gateway"}
DEBUG   plugin_proxy    {"duration": "192.962413ms", "plugin": "protoc-gen-grpc-gateway"}
DEBUG   plugin_proxy    {"duration": "11.088696ms", "plugin": "protoc-gen-dart"}
DEBUG   plugin_proxy    {"duration": "12.084885ms", "plugin": "protoc-gen-dart"}
DEBUG   command {"duration": "517.607309ms"}
```

Update buf dependencies:

```console
$ docker run --rm -u $(id -u):$(id -g) -v $(pwd):/workdir emptyshadow/buf beta mod update -v
DEBUG   get_config      {"duration": "1.167881ms"}
DEBUG   grpcclient      dial    {"address": "dns:///api.buf.build"}
DEBUG   buf.alpha.registry.v1alpha1.ResolveService.GetModulePins        {"duration": "2.996946589s", "FailFast": true, "Client": true}
DEBUG   command {"duration": "3.047764317s"}
```

Use protoc:

```console
$ docker run --rm -u $(id -u):$(id -g) -v $(pwd):/workdir --entrypoint protoc emptyshadow/buf --version
libprotoc 3.13.0
```
