setup:
	mkdir -p data/prometheus
	chown 65534:65534 data/prometheus -R
	mkdir -p data/grafana
	chown 65534:65534 data/grafana -R
	cp -n .config.template .config