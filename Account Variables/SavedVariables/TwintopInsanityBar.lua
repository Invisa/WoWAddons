
TwintopInsanityBarSettings = {
	["hasteApproachingThreshold"] = 135,
	["audio"] = {
		["s2mDeath"] = {
			["enabled"] = true,
			["sound"] = "Interface\\Addons\\TwintopInsanityBar\\wilhelm.ogg",
			["soundName"] = "Wilhelm Scream (TIB)",
		},
		["mindbender"] = {
			["sound"] = "Interface\\Addons\\TwintopInsanityBar\\BoxingArenaSound.ogg",
			["soundName"] = "Boxing Arena Gong (TIB)",
		},
	},
	["voidEruptionThreshold"] = true,
	["hasteThreshold"] = 140,
	["displayText"] = {
		["fontFaceLock"] = true,
		["fontSizeLock"] = true,
		["right"] = {
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 18,
			["inVoidformText"] = "{$casting}[$casting + ]{$passive}[$passive + ]$insanity%",
			["fontFaceName"] = "Friz Quadrata TT",
			["outVoidformText"] = "{$casting}[$casting + ]{$passive}[$passive + ]$insanity%",
		},
		["left"] = {
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 18,
			["inVoidformText"] = "$haste% - $vfStacks (+$vfIncoming) VF",
			["fontFaceName"] = "Friz Quadrata TT",
			["outVoidformText"] = "$haste%",
		},
		["middle"] = {
			["fontFace"] = "Fonts\\FRIZQT__.TTF",
			["fontSize"] = 18,
			["inVoidformText"] = "$vfTime sec - $vfDrain/sec ",
			["fontFaceName"] = "Friz Quadrata TT",
			["outVoidformText"] = "{$liStacks}[$liStacks LI - $liTime sec]",
		},
	},
	["ttd"] = {
		["numEntries"] = 50,
		["sampleRate"] = 0.2,
	},
	["thresholdWidth"] = 2,
	["auspiciousSpiritsTracker"] = true,
	["summary"] = {
		["show"] = false,
		["simple"] = false,
	},
	["colors"] = {
		["threshold"] = {
			["under"] = "FFFFFFFF",
			["over"] = "FF00FF00",
			["mindbender"] = "FFFF11FF",
		},
		["text"] = {
			["passiveInsanity"] = "FFDF00FF",
			["hasteBelow"] = "FFFFFFFF",
			["right"] = "FFFFFFFF",
			["left"] = "FFFFFFFF",
			["hasteAbove"] = "FF00FF00",
			["castingInsanity"] = "FFFFFFFF",
			["hasteApproaching"] = "FFFFFF00",
			["currentInsanity"] = "FFC2A3E0",
			["middle"] = "FFFFFFFF",
		},
		["bar"] = {
			["flashPeriod"] = 0.5,
			["inVoidform2GCD"] = "FFFFFF00",
			["enterVoidform"] = "FF5C2F89",
			["border"] = "FF431863",
			["inVoidform1GCD"] = "FFFF0000",
			["inVoidform"] = "FF431863",
			["passive"] = "FFDF00FF",
			["casting"] = "FFFFFFFF",
			["flashAlpha"] = 0.7,
			["background"] = "66000000",
			["base"] = "FF763BAF",
			["flashEnabled"] = true,
		},
	},
	["displayBar"] = {
		["alwaysShow"] = false,
		["notZeroShow"] = true,
	},
	["hastePrecision"] = 2,
	["textures"] = {
		["passiveBarName"] = "Blizzard",
		["castingBar"] = "Interface\\TargetingFrame\\UI-StatusBar",
		["borderName"] = "1 Pixel",
		["border"] = "Interface\\Buttons\\WHITE8X8",
		["insanityBar"] = "Interface\\TargetingFrame\\UI-StatusBar",
		["backgroundName"] = "Blizzard Tooltip",
		["insanityBarName"] = "Blizzard",
		["passiveBar"] = "Interface\\TargetingFrame\\UI-StatusBar",
		["background"] = "Interface\\Tooltips\\UI-Tooltip-Background",
		["castingBarName"] = "Blizzard",
		["textureLock"] = true,
	},
	["mindbender"] = {
		["enabled"] = true,
		["useNotification"] = {
			["enabled"] = false,
			["thresholdStacks"] = 10,
			["useVoidformStacks"] = false,
		},
		["gcdsMax"] = 2,
		["mode"] = "gcd",
		["swingsMax"] = 4,
		["timeMax"] = 3,
	},
	["bar"] = {
		["xPos"] = 0,
		["width"] = 555,
		["height"] = 34,
		["yPos"] = -200,
		["border"] = 4,
		["dragAndDrop"] = false,
	},
}
