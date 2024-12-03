{% load_yaml as versions -%}
# renovate: datasource=github-releases depName=renovate packageName=renovatebot/renovate
- '39.47.0'
- '39.46.1'
- '39.45.2'
- '39.45.0'
- '39.44.0'
- '39.43.0'
- '39.42.4'
- '39.42.2'
- '39.42.1'
- '39.41.0'
- '39.40.1'
- '39.39.0'
- '39.38.0'
- '39.37.1'
- '39.36.0'
- '39.34.1'
- '39.33.1'
- '39.33.0'
- '39.31.4'
- '39.31.2'
- '39.31.0'
- '39.30.0'
- '39.29.0'
- '39.28.0'
- '39.27.0'
- '39.26.3'
- '39.26.2'
- '39.26.1'
- '39.25.5'
- '39.25.3'
- '39.25.2'
- '39.25.1'
- '39.23.1'
- '39.23.0'
- '39.22.0'
- '39.21.1'
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
