# 初始化Bossbar
bossbar add ravager [{"text": "Ravager","obfuscated": true,"color": "aqua"},{"text": "-劫掠兽袭击-","obfuscated": false,"color": "red"},{"text": "Ravager","obfuscated": true,"color": "aqua"}]
bossbar set ravager color red
bossbar set ravager style notched_6
bossbar set ravager max 1
bossbar set ravager value 1
# 初始化完成后显示
bossbar set ravager players @a
# 在聊天栏广播所有人
tellraw @a {"text": "-------------------","color": "green"}
tellraw @a [{"text": "Ravager","font": "minecraft:illageralt","color": "red"},{"text": "袭击了你的基地...","color": "yellow","font": "minecraft:default"}]
tellraw @a {"text": "-------------------","color": "green"}
execute in overworld run summon ravager -1651 122 -495
execute in the_nether run summon ravager 0 100 0
execute in the_end run summon ravager 1000 59 1000
# 由于此任务为瞬时任务 在操作执行完毕后将Bossbar设置为空
# 至于为什么不在开始时就设置为空 这样有动画 更好看
bossbar set ravager value 0
schedule function xavier:clean_emergencies_ravager 60s