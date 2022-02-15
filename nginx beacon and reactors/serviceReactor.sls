# Name: serviceReactor.sls
# Description: Reactor file to tell Salt to restart nginx service

{% if data['nginx']['running'] == False %}

# Sleep to give time for me to demo
sleep_20:
  cmd.run:
    - name: sleep 20
    
start_service:
  local.service.start:
    - tgt: {{ data['id'] }}
    - arg:
      - nginx
    - require:
      - sleep 20
{% endif %}