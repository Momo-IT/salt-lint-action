FROM python:3.11

LABEL "maintainer"="Roald Nefs <info@roaldnefs.com>"
LABEL "repository"="https://github.com/roaldnefs/salt-lint-action"
LABEL "homepage"="https://github.com/roaldnefs/salt-lint-action"

COPY entrypoint.sh /entrypoint.sh
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
# Install salt-lint
RUN set -eux && chmod +x /entrypoint.sh && python3 -m pip install salt-lint

ENTRYPOINT ["/entrypoint.sh"]
