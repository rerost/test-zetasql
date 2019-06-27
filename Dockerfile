FROM gcr.io/cloud-marketplace/google/bazel:0.25.0

RUN apt-get update && \
  apt-get install -y \
  pkg-config \
  zip \
  g++ \
  zlib1g-dev \
  unzip \
  bison \
  flex \
  python \
  python3 \
  curl \
  git

RUN git clone https://github.com/google/zetasql.git zetasql

WORKDIR ./zetasql
RUN bazel build zetasql/... --sandbox_debug

