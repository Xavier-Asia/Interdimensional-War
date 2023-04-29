execute if score time hunger matches 1..3600 run effect give @a hunger 2 2
scoreboard players remove time hunger 1
# 将Boss条的进度与剩余时间同步
execute store result bossbar hunger value run scoreboard players get time hunger
# 每秒执行一次 为防止由于服务器卡顿出现延迟 替换掉之前的计划
schedule function xavier:hunger_time 1s replace
# 为防止由于服务器卡顿出现延迟 支持计分在0以下时移除
execute if score time hunger matches -2147483648..0 run schedule clear xavier:hunger_time
execute if score time hunger matches -2147483648..0 run bossbar remove hunger
execute if score time hunger matches -2147483648..0 run scoreboard objectives remove hunger