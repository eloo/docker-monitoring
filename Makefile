setup:
	mkdir -p data/prometheus
	chown 65534:65534 data/prometheus -R
	mkdir -p data/grafana
	chown 65534:65534 data/grafana -R
	cp -n .config.template .config
	@rand=$$(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c$${1:-32}) && sed -i -e 's/<change-this>/'$$rand'/g' .config
	