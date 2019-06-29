FROM gcr.io/cloud-marketplace/google/bazel:0.25.0 as bazel

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

WORKDIR /app
COPY . .
RUN bazel build //:test-zetasql
ENTRYPOINT []
