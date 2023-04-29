scoreboard objectives add hunger dummy
scoreboard players set time hunger 3600
# 初始化Bossbar
bossbar add hunger [{"text": "Hunger","obfuscated": true,"color": "light_purple"},{"text": "-饥饿-","obfuscated": false,"color": "yellow"},{"text": "Hunger","obfuscated": true,"color": "light_purple"}]
bossbar set hunger color yellow
bossbar set hunger style notched_20
bossbar set hunger max 3600
bossbar set hunger value 3600
# 独立执行时间计算操作
function xavier:hunger_time
# 广播所有人
tellraw @a {"text": "-------------------","color": "light_purple"}
tellraw @a [{"text": "Hunger","font": "minecraft:illageralt","color": "red"},{"text": "咕咕咕...","color": "yellow","font": "minecraft:default"}]
tellraw @a {"text": "-------------------","color": "light_purple"}
# 初始化完成后显示
bossbar set hunger players @a