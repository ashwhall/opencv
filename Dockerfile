FROM emscripten/emsdk:3.1.29

# Install Python and cmake
RUN apt-get update \
    && apt-get install -y \
    python3 \
    python3-pip \
    cmake \
    && rm -rf /var/lib/apt/lists/*

# Set Python alias
RUN ln -s /usr/bin/python3 /usr/bin/python

ENV EMSCRIPTEN=/emsdk/upstream/emscripten

COPY . /code

CMD ["/bin/bash"]
