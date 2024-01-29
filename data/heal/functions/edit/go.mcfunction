tag @s remove c.heal
scoreboard players reset @s c.heal.turm
#
data modify storage heal: mx set from storage heal: max[0]
data remove storage heal: max[0]
#
function heal:edit/list with storage heal: