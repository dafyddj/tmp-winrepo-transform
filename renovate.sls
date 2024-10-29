{% load_yaml as versions -%}
# renovate: datasource=github-releases depName=renovate packageName=renovatebot/renovate
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
