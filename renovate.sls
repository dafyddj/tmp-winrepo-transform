{% load_yaml as versions -%}
# renovate: datasource=github-releases depName=renovate packageName=renovatebot/renovate
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
