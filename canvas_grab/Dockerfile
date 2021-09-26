FROM python
WORKDIR /canvas
ADD https://github.com/skyzh/canvas_grab/archive/refs/tags/v2.2.0.tar.gz .
COPY download.sh download.sh
RUN tar xvf v2.2.0.tar.gz --strip-components=1 -C . \
    && rm v2.2.0.tar.gz && python -m pip install --upgrade pip \
    && python -m pip install -r requirements.txt \
    && mkdir -p /config && mkdir -p /downloads \
    && chmod +x download.sh
ENTRYPOINT ./download.sh
