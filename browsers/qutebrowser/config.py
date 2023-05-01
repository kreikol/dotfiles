# Configuración personalizada (no editable por Qutebrowser GUI)
# Ver doc: qute://help/configuring.html#configpy
#
# c.aliases['foo'] = 'message-info foo' to add a single value.
#
# c.url.start_pages.append("https://www.python.org/") to add a new value.
# 
# regex: r'\bvor\b' sin entrecomillar, y con la R por delante para preservar las barras
#
#
# All settings doc: qute://help/settings.html


# Configuración por dominio:
# with config.pattern('*://example.com/') as p:
#     p.content.images = False


# Cargo la config gestionada por la GUI
config.load_autoconfig()

# Pestañas
c.tabs.show = "multiple"
c.tabs.position = "top"

# Tema
config.source('themes/manjaro.py')

c.url.start_pages = ['http://google.es']


# 
# Buscadores
#------------------------------------------------------------

## Google (default)
c.url.searchengines['DEFAULT'] = 'https://google.es/search?q={}'

## Redmine
c.url.searchengines['redmine'] = 'https://redmine.g3stiona.com/redmine/issues/{}'

## Traductor Google
c.url.searchengines['tt'] = 'https://translate.google.es/?hl=es&sl=en&tl=es&text={}%0A&op=translate'
