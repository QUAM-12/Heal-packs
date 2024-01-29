##스코어 보드
    scoreboard objectives add c.heal dummy
    scoreboard players add @a c.heal 0
        scoreboard players set #100 c.heal 100
        scoreboard players set #-1 c.heal -1
    scoreboard objectives add c.heal.turm dummy
    scoreboard objectives add c.heal.max dummy
    scoreboard objectives add c.heal.hp dummy
##reset
    data remove storage heal: input
    data remove storage heal: max
    data remove storage heal: mx
    data remove storage heal: m
execute as @a at @s run attribute @s generic.max_health base set 20
effect give @a instant_health 1 28 true
playsound block.beacon.activate master @s ^ ^ ^ 1
tellraw @s ["",{"color":"green","text":"Custom Heal-packs_Ver.01"},"을 성공적으로 불러왔습니다."]