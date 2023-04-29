# 最终之战 通过trigger前往特定维度
execute as @a if score @s overworld matches 1 run function xavier:overworld
execute as @a if score @s nether matches 1 run function xavier:nether
execute as @a if score @s end matches 1 run function xavier:end
scoreboard players enable @a overworld
scoreboard players enable @a nether
scoreboard players enable @a end
gamemode spectator @a[team=]
# 来自3个月后的消息：FIXME 此处缺失最终之战前的信息显示函数及分队 缺失War Preparation活动 缺失奖励发放函数