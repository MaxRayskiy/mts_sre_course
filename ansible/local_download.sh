TMP_DIR="$(mktemp -d)"
mkdir bin

wget -O "${TMP_DIR}/prometheus.tar.gz" "https://github.com/prometheus/prometheus/releases/download/v3.1.0/prometheus-3.1.0.linux-amd64.tar.gz"
tar -xzf "${TMP_DIR}/prometheus.tar.gz" -C "${TMP_DIR}"
cp -rf "${TMP_DIR}/prometheus-3.1.0.linux-amd64/prometheus" bin
cp -rf "${TMP_DIR}/prometheus-3.1.0.linux-amd64/promtool" bin

wget -O "${TMP_DIR}/alertmanager.tar.gz" "https://github.com/prometheus/alertmanager/releases/download/v0.27.0/alertmanager-0.27.0.linux-amd64.tar.gz"
tar -xzf "${TMP_DIR}/alertmanager.tar.gz" -C "${TMP_DIR}"
cp -rf "${TMP_DIR}/alertmanager-0.27.0.linux-amd64/alertmanager" bin
cp -rf "${TMP_DIR}/alertmanager-0.27.0.linux-amd64/amtool" bin

wget -O "${TMP_DIR}/blackbox_exporter.tar.gz" "https://github.com/prometheus/blackbox_exporter/releases/download/v0.25.0/blackbox_exporter-0.25.0.linux-amd64.tar.gz"
tar -xzf "${TMP_DIR}/blackbox_exporter.tar.gz" -C "${TMP_DIR}"
cp -rf "${TMP_DIR}/blackbox_exporter-0.25.0.linux-amd64/blackbox_exporter" bin

wget -O "${TMP_DIR}/node_exporter.tar.gz" "https://github.com/prometheus/node_exporter/releases/download/v1.8.1/node_exporter-1.8.1.linux-amd64.tar.gz"
tar -xzf "${TMP_DIR}/node_exporter.tar.gz" -C "${TMP_DIR}"
cp -rf "${TMP_DIR}/node_exporter-1.8.1.linux-amd64/node_exporter" bin

wget -O "${TMP_DIR}/postgres_exporter.tar.gz" "https://github.com/prometheus-community/postgres_exporter/releases/download/v0.16.0/postgres_exporter-0.16.0.linux-amd64.tar.gz"
tar -xzf "${TMP_DIR}/postgres_exporter.tar.gz" -C "${TMP_DIR}"
cp -rf "${TMP_DIR}/postgres_exporter-0.16.0.linux-amd64/postgres_exporter" bin

rm -rf "${TMP_DIR}"
