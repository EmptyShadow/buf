FROM bufbuild/buf:0.39.1 as buf_source

FROM thethingsindustries/protoc:3.11.4
WORKDIR /workdir
ENV XDG_CACHE_HOME=/workdir/.cache
COPY --from=buf_source /usr/local/bin/buf /usr/bin/buf
ENTRYPOINT [ "buf" ]
