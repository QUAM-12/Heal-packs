execute store result score @s c.heal.hp run data get entity @s Health
execute store result score @s c.heal.max run attribute @s generic.max_health get
    #1 fail == 최대 체력임 == 회복량이 0임
    execute if score @s c.heal matches ..0 run return 0
    execute if score @s c.heal.hp = @s c.heal.max run return 0
#현재 체력에 회복량을 더함
scoreboard players operation @s c.heal.hp += @s c.heal
    #회복량이 최대 체력을 넘어섬
    execute if score @s c.heal.hp > @s c.heal.max run function heal:edit/none
#더한 회복량
    execute store result storage heal: input float 1 run scoreboard players get @s c.heal.hp
#원래 최대 체력
    execute store result storage heal: m float 1 run scoreboard players get @s c.heal.max
#리스트로 재정렬
    data modify storage heal: max append from storage heal: m
#회복
    function heal:edit/heal with storage heal:
#블록이라면 스코어 1 추가
    execute unless block ~ ~ ~ #minecraft:command run scoreboard players remove @s c.heal.turm 1
#reset
    data remove storage heal: input
    data remove storage heal: m
#스케쥴 태그
    tag @s add c.heal
