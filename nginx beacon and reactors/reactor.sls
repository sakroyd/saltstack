# Name: reactor.sls
# Description: Reactor file to tell Salt to restore original index.html

fix_index_html:
  local.state.apply:
    - tgt: {{ data['id'] }}
    - arg: 
      - reactor.files.webconfigFix
      
fix_nginx_service:
  local.state.apply:
    - tgt: {{ data['id'] }}
    - arg: 
      - reactor.files.webserviceFix