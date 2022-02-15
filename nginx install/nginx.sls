# Name: nginx.sls
# Description: Installs nginx

nginx:
# Installs the nginx package
  pkg:
    - installed

# Copy nginx conf to minion
  file.managed:
    - name: /etc/nginx/nginx.conf
    - source: salt://nginx/nginx.conf

# Checks the nginx service is running and watches the nginx.conf file
  service.running:
    - watch:
      - pkg: nginx
      - file: /etc/nginx/nginx.conf