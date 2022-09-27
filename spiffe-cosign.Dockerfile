FROM gcr.io/projectsigstore/cosign:v1.13.1 as cosign-bin

FROM gcr.io/spiffe-io/spire-agent:1.2.3

COPY --from=cosign-bin /ko-app/cosign /usr/local/bin/cosign