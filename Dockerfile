#
# thunderbird Dockerfile
#
# https://github.com/jlesage/docker-thunderbird
#

# Pull base image.
FROM jlesage/baseimage-gui:alpine-3.22-v4.8.1

# Docker image version is provided via build arg.
ARG DOCKER_IMAGE_VERSION=unknown

# Define software versions.
ARG THUNDERBIRD_VERSION=138.0-r1

# Define software download URLs.

# Define working directory.
WORKDIR /tmp

# Install Thunderbird.
RUN \
    add-pkg thunderbird=${THUNDERBIRD_VERSION}

# Install extra packages.
RUN \
    add-pkg \
        # Icons used by folder/file selection window (when saving as).
        adwaita-icon-theme \
        # A font is needed.
        font-dejavu

# Generate and install favicons.
RUN \
    APP_ICON_URL=https://github.com/jlesage/docker-templates/raw/master/jlesage/images/thunderbird-icon.png && \
    install_app_icon.sh "$APP_ICON_URL"

# Add files.
COPY rootfs/ /

# Set internal environment variables.
RUN \
    set-cont-env APP_NAME "Thunderbird" && \
    set-cont-env APP_VERSION "$THUNDERBIRD_VERSION" && \
    set-cont-env DOCKER_IMAGE_VERSION "$DOCKER_IMAGE_VERSION" && \
    true

# Define mountable directories.
VOLUME ["/config"]

# Metadata.
LABEL \
      org.label-schema.name="thunderbird" \
      org.label-schema.description="Docker container for Thunderbird" \
      org.label-schema.version="${DOCKER_IMAGE_VERSION:-unknown}" \
      org.label-schema.vcs-url="https://github.com/jlesage/docker-thunderbird" \
      org.label-schema.schema-version="1.0"
