#= require_tree ./objects

window.App = {}

App.width = 800
App.height = 600

window.BASE_URL = ''
window.MTIME = ''

$ ->
  window.engine = Engine
    backgroundColor: Color("pink")
    canvas: $("canvas#game").pixieCanvas()

  engine.add 'Player'
    x: App.width / 2
    y: App.height / 2

  engine.start()
