FROM bufbuild/buf:0.42.1 as buf_source

FROM thethingsindustries/protoc:development
WORKDIR /workdir
ENV XDG_CACHE_HOME=/workdir/.cache
COPY --from=buf_source /usr/local/bin/buf /usr/bin/buf
ENTRYPOINT [ "buf" ]