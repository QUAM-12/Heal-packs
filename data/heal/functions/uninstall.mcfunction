scoreboard objectives remove c.heal
scoreboard objectives remove c.heal.hp
scoreboard objectives remove c.heal.max
scoreboard objectives remove c.heal.turm
#
tag @a remove c.heal
#
data remove storage heal: input
data remove storage heal: max
data remove storage heal: mx
data remove storage heal: m
#
playsound block.beacon.deactivate master @s ^ ^ ^ 1
tellraw @s ["",{"color":"red","text":"Custom Heal-packs_Ver.01"},"을 성공적으로 제거했습니다."]