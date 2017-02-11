filebeat.service:
  service.running:
    - name: filebeat
    - enable: yes
    - restart: true
    - watch:
      - file: filebeat.config

