window.Player = (I={}) ->
  Object.defaults I,
    class: "Player"
    width: 16
    height: 16
    color: "#E50000"

  self = GameObject(I)

  I.speed = App.width / 2

  self.on "update", (elapsedTime) ->
    I.velocity.x = 0
    I.velocity.y = 0

    if keydown.left
      I.velocity.x = -I.speed

    else if keydown.right
      I.velocity.x = I.speed

    else if keydown.up
      I.velocity.y = -I.speed

    else if keydown.down
      I.velocity.y = I.speed

  return self
