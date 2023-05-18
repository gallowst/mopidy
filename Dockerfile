FROM alpine:edge
LABEL description="Mopidy and Jellyfin on Alpine"

RUN apk -U --no-cache add \
    libtool \
    libconfig-dev \
    alsa-lib \
    avahi \
    dbus \
    gstreamer \
    gst-plugins-base \
    gst-plugins-good \
    gst-plugins-bad \
    gst-plugins-ugly \
    py3-pip \
    python3 \
    py3-gobject3 \
    tzdata

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt \
    && rm -rf ~/.cache/pip

VOLUME ["/root/.cache/mopidy", "/root/.local/share/mopidy"]

ENV TZ=Europe/London

EXPOSE 6600 6680

ENTRYPOINT ["mopidy"]