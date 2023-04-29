# 跨维度战争专用数据包
### 虽然此项目已完成，但由于在主要开发者及服务器的硬盘均无法找到最后的版本，数据包部分函数已缺失。
## 这是什么？
我们于3个月前开展了跨维度战争活动，玩家们会随机分配到三个维度并开始发展，2天后打开连接三个维度的传送门，游戏内唯一幸存的队伍将获得胜利。
现开源活动所用的数据包。
## 使用条件
最佳游戏版本：1.19.2

使用种子`5463448672718122382`创建新世界
## 更多信息
~~在进入游戏后会提示数据包信息及等待分队提示，此时需执行分队指令进行分队方可正式游戏。~~
内置~~3~~2个任务和2个突发事件，需手动执行指令后触发。
~~任务结束后可发放奖励，奖励形式为燃烧的潜影盒，约3秒后烧毁，奖励物品掉落。~~
最终之战开始后，新加入的玩家将被转为旁观模式。
## 突发事件
1. 所有玩家获得饥饿II
2. 在基地生成劫掠兽
## 任务
1. BUILDING EVENT
* 每个维度建设他们的城镇并由管理员打分排名，根据排名来领取对应的补给品。
* 第一名：32面包、32火药、16钻石矿、32青金石、16红石
* 第二名：20面包、24火药、10钻石矿、16青金石、10红石
* 第三名：10面包、16火药、5钻石矿、10青金石、8红石
---
2. KING ELECTION
* 通过独裁或民主选举，在规定时间内选举出该队伍的Leader。
* Leader分别给予苦力怕头颅（主世界），龙头（末地），凋零骷髅头（地狱）。
---
3. WAR PREPARATION
* 在备战期间完善自己城镇的军事设施（包括陷阱等），最后由管理打分（不公布）。
* 第一名：1附魔金苹果、4TNT、32箭、1弓、32猪排
* 第二名：1金苹果、2TNT、16箭、1弩、16猪排
* 第三名：1金苹果、1TNT、8箭、8猪排
## 指令
|描述|指令|
|-|-|
|主世界队（手动分队）|/execute as <被分队玩家> run function xavier:overworld_team|
|下界队（手动分队）|/execute as <被分队玩家> run function xavier:nether_team|
|末地队（手动分队）|/execute as <被分队玩家> run function xavier:end_team|
|劫掠兽袭击（突发事件）|/function xavier:emergencies_ravager|
|饥饿（突发事件）|/function xavier:emergencies_hunger|
|King Election（任务）|/function xavier:king_election|
|主世界 Leader（任务结果）|/execute as <主世界 Leader> run function xavier:king_overworld|
|下界 Leader（任务结果）|/execute as <下界 Leader> run function xavier:king_overworld|
|末地 Leader（任务结果）|/execute as <末地 Leader> run function xavier:king_end|
|Building Event（任务）|/function xavier:building_event|
|Building Event 第一名（任务结果）|/function xavier:building_1|
|Building Event 第二名（任务结果）|/function xavier:building_2|
|Building Event 第三名（任务结果）|/function xavier:building_3|
|War Preparation（任务）|/function xavier:war_preparation|
|War Preparation 第一名（任务结果）|/function xavier:war_1|
|War Preparation 第二名（任务结果）|/function xavier:war_2|
|War Preparation 第三名（任务结果）|/function xavier:war_3|