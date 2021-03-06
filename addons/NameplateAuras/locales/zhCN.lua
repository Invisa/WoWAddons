local L = LibStub("AceLocale-3.0"):NewLocale("NameplateAuras", "zhCN");
L = L or {}
--@non-debug@
L["< 1min"] = "小于1分钟"
L["< 5sec"] = "小于5秒钟"
L["> 1min"] = "大于1分钟"
L["Add new spell: "] = "添加新法术:"
L["Add spell"] = "添加法术"
L["All auras"] = "所有光环"
L["Always display icons at full opacity (ReloadUI is required)"] = "始终完全不透明显示图标 (需要重新加载用户界面)"
L["Always show auras cast by myself"] = "始终显示自己释放的光环"
L["Anchor point"] = "锚点"
L["Anchor to icon"] = "锚定到图标"
L["Any"] = "任意"
L["Aura type"] = "光环类型"
L["Border thickness"] = "边框粗细"
L["BOTTOM"] = "底部"
L["BOTTOMLEFT"] = "底部左边"
L["BOTTOMRIGHT"] = "底部右边"
--[[Translation missing --]]
L["Buff"] = "Buff"
L["By aura type (de/buff) + expire time"] = "以光环类型 (减/增益) + 过期时间"
L["By expire time, ascending"] = "以过期时间,升序"
L["By expire time, descending"] = "以过期时间,降序"
L["By icon size, ascending"] = "以图标大小,升序"
L["By icon size, descending"] = "以图标大小,降序"
L["CENTER"] = "中心"
L["Check spell ID"] = [=[检查法术ID
(comma-separated)]=]
L["Circular"] = "圆形"
L["Circular with OmniCC support"] = "OmniCC 支持的圆形"
L["Circular with timer"] = "圆形计时器"
L["Click to select spell"] = "单击选择法术"
L["Curse"] = "诅咒"
--[[Translation missing --]]
L["Debuff"] = "Debuff"
L["Default icon size"] = "默认图标大小"
L["Delete all spells"] = "删除所有法术"
L["Delete spell"] = "删除法术"
--[[Translation missing --]]
L["Disabled"] = "Disabled"
L["Disease"] = "疾病"
L["Display auras on nameplates of friendly units"] = "在友方姓名板上显示光环"
L["Display auras on player's nameplate"] = "在玩家姓名板上显示光环"
L["Display tenths of seconds"] = "显示十分之一秒为单位"
L["Do you really want to delete ALL spells?"] = "你真的想要删除所有法术吗?"
L["Font"] = "字体"
L["Font scale"] = "字体缩放"
L["Font size"] = "字体大小"
L["Frame anchor:"] = "框体锚点"
L["General"] = "综合"
L["Hide Blizzard's aura frames (Reload UI is required)"] = "隐藏暴雪的光环框体 (需要重新加载用户界面)"
L["Icon anchor:"] = "图标锚点"
L["Icon borders"] = "图标边框"
L["Icon size"] = "图标大小"
L["Icon X-coord offset"] = "图标横向位移"
L["Icon Y-coord offset"] = "图标纵向位移"
--[[Translation missing --]]
L["LEFT"] = "Left"
L["Magic"] = "魔法"
L["Mode"] = "模式"
L["No"] = "否"
L["None"] = "无"
L["Only my auras"] = "仅我的光环"
L["Open profiles dialog"] = "打开配置文件"
L["Options are not available in combat!"] = "选项在战斗中不可用!"
--[[Translation missing --]]
L["options:apps:explosive-orbs:tooltip"] = [=[Show special aura above Fel Explosive's nameplates (M+ Explosive Affix)
This aura have a bright glow and default size]=]
--[[Translation missing --]]
L["options:aura-options:allow-multiple-instances"] = "Allow multiple instances of this aura"
--[[Translation missing --]]
L["options:aura-options:allow-multiple-instances:tooltip"] = [=[If this option is checked, you will see all instances of this aura, even on the same nameplate.
Otherwise you will see only one instance of this aura (the longest one)]=]
L["options:auras:add-new-spell:error1"] = [=[你应该输入法术名称而不是法术ID.
如果你想用指定ID监视法术,使用"%s"选项]=]
--[[Translation missing --]]
L["options:auras:enabled-state:tooltip"] = [=[Enables/disables aura

%s: aura will not be shown
%s: aura will be shown if you've cast it
%s: show all auras]=]
--[[Translation missing --]]
L["options:auras:enabled-state-all"] = "Enabled, show all auras"
L["options:auras:enabled-state-mineonly"] = "打开,仅显示我的光环"
L["options:auras:pvp-state-dontshowinpvp"] = "在PVP时不显示这个光环"
--[[Translation missing --]]
L["options:auras:pvp-state-indefinite"] = "Show this aura during PvP combat"
L["options:auras:pvp-state-onlyduringpvpbattles"] = "仅在PVP时显示这个光环"
--[[Translation missing --]]
L["options:category:apps"] = "Apps"
--[[Translation missing --]]
L["options:category:interrupts"] = "Interrupts"
--[[Translation missing --]]
L["options:general:always-show-my-auras:tooltip"] = [=[This is top priority filter. If you enable this feature,
your auras will be shown regardless of other filters]=]
--[[Translation missing --]]
L["options:general:error-omnicc-is-not-loaded"] = "You cannot select this option because OmniCC is not loaded!"
--[[Translation missing --]]
L["options:general:use-dim-glow"] = "Weak glow of icons"
--[[Translation missing --]]
L["options:general:use-dim-glow:tooltip"] = [=[If this option is selected you will not see constant inner and outer glow of the icons
(this option is valid only for those spells for which you explicitly turned on the glow of icons)]=]
--[[Translation missing --]]
L["options:interrupts:enable-interrupts"] = "Enable interrupt tracking"
--[[Translation missing --]]
L["options:interrupts:enable-only-during-pvp-battles"] = "Enable during PvP battles only"
--[[Translation missing --]]
L["options:interrupts:glow"] = "Icon glow"
--[[Translation missing --]]
L["options:interrupts:icon-size"] = "Icon size"
--[[Translation missing --]]
L["options:interrupts:use-shared-icon-texture"] = "Use the same texture for all interrupt spells"
--[[Translation missing --]]
L["options:selector:search"] = "Search:"
--[[Translation missing --]]
L["options:spells:appropriate-spell-ids"] = "Appropriate spell IDs:"
--[[Translation missing --]]
L["options:spells:icon-glow"] = "Show glow"
--[[Translation missing --]]
L["options:spells:icon-glow-always"] = "Show glow all the time"
--[[Translation missing --]]
L["options:spells:icon-glow-threshold"] = "Show glow if aura's remaining time is less than"
--[[Translation missing --]]
L["options:spells:show-on-friends:warning0"] = [=[Please pay attention:
You will not see this aura on friendly nameplates until you enable this option: <General> --> <Display auras on nameplates of friendly units>]=]
--[[Translation missing --]]
L["options:timer-text:min-duration-to-display-tenths-of-seconds"] = "Minimum duration to display tenths of seconds"
L["options:timer-text:scale-font-size"] = [=[缩放字体大小
根据
图标大小]=]
--[[Translation missing --]]
L["options:timer-text:text-color-note"] = [=[Text colour will change
depending on the time remaining:]=]
L["Other"] = "其他"
L["Please reload UI to apply changes"] = "请重新加载用户界面来应用更改"
L["Poison"] = "毒药"
L["Profiles"] = "配置文件"
L["Reload UI"] = "重新加载用户界面"
--[[Translation missing --]]
L["RIGHT"] = "Right"
L["Show border around buff icons"] = "在增益图标周围显示边框"
L["Show border around debuff icons"] = "在减益图标周围显示边框"
L["Show this aura on nameplates of allies"] = "在盟友的血条上显示这个光环"
L["Show this aura on nameplates of enemies"] = "在敌人的血条上显示这个光环"
L["Sort mode:"] = "排序方式:"
L["Space between icons"] = "图标间距"
L["Spell already exists (%s)"] = " (%s) 已存在"
L["Spell seems to be nonexistent"] = "法术似乎不存在"
L["Spells"] = "法术"
L["Stack text"] = "堆叠文字"
L["Text"] = "文字"
L["Text color"] = "文字颜色"
L["Texture with timer"] = "计时器材质"
L["Timer style:"] = "时间风格:"
L["Timer text"] = "计时器文字"
--[[Translation missing --]]
L["TOP"] = "Top"
--[[Translation missing --]]
L["TOPLEFT"] = "Top left"
--[[Translation missing --]]
L["TOPRIGHT"] = "Top right"
L["Unknown spell: %s"] = "未知法术: %s"
L["Value must be a number"] = "值必须是数字"
L["X offset"] = "横向位移"
L["Y offset"] = "纵向位移"
L["Yes"] = "是"

--@end-non-debug@
