FROM python
WORKDIR /canvas
ADD https://github.com/skyzh/canvas_grab/archive/refs/tags/v2.2.0.tar.gz .
RUN tar xvf v2.2.0.tar.gz --strip-components=1 -C . && rm v2.2.0.tar.gz
RUN python -m pip install --upgrade pip && \
python -m pip install -r requirements.txt
RUN mkdir -p /config && mkdir -p /downloads
COPY download.sh download.sh
RUN chmod +x download.sh
ENTRYPOINT ./download.sh
