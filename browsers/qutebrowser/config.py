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

# Tamaño de letra
c.fonts.default_size = "14pt"
c.fonts.web.size.default = 14
c.zoom.default = 125

c.url.start_pages = ['http://google.es']


# 
# Buscadores
#------------------------------------------------------------

## Google (default)
c.url.searchengines['DEFAULT'] = 'https://google.es/search?q={}'

## Redmine
c.url.searchengines['redmine'] = 'https://redmine.g3stiona.com/redmine/issues/{}'

## Nexus
c.url.searchengines['nx'] = 'http://ee-nexus.g3stiona.com:8081/nexus/#browse/search=keyword%3D{}'

## Traductor Google
c.url.searchengines['tt'] = 'https://translate.google.es/?hl=es&sl=en&tl=es&text={}%0A&op=translate'

## Atareao
c.url.searchengines['at'] = 'https://atareao.es/?s={}'
