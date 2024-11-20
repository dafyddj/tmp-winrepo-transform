{% load_yaml as versions -%}
# renovate: datasource=github-releases depName=renovate packageName=renovatebot/renovate
- '39.21.0'
- '39.20.6'
- '39.20.5'
- '39.20.4'
- '39.20.3'
- '39.20.1'
- '39.20.0'
- '39.19.1'
- '39.19.0'
- '39.18.3'
- '39.18.2'
- '39.18.1'
- '39.18.0'
- '39.17.0'
- '39.15.4'
- '39.15.3'
- '39.15.2'
- '39.14.1'
- '39.13.1'
- '39.13.0'
- '39.12.0'
- '39.11.7'
- '39.11.5'
- '39.11.4'
- '39.11.3'
- '39.11.2'
- '39.10.2'
- '39.10.0'
- '39.9.5'
- '39.9.4'
- '39.9.3'
- '39.9.2'
- '39.9.1'
- '39.9.0'
- '39.8.0'
- '39.7.6'
- '39.7.5'
- '39.7.4'
- '39.7.3'
- '39.7.2'
- '39.7.1'
- '39.7.0'
- '39.6.0'
- '39.5.0'
- '39.4.0'
- '39.2.1'
- '39.2.0'
- '39.1.0'
- '39.0.4'
- '39.0.3'
- '39.0.2'
- '39.0.1'
- '39.0.0'
- '38.142.6'
- '38.142.5'
- '38.142.4'
- '38.142.3'
- '38.142.2'
- '38.142.0'
- '38.141.1'
- '38.140.2'
- '38.140.0'
- '38.138.6'
- '38.138.4'
- '38.138.3'
- '38.138.1'
- '38.135.1'
- '38.133.4'
{% endload -%}

renovate:
  {% for version in versions -%}
  '{{ version }}':
    full_name: Renovate
    installer: https://github.com/renovatebot/renovate/archive/refs/tags/{{ version }}.zip
    install_flags: /S
    uninstaller: '%ProgramFiles%\example\uninstall.exe'
    uninstall_flags: /S
  {% endfor -%}
