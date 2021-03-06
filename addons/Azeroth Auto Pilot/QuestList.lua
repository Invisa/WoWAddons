function AAP_MakeGroupList()
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"] = GetScreenWidth() / 2.5
	end
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"] = -(GetScreenHeight() / 4)
	end
	if (not AAP.PartyList) then
		AAP.PartyList = {}
	end
	AAP.PartyList.PartyFrame = {}
	AAP.PartyList.PartyFrame = CreateFrame("frame", "AAP_PartyListFrame1", UIParent)
	AAP.PartyList.PartyFrame:SetWidth(1)
	AAP.PartyList.PartyFrame:SetHeight(1)
	AAP.PartyList.PartyFrame:SetMovable(true)
	AAP.PartyList.PartyFrame:EnableMouse(true)
	AAP.PartyList.PartyFrame:SetFrameStrata("LOW")
	AAP.PartyList.PartyFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"])


	AAP.PartyList.PartyFrames = {}
	AAP.PartyList.PartyFrames2 = {}
	AAP.PartyList.PartyFramesFS1 = {}
	AAP.PartyList.PartyFramesFS2 = {}
	local CLi
	for CLi = 1, 5 do
		AAP.PartyList.PartyFrames[CLi] = CreateFrame("frame", "CLQaaListF"..CLi, AAP.PartyList.PartyFrame)
		AAP.PartyList.PartyFrames[CLi]:SetWidth(120)

		AAP.PartyList.PartyFrames[CLi]:SetHeight(25)
		AAP.PartyList.PartyFrames[CLi]:SetPoint("BOTTOMLEFT", AAP.PartyList.PartyFrame, "BOTTOMLEFT",40,-((25*CLi)-25))
		AAP.PartyList.PartyFrames[CLi]:Hide()
		AAP.PartyList.PartyFrames[CLi]:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
		AAP.PartyList.PartyFrames[CLi]:SetScript("OnMouseDown", function(self, button)
			if button == "LeftButton" and AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] == 0 then
				AAP.PartyList.PartyFrame:StartMoving();
				AAP.PartyList.PartyFrame.isMoving = true;
			end
		end)
		AAP.PartyList.PartyFrames[CLi]:SetScript("OnMouseUp", function(self, button)
			if button == "LeftButton" and AAP.PartyList.PartyFrame.isMoving then
				AAP.PartyList.PartyFrame:StopMovingOrSizing();
				AAP.PartyList.PartyFrame.isMoving = false;
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"] = AAP.PartyList.PartyFrame:GetLeft()
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"] = AAP.PartyList.PartyFrame:GetTop() - GetScreenHeight()
				AAP.PartyList.PartyFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"])
			end
		end)
		AAP.PartyList.PartyFrames[CLi]:SetScript("OnHide", function(self)
			if ( AAP.PartyList.PartyFrame.isMoving ) then
				AAP.PartyList.PartyFrame:StopMovingOrSizing();
				AAP.PartyList.PartyFrame.isMoving = false;
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"] = AAP.PartyList.PartyFrame:GetLeft()
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"] = AAP.PartyList.PartyFrame:GetTop() - GetScreenHeight()
				AAP.PartyList.PartyFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"])
			end
		end)
		
		AAP.PartyList.PartyFramesFS1[CLi] = AAP.PartyList.PartyFrames[CLi]:CreateFontString("CLQaasFS1","ARTWORK", "ChatFontNormal")
		AAP.PartyList.PartyFramesFS1[CLi]:SetParent(AAP.PartyList.PartyFrames[CLi])
		AAP.PartyList.PartyFramesFS1[CLi]:SetPoint("LEFT",AAP.PartyList.PartyFrames[CLi],"LEFT",5,0)
		AAP.PartyList.PartyFramesFS1[CLi]:SetWidth(300)
		AAP.PartyList.PartyFramesFS1[CLi]:SetHeight(38)
		AAP.PartyList.PartyFramesFS1[CLi]:SetJustifyH("LEFT")
		AAP.PartyList.PartyFramesFS1[CLi]:SetFontObject("GameFontNormalLarge")
		AAP.PartyList.PartyFramesFS1[CLi]:SetText("Name")
		AAP.PartyList.PartyFramesFS1[CLi]:SetTextColor(1, 1, 0)


		AAP.PartyList.PartyFrames2[CLi] = CreateFrame("frame", "CLQaListF"..CLi, AAP.PartyList.PartyFrame)
		AAP.PartyList.PartyFrames2[CLi]:SetWidth(40)

		AAP.PartyList.PartyFrames2[CLi]:SetHeight(25)
		AAP.PartyList.PartyFrames2[CLi]:SetPoint("BOTTOMLEFT", AAP.PartyList.PartyFrame, "BOTTOMLEFT",0,-((25*CLi)-25))
		AAP.PartyList.PartyFrames2[CLi]:Hide()
		AAP.PartyList.PartyFrames2[CLi]:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
		AAP.PartyList.PartyFrames2[CLi]:SetScript("OnMouseDown", function(self, button)
			if button == "LeftButton" and AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] == 0 then
				AAP.PartyList.PartyFrame:StartMoving();
				AAP.PartyList.PartyFrame.isMoving = true;
			end
		end)
		AAP.PartyList.PartyFrames2[CLi]:SetScript("OnMouseUp", function(self, button)
			if button == "LeftButton" and AAP.PartyList.PartyFrame.isMoving then
				AAP.PartyList.PartyFrame:StopMovingOrSizing();
				AAP.PartyList.PartyFrame.isMoving = false;
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"] = AAP.PartyList.PartyFrame:GetLeft()
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"] = AAP.PartyList.PartyFrame:GetTop() - GetScreenHeight()
				AAP.PartyList.PartyFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"])
			end
		end)
		AAP.PartyList.PartyFrames2[CLi]:SetScript("OnHide", function(self)
			if ( AAP.PartyList.PartyFrame.isMoving ) then
				AAP.PartyList.PartyFrame:StopMovingOrSizing();
				AAP.PartyList.PartyFrame.isMoving = false;
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"] = AAP.PartyList.PartyFrame:GetLeft()
				AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"] = AAP.PartyList.PartyFrame:GetTop() - GetScreenHeight()
				AAP.PartyList.PartyFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Partyleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Partytop"])
			end
		end)

		AAP.PartyList.PartyFramesFS2[CLi] = AAP.PartyList.PartyFrames2[CLi]:CreateFontString("CLQaasFS1","ARTWORK", "ChatFontNormal")
		AAP.PartyList.PartyFramesFS2[CLi]:SetParent(AAP.PartyList.PartyFrames[CLi])
		AAP.PartyList.PartyFramesFS2[CLi]:SetPoint("CENTER",AAP.PartyList.PartyFrames2[CLi],"CENTER",0,0)
		AAP.PartyList.PartyFramesFS2[CLi]:SetWidth(40)
		AAP.PartyList.PartyFramesFS2[CLi]:SetHeight(38)
		AAP.PartyList.PartyFramesFS2[CLi]:SetJustifyH("CENTER")
		AAP.PartyList.PartyFramesFS2[CLi]:SetFontObject("GameFontNormalLarge")
		AAP.PartyList.PartyFramesFS2[CLi]:SetText("123")
		AAP.PartyList.PartyFramesFS2[CLi]:SetTextColor(1, 1, 0)


	end



end
function AAP_MakeQuestList()
	if (not AAP.QuestList) then
		AAP.QuestList = {}
	end
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"] = {}
		AAP1[AAP_Realm][AAP_Name]["Settings"]["left"] = GetScreenWidth() / 1.6
		AAP1[AAP_Realm][AAP_Name]["Settings"]["top"] = -(GetScreenHeight() / 5)
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"] = UIParent:GetScale()
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] = 0
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Hide"] = 0
		AAP1[AAP_Realm][AAP_Name]["Settings"]["alpha"] = 1
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugleft"] = GetScreenWidth() / 1.6
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugtop"] = -(GetScreenHeight() / 5)
	end
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcampleft"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcampleft"] = GetScreenWidth() / 1.6
	end
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcamptop"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Hcamptop"] = -(GetScreenHeight() / 5)
	end
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugleft"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugleft"] = GetScreenWidth() / 2.5
	end
	if (not AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugtop"]) then
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugtop"] = -(GetScreenHeight() / 4)
	end
	AAP.QuestList.SugQuestFrame = {}
	AAP.QuestList.SugQuestFrame = CreateFrame("frame", "AAP_SugQuestFrameFrame", UIParent)
	AAP.QuestList.SugQuestFrame:SetWidth(300)
	AAP.QuestList.SugQuestFrame:SetHeight(150)
	AAP.QuestList.SugQuestFrame:SetMovable(true)
	AAP.QuestList.SugQuestFrame:EnableMouse(true)
	AAP.QuestList.SugQuestFrame:SetFrameStrata("LOW")
	AAP.QuestList.SugQuestFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugtop"])
	AAP.QuestList.SugQuestFrame:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
	AAP.QuestList.SugQuestFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			AAP.QuestList.SugQuestFrame:StartMoving();
			AAP.QuestList.SugQuestFrame.isMoving = true;
		end
	end)
	AAP.QuestList.SugQuestFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and AAP.QuestList.SugQuestFrame.isMoving then
			AAP.QuestList.SugQuestFrame:StopMovingOrSizing();
			AAP.QuestList.SugQuestFrame.isMoving = false;
			AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugleft"] = AAP.QuestList.SugQuestFrame:GetLeft()
			AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugtop"] = AAP.QuestList.SugQuestFrame:GetTop() - GetScreenHeight()
			AAP.QuestList.SugQuestFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugleft"], AAP1[AAP_Realm][AAP_Name]["Settings"]["Sugtop"])
		end
	end)
	AAP.QuestList.SugQuestFrame:SetScript("OnHide", function(self)
		if ( AAP.QuestList.SugQuestFrame.isMoving ) then
			AAP.QuestList.SugQuestFrame:StopMovingOrSizing();
			AAP.QuestList.SugQuestFrame.isMoving = false;
		end
	end)
	AAP.QuestList.SugQuestFrame:Hide()


	AAP.QuestList.SugQuestFrameFS1 = AAP.QuestList.SugQuestFrame:CreateFontString("CLQaaFS1","ARTWORK", "ChatFontNormal")
	AAP.QuestList.SugQuestFrameFS1:SetParent(AAP.QuestList.SugQuestFrame)
	AAP.QuestList.SugQuestFrameFS1:SetPoint("TOPLEFT",AAP.QuestList.SugQuestFrame,"TOPLEFT",0,0)
	AAP.QuestList.SugQuestFrameFS1:SetWidth(300)
	AAP.QuestList.SugQuestFrameFS1:SetHeight(38)
	AAP.QuestList.SugQuestFrameFS1:SetJustifyH("CENTER")
	AAP.QuestList.SugQuestFrameFS1:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.SugQuestFrameFS1:SetText("Quests Text")
	AAP.QuestList.SugQuestFrameFS1:SetTextColor(1, 1, 0)
	AAP.QuestList.SugQuestFrameFS2 = AAP.QuestList.SugQuestFrame:CreateFontString("CLQaaFS2","ARTWORK", "ChatFontNormal")
	AAP.QuestList.SugQuestFrameFS2:SetParent(AAP.QuestList.SugQuestFrame)
	AAP.QuestList.SugQuestFrameFS2:SetPoint("TOPLEFT",AAP.QuestList.SugQuestFrame,"TOPLEFT",0,-30)
	AAP.QuestList.SugQuestFrameFS2:SetWidth(300)
	AAP.QuestList.SugQuestFrameFS2:SetHeight(38)
	AAP.QuestList.SugQuestFrameFS2:SetJustifyH("CENTER")
	AAP.QuestList.SugQuestFrameFS2:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.SugQuestFrameFS2:SetText(AAP_Locals["Suggested Players"]..": ")
	AAP.QuestList.SugQuestFrameFS2:SetTextColor(1, 1, 0)

	AAP.QuestList.SugQuestFrame["Button1"] = CreateFrame("Button", "AAP_SBX1", UIParent, "SecureActionButtonTemplate")
	AAP.QuestList.SugQuestFrame["Button1"]:SetPoint("BOTTOMLEFT",AAP.QuestList.SugQuestFrame,"BOTTOMLEFT",15,5)
	AAP.QuestList.SugQuestFrame["Button1"]:SetWidth(110)
	AAP.QuestList.SugQuestFrame["Button1"]:SetHeight(30)
	AAP.QuestList.SugQuestFrame["Button1"]:SetText(AAP_Locals["Accept Quest"])
	AAP.QuestList.SugQuestFrame["Button1"]:SetParent(AAP.QuestList.SugQuestFrame)
	AAP.QuestList.SugQuestFrame.Button1:SetNormalFontObject("GameFontNormal")
	AAP.QuestList.SugQuestFrame.Button1ntex = AAP.QuestList.SugQuestFrame.Button1:CreateTexture()
	AAP.QuestList.SugQuestFrame.Button1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.SugQuestFrame.Button1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame.Button1ntex:SetAllPoints()	
	AAP.QuestList.SugQuestFrame.Button1:SetNormalTexture(AAP.QuestList.SugQuestFrame.Button1ntex)
	AAP.QuestList.SugQuestFrame.Button1htex = AAP.QuestList.SugQuestFrame.Button1:CreateTexture()
	AAP.QuestList.SugQuestFrame.Button1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.SugQuestFrame.Button1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame.Button1htex:SetAllPoints()
	AAP.QuestList.SugQuestFrame.Button1:SetHighlightTexture(AAP.QuestList.SugQuestFrame.Button1htex)
	AAP.QuestList.SugQuestFrame.Button1ptex = AAP.QuestList.SugQuestFrame.Button1:CreateTexture()
	AAP.QuestList.SugQuestFrame.Button1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.SugQuestFrame.Button1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame.Button1ptex:SetAllPoints()
	AAP.QuestList.SugQuestFrame.Button1:SetPushedTexture(AAP.QuestList.SugQuestFrame.Button1ptex)
	AAP.QuestList.SugQuestFrame["Button1"]:SetScript("OnClick", function(self, arg1)
		AAP_QAskPopWantedAsk("yes")
	end)
	AAP.QuestList.SugQuestFrame["Button2"] = CreateFrame("Button", "AAP_SBX2", UIParent, "SecureActionButtonTemplate")
	AAP.QuestList.SugQuestFrame["Button2"]:SetPoint("BOTTOMRIGHT",AAP.QuestList.SugQuestFrame,"BOTTOMRIGHT",-15,5)
	AAP.QuestList.SugQuestFrame["Button2"]:SetWidth(110)
	AAP.QuestList.SugQuestFrame["Button2"]:SetHeight(30)
	AAP.QuestList.SugQuestFrame["Button2"]:SetText(AAP_Locals["Decline Quest"])
	AAP.QuestList.SugQuestFrame["Button2"]:SetParent(AAP.QuestList.SugQuestFrame)
	AAP.QuestList.SugQuestFrame.Button2:SetNormalFontObject("GameFontNormal")
	AAP.QuestList.SugQuestFrame.Button2ntex = AAP.QuestList.SugQuestFrame.Button2:CreateTexture()
	AAP.QuestList.SugQuestFrame.Button2ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.SugQuestFrame.Button2ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame.Button2ntex:SetAllPoints()	
	AAP.QuestList.SugQuestFrame.Button2:SetNormalTexture(AAP.QuestList.SugQuestFrame.Button2ntex)
	AAP.QuestList.SugQuestFrame.Button2htex = AAP.QuestList.SugQuestFrame.Button2:CreateTexture()
	AAP.QuestList.SugQuestFrame.Button2htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.SugQuestFrame.Button2htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame.Button2htex:SetAllPoints()
	AAP.QuestList.SugQuestFrame.Button2:SetHighlightTexture(AAP.QuestList.SugQuestFrame.Button2htex)
	AAP.QuestList.SugQuestFrame.Button2ptex = AAP.QuestList.SugQuestFrame.Button2:CreateTexture()
	AAP.QuestList.SugQuestFrame.Button2ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.SugQuestFrame.Button2ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame.Button2ptex:SetAllPoints()
	AAP.QuestList.SugQuestFrame.Button2:SetPushedTexture(AAP.QuestList.SugQuestFrame.Button2ptex)
	AAP.QuestList.SugQuestFrame["Button2"]:SetScript("OnClick", function(self, arg1)
		AAP_QAskPopWantedAsk("no")
	end)







	AAP.QuestList.SugQuestFrame2 = {}
	AAP.QuestList.SugQuestFrame2 = CreateFrame("frame", "AAP_SugQuestFrameFrame", UIParent)
	AAP.QuestList.SugQuestFrame2:SetWidth(240)
	AAP.QuestList.SugQuestFrame2:SetHeight(270)
	AAP.QuestList.SugQuestFrame2:SetMovable(true)
	AAP.QuestList.SugQuestFrame2:EnableMouse(true)
	AAP.QuestList.SugQuestFrame2:SetFrameStrata("LOW")
	AAP.QuestList.SugQuestFrame2:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	AAP.QuestList.SugQuestFrame2:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
	AAP.QuestList.SugQuestFrame2:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			AAP.QuestList.SugQuestFrame2:StartMoving();
			AAP.QuestList.SugQuestFrame2.isMoving = true;
		end
	end)
	AAP.QuestList.SugQuestFrame2:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and AAP.QuestList.SugQuestFrame2.isMoving then
			AAP.QuestList.SugQuestFrame2:StopMovingOrSizing();
			AAP.QuestList.SugQuestFrame2.isMoving = false;
		end
	end)
	AAP.QuestList.SugQuestFrame2:SetScript("OnHide", function(self)
		if ( AAP.QuestList.SugQuestFrame.isMoving ) then
			AAP.QuestList.SugQuestFrame:StopMovingOrSizing();
			AAP.QuestList.SugQuestFrame.isMoving = false;
		end
	end)
	AAP.QuestList.SugQuestFrame2:Hide()

	AAP.QuestList.SugQuestFrame2.TextureAFrame = CreateFrame("Button", "aAAP_Arrow", AAP.QuestList.SugQuestFrame2)
	AAP.QuestList.SugQuestFrame2.TextureAFrame:SetHeight(150)
	AAP.QuestList.SugQuestFrame2.TextureAFrame:SetWidth(150)
	AAP.QuestList.SugQuestFrame2.TextureAFrame:SetPoint("TOP", AAP.QuestList.SugQuestFrame2, "TOP", 0, -60)
	AAP.QuestList.SugQuestFrame2.TextureAFrame:EnableMouse(true)
	AAP.QuestList.SugQuestFrame2.TextureAFrame:SetMovable(true)
	AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow = AAP.QuestList.SugQuestFrame2.TextureAFrame:CreateTexture(nil, "OVERLAY")
	AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow:SetTexture("")
	AAP.QuestList.SugQuestFrame2.TextureAFrame.arrow:SetAllPoints()

	AAP.QuestList.SugQuestFrame2.TextureAFrame:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});

	AAP.QuestList.SugQuestFrame2FS1 = AAP.QuestList.SugQuestFrame2:CreateFontString("CLQaaFS1","ARTWORK", "ChatFontNormal")
	AAP.QuestList.SugQuestFrame2FS1:SetParent(AAP.QuestList.SugQuestFrame2)
	AAP.QuestList.SugQuestFrame2FS1:SetPoint("TOPLEFT",AAP.QuestList.SugQuestFrame2,"TOPLEFT",-30,0)
	AAP.QuestList.SugQuestFrame2FS1:SetWidth(300)
	AAP.QuestList.SugQuestFrame2FS1:SetHeight(38)
	AAP.QuestList.SugQuestFrame2FS1:SetJustifyH("CENTER")
	AAP.QuestList.SugQuestFrame2FS1:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.SugQuestFrame2FS1:SetText(AAP_Locals["Optional"])
	AAP.QuestList.SugQuestFrame2FS1:SetTextColor(1, 1, 0)
	AAP.QuestList.SugQuestFrame2FS2 = AAP.QuestList.SugQuestFrame2:CreateFontString("CLQaaFS2","ARTWORK", "ChatFontNormal")
	AAP.QuestList.SugQuestFrame2FS2:SetParent(AAP.QuestList.SugQuestFrame2)
	AAP.QuestList.SugQuestFrame2FS2:SetPoint("TOPLEFT",AAP.QuestList.SugQuestFrame2,"TOPLEFT",-30,-30)
	AAP.QuestList.SugQuestFrame2FS2:SetWidth(300)
	AAP.QuestList.SugQuestFrame2FS2:SetHeight(38)
	AAP.QuestList.SugQuestFrame2FS2:SetJustifyH("CENTER")
	AAP.QuestList.SugQuestFrame2FS2:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.SugQuestFrame2FS2:SetText("Quests: ")
	AAP.QuestList.SugQuestFrame2FS2:SetTextColor(1, 1, 0)

	AAP.QuestList.SugQuestFrame2["Button1"] = CreateFrame("Button", "AAP_SBX1", UIParent, "SecureActionButtonTemplate")
	AAP.QuestList.SugQuestFrame2["Button1"]:SetPoint("BOTTOMLEFT",AAP.QuestList.SugQuestFrame2,"BOTTOMLEFT",15,5)
	AAP.QuestList.SugQuestFrame2["Button1"]:SetWidth(90)
	AAP.QuestList.SugQuestFrame2["Button1"]:SetHeight(22)
	AAP.QuestList.SugQuestFrame2["Button1"]:SetText(AAP_Locals["Accept Quest"])
	AAP.QuestList.SugQuestFrame2["Button1"]:SetParent(AAP.QuestList.SugQuestFrame2)
	AAP.QuestList.SugQuestFrame2.Button1:SetNormalFontObject("GameFontNormalSmall")
	AAP.QuestList.SugQuestFrame2.Button1ntex = AAP.QuestList.SugQuestFrame2.Button1:CreateTexture()
	AAP.QuestList.SugQuestFrame2.Button1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.SugQuestFrame2.Button1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame2.Button1ntex:SetAllPoints()	
	AAP.QuestList.SugQuestFrame2.Button1:SetNormalTexture(AAP.QuestList.SugQuestFrame2.Button1ntex)
	AAP.QuestList.SugQuestFrame2.Button1htex = AAP.QuestList.SugQuestFrame2.Button1:CreateTexture()
	AAP.QuestList.SugQuestFrame2.Button1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.SugQuestFrame2.Button1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame2.Button1htex:SetAllPoints()
	AAP.QuestList.SugQuestFrame2.Button1:SetHighlightTexture(AAP.QuestList.SugQuestFrame2.Button1htex)
	AAP.QuestList.SugQuestFrame2.Button1ptex = AAP.QuestList.SugQuestFrame2.Button1:CreateTexture()
	AAP.QuestList.SugQuestFrame2.Button1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.SugQuestFrame2.Button1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame2.Button1ptex:SetAllPoints()
	AAP.QuestList.SugQuestFrame2.Button1:SetPushedTexture(AAP.QuestList.SugQuestFrame2.Button1ptex)
	AAP.QuestList.SugQuestFrame2["Button1"]:SetScript("OnClick", function(self, arg1)
		AAP_QAskPopQline("yes")
	end)
	AAP.QuestList.SugQuestFrame2["Button2"] = CreateFrame("Button", "AAP_SBX2", UIParent, "SecureActionButtonTemplate")
	AAP.QuestList.SugQuestFrame2["Button2"]:SetPoint("BOTTOMRIGHT",AAP.QuestList.SugQuestFrame2,"BOTTOMRIGHT",-15,5)
	AAP.QuestList.SugQuestFrame2["Button2"]:SetWidth(90)
	AAP.QuestList.SugQuestFrame2["Button2"]:SetHeight(22)
	AAP.QuestList.SugQuestFrame2["Button2"]:SetText(AAP_Locals["Decline Quest"])
	AAP.QuestList.SugQuestFrame2["Button2"]:SetParent(AAP.QuestList.SugQuestFrame2)
	AAP.QuestList.SugQuestFrame2.Button2:SetNormalFontObject("GameFontNormalSmall")
	AAP.QuestList.SugQuestFrame2.Button2ntex = AAP.QuestList.SugQuestFrame2.Button2:CreateTexture()
	AAP.QuestList.SugQuestFrame2.Button2ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.SugQuestFrame2.Button2ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame2.Button2ntex:SetAllPoints()	
	AAP.QuestList.SugQuestFrame2.Button2:SetNormalTexture(AAP.QuestList.SugQuestFrame2.Button2ntex)
	AAP.QuestList.SugQuestFrame2.Button2htex = AAP.QuestList.SugQuestFrame2.Button2:CreateTexture()
	AAP.QuestList.SugQuestFrame2.Button2htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.SugQuestFrame2.Button2htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame2.Button2htex:SetAllPoints()
	AAP.QuestList.SugQuestFrame2.Button2:SetHighlightTexture(AAP.QuestList.SugQuestFrame2.Button2htex)
	AAP.QuestList.SugQuestFrame2.Button2ptex = AAP.QuestList.SugQuestFrame2.Button2:CreateTexture()
	AAP.QuestList.SugQuestFrame2.Button2ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.SugQuestFrame2.Button2ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.SugQuestFrame2.Button2ptex:SetAllPoints()
	AAP.QuestList.SugQuestFrame2.Button2:SetPushedTexture(AAP.QuestList.SugQuestFrame2.Button2ptex)
	AAP.QuestList.SugQuestFrame2["Button2"]:SetScript("OnClick", function(self, arg1)
		AAP_QAskPopQline("no")
	end)



	AAP.QuestList.Greetings = {}
	AAP.QuestList.Greetings = CreateFrame("frame", "AAP_GreetingsFrame", UIParent)
	AAP.QuestList.Greetings:SetWidth(330)
	AAP.QuestList.Greetings:SetHeight(150)
	AAP.QuestList.Greetings:SetMovable(true)
	AAP.QuestList.Greetings:EnableMouse(true)
	AAP.QuestList.Greetings:SetFrameStrata("LOW")
	AAP.QuestList.Greetings:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	AAP.QuestList.Greetings:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
	AAP.QuestList.Greetings:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			AAP.QuestList.Greetings:StartMoving();
			AAP.QuestList.Greetings.isMoving = true;
		end
	end)
	AAP.QuestList.Greetings:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and AAP.QuestList.Greetings.isMoving then
			AAP.QuestList.Greetings:StopMovingOrSizing();
			AAP.QuestList.Greetings.isMoving = false;
		end
	end)
	AAP.QuestList.Greetings:SetScript("OnHide", function(self)
		if ( AAP.QuestList.Greetings.isMoving ) then
			AAP.QuestList.Greetings:StopMovingOrSizing();
			AAP.QuestList.Greetings.isMoving = false;
		end
	end)
	AAP.QuestList.Greetings2FS1 = AAP.QuestList.Greetings:CreateFontString("AAPGreetingsFS1","ARTWORK", "ChatFontNormal")
	AAP.QuestList.Greetings2FS1:SetParent(AAP.QuestList.Greetings)
	AAP.QuestList.Greetings2FS1:SetPoint("TOP",AAP.QuestList.Greetings,"TOP",0,0)
	AAP.QuestList.Greetings2FS1:SetWidth(300)
	AAP.QuestList.Greetings2FS1:SetHeight(38)
	AAP.QuestList.Greetings2FS1:SetJustifyH("CENTER")
	AAP.QuestList.Greetings2FS1:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.Greetings2FS1:SetText("Welcome to Azeroth Auto Pilot")
	AAP.QuestList.Greetings2FS1:SetTextColor(1, 1, 0)

	AAP.QuestList.Greetings2FS221 = AAP.QuestList.Greetings:CreateFontString("AAPGreetingsFS221","ARTWORK", "ChatFontNormal")
	AAP.QuestList.Greetings2FS221:SetParent(AAP.QuestList.Greetings)
	AAP.QuestList.Greetings2FS221:SetPoint("TOP",AAP.QuestList.Greetings,"TOP",0,-8)
	AAP.QuestList.Greetings2FS221:SetWidth(290)
	AAP.QuestList.Greetings2FS221:SetHeight(72)
	AAP.QuestList.Greetings2FS221:SetJustifyH("LEFT")
	AAP.QuestList.Greetings2FS221:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.Greetings2FS221:SetText("Horde require 40+ Goblin Glider kits.")
	AAP.QuestList.Greetings2FS221:SetTextColor(1, 1, 0)

	AAP.QuestList.Greetings2FS2 = AAP.QuestList.Greetings:CreateFontString("AAPGreetingsFS2","ARTWORK", "ChatFontNormal")
	AAP.QuestList.Greetings2FS2:SetParent(AAP.QuestList.Greetings)
	AAP.QuestList.Greetings2FS2:SetPoint("TOP",AAP.QuestList.Greetings,"TOP",0,-38)
	AAP.QuestList.Greetings2FS2:SetWidth(290)
	AAP.QuestList.Greetings2FS2:SetHeight(72)
	AAP.QuestList.Greetings2FS2:SetJustifyH("LEFT")
	AAP.QuestList.Greetings2FS2:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.Greetings2FS2:SetText("Special thanks to BrutallStatic for helping with the addon, catch him at:")
	AAP.QuestList.Greetings2FS2:SetTextColor(1, 1, 0)

	AAP.QuestList.Greetings2EB1 = CreateFrame("EditBox", "AAPGreetEBox", AAP.QuestList.Greetings, "InputBoxTemplate")
	AAP.QuestList.Greetings2EB1:SetSize(200, 20)
	AAP.QuestList.Greetings2EB1:SetPoint("BOTTOM",AAP.QuestList.Greetings,"BOTTOM",0,40)
	AAP.QuestList.Greetings2EB1:SetAutoFocus(false)
	AAP.QuestList.Greetings2EB1:SetText("www.twitch.tv/brutallstatic")
	AAP.QuestList.Greetings2EB1:SetCursorPosition(0)

	AAP.QuestList.GreetingsHideB = CreateFrame("Button", "AAP_GreetingsHideB", AAP.QuestList.Greetings, "SecureActionButtonTemplate")
	AAP.QuestList.GreetingsHideB:SetPoint("BOTTOMRIGHT",AAP.QuestList.Greetings,"BOTTOMRIGHT",-15,5)
	AAP.QuestList.GreetingsHideB:SetWidth(90)
	AAP.QuestList.GreetingsHideB:SetHeight(22)
	AAP.QuestList.GreetingsHideB:SetText("Close")
	AAP.QuestList.GreetingsHideB:SetParent(AAP.QuestList.Greetings)
	AAP.QuestList.GreetingsHideB:SetNormalFontObject("GameFontNormalLarge")
	AAP.QuestList.GreetingsHideBntex = AAP.QuestList.GreetingsHideB:CreateTexture()
	AAP.QuestList.GreetingsHideBntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.GreetingsHideBntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.GreetingsHideBntex:SetAllPoints()	
	AAP.QuestList.GreetingsHideB:SetNormalTexture(AAP.QuestList.GreetingsHideBntex)
	AAP.QuestList.GreetingsHideBhtex = AAP.QuestList.GreetingsHideB:CreateTexture()
	AAP.QuestList.GreetingsHideBhtex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.GreetingsHideBhtex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.GreetingsHideBhtex:SetAllPoints()
	AAP.QuestList.GreetingsHideB:SetHighlightTexture(AAP.QuestList.GreetingsHideBhtex)
	AAP.QuestList.GreetingsHideBptex = AAP.QuestList.GreetingsHideB:CreateTexture()
	AAP.QuestList.GreetingsHideBptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.GreetingsHideBptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.GreetingsHideBptex:SetAllPoints()
	AAP.QuestList.GreetingsHideB:SetPushedTexture(AAP.QuestList.GreetingsHideBptex)
	AAP.QuestList.GreetingsHideB:SetScript("OnClick", function(self, arg1)
		AAP1[AAP_Realm][AAP_Name]["Settings"]["Greetings2"] = 1
		AAP.QuestList.Greetings:Hide()
	end)
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["Greetings2"] == 1) then
		AAP.QuestList.Greetings:Hide()
	end




	AAP.QuestList.MainFrame = CreateFrame("frame", "AAP_QuestFrame", UIParent)
	AAP.QuestList.MainFrame:SetWidth(1)
	AAP.QuestList.MainFrame:SetHeight(1)
	AAP.QuestList.MainFrame:SetMovable(true)
	AAP.QuestList.MainFrame:EnableMouse(true)
	AAP.QuestList.MainFrame:SetFrameStrata("MEDIUM")
	AAP.QuestList.MainFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["left"], AAP1[AAP_Realm][AAP_Name]["Settings"]["top"])
	AAP.QuestList.ListFrame = CreateFrame("frame", "AAP_QuestFrameList", UIParent)
	AAP.QuestList.ListFrame:SetWidth(1)
	AAP.QuestList.ListFrame:SetHeight(300)
	AAP.QuestList.ListFrame:SetFrameStrata("MEDIUM")
	AAP.QuestList.ListFrame:SetPoint("TOPLEFT", AAP.QuestList.MainFrame, "TOPLEFT",0,0)
	AAP.QuestList.ListFrame:SetMovable(true)
	AAP.QuestList.ListFrame:EnableMouse(true)
	AAP.QuestList.ListFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not AAP.QuestList.MainFrame.isMoving and AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] == 0 then
			AAP.QuestList.MainFrame:StartMoving();
			AAP.QuestList.MainFrame.isMoving = true;
		end
	end)
	AAP.QuestList.ListFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and AAP.QuestList.MainFrame.isMoving then
			AAP.QuestList.MainFrame:StopMovingOrSizing();
			AAP.QuestList.MainFrame.isMoving = false;
			AAP1[AAP_Realm][AAP_Name]["Settings"]["left"] = AAP.QuestList.MainFrame:GetLeft()
			AAP1[AAP_Realm][AAP_Name]["Settings"]["top"] = AAP.QuestList.MainFrame:GetTop() - GetScreenHeight()
			AAP.QuestList.MainFrame:SetPoint("TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["left"], AAP1[AAP_Realm][AAP_Name]["Settings"]["top"])
			AAP_CombatTestVar = 1
		end
	end)
	AAP.QuestList.ListFrame:SetScript("OnHide", function(self)
		if ( AAP.QuestList.MainFrame.isMoving ) then
			AAP.QuestList.MainFrame:StopMovingOrSizing();
			AAP.QuestList.MainFrame.isMoving = false;
		end
	end)


	AAP.QuestList20 = CreateFrame("frame", "AAP_QuestFrame20", UIParent)
	AAP.QuestList20:SetWidth(1)
	AAP.QuestList20:SetHeight(1)
	AAP.QuestList20:SetFrameStrata("MEDIUM")
	AAP.QuestList20:SetPoint("TOPLEFT", UIParent, "TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["left"], AAP1[AAP_Realm][AAP_Name]["Settings"]["top"])

	AAP.QuestList21 = CreateFrame("frame", "AAP_QuestFrame21", UIParent)
	AAP.QuestList21:SetWidth(1)
	AAP.QuestList21:SetHeight(300)
	AAP.QuestList21:SetFrameStrata("MEDIUM")
	AAP.QuestList21:SetPoint("TOPLEFT", AAP.QuestList20, "TOPLEFT",0,0)

	AAP.QuestList.ButtonParent = CreateFrame("frame", "CLQListFddd", UIParent)
	AAP.QuestList.ButtonParent:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
	AAP.QuestList.QuestFrames = {}
	AAP.QuestList2 = {}
	local CLi
	for CLi = 1, 50 do
		AAP.QuestList.QuestFrames[CLi] = CreateFrame("frame", "CLQListF"..CLi, AAP.QuestList.ListFrame)
		AAP.QuestList.QuestFrames[CLi]:SetWidth(410)

		AAP.QuestList.QuestFrames[CLi]:SetHeight(38)
		AAP.QuestList.QuestFrames[CLi]:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,0)
		AAP.QuestList.QuestFrames[CLi]:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
		AAP.QuestList.QuestFrames[CLi]:SetScript("OnMouseDown", function(self, button)
			if button == "LeftButton" and not AAP.QuestList.MainFrame.isMoving and AAP1[AAP_Realm][AAP_Name]["Settings"]["Lock"] == 0 then
				AAP.QuestList.MainFrame:StartMoving();
				AAP.QuestList.MainFrame.isMoving = true;
			end
		end)
		AAP.QuestList.QuestFrames[CLi]:SetScript("OnMouseUp", function(self, button)
			if button == "LeftButton" and AAP.QuestList.MainFrame.isMoving then
				AAP.QuestList.MainFrame:StopMovingOrSizing();
				AAP.QuestList.MainFrame.isMoving = false;
				AAP1[AAP_Realm][AAP_Name]["Settings"]["left"] = AAP.QuestList.MainFrame:GetLeft()
				AAP1[AAP_Realm][AAP_Name]["Settings"]["top"] = AAP.QuestList.MainFrame:GetTop() - GetScreenHeight()
				AAP.QuestList.MainFrame:SetPoint("TOPLEFT", AAP1[AAP_Realm][AAP_Name]["Settings"]["left"], AAP1[AAP_Realm][AAP_Name]["Settings"]["top"])
				AAP_CombatTestVar = 1
			end
		end)
		AAP.QuestList.QuestFrames[CLi]:SetScript("OnHide", function(self)
			if ( AAP.QuestList.MainFrame.isMoving ) then
				AAP.QuestList.MainFrame:StopMovingOrSizing();
				AAP.QuestList.MainFrame.isMoving = false;
			end
		end)
		AAP.QuestList.QuestFrames[CLi]:SetAlpha(0)
--		AAP.QuestList.QuestFrames[CLi]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList.QuestFrames["FS"..CLi] = AAP.QuestList.ListFrame:CreateFontString("CLQFS"..CLi,"ARTWORK", "ChatFontNormal")
		AAP.QuestList.QuestFrames["FS"..CLi]:SetParent(AAP.QuestList.QuestFrames[CLi])
		AAP.QuestList.QuestFrames["FS"..CLi]:SetPoint("TOPLEFT",AAP.QuestList.QuestFrames[CLi],"TOPLEFT",5,0)
		AAP.QuestList.QuestFrames["FS"..CLi]:SetWidth(800)
		AAP.QuestList.QuestFrames["FS"..CLi]:SetHeight(38)
		AAP.QuestList.QuestFrames["FS"..CLi]:SetJustifyH("LEFT")
		AAP.QuestList.QuestFrames["FS"..CLi]:SetFontObject("GameFontNormalLarge")
		AAP.QuestList.QuestFrames["FS"..CLi]:SetText("")
		AAP.QuestList.QuestFrames["FS"..CLi]:SetTextColor(1, 1, 0)

		AAP.QuestList.QuestFrames["FS"..CLi]["BQid"] = 0
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"] = CreateFrame("Button", "AAP_SkipActiveButton"..CLi, AAP.QuestList.QuestFrames[CLi])
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:SetWidth(43)
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:SetHeight(17)
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:SetPoint("RIGHT", AAP.QuestList.QuestFrames[CLi], "RIGHT", -4, 0)
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:SetScript("OnMouseDown", function(self, button)
			AAP_SkipBonusObjective(AAP.QuestList.QuestFrames[CLi]["BQid"])
		end)
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:SetBackdrop( { 
			bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
			edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
			tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
		});
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"] = AAP_ArrowFrame:CreateFontString("CLSettingsFS2212","ARTWORK", "ChatFontNormal")
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetParent(AAP.QuestList.QuestFrames["FS"..CLi]["Button"])
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetPoint("CENTER", AAP.QuestList.QuestFrames["FS"..CLi]["Button"], "CENTER", 0, 0)
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetWidth(43)
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetHeight(14)
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetFontObject("GameFontNormalLarge")
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetText("Skip")
		AAP.QuestList.QuestFrames["FS"..CLi]["Fontstring1"]:SetTextColor(1, 1, 0)
		AAP.QuestList.QuestFrames["FS"..CLi]["Button"]:Hide()


		AAP.QuestList2["BF"..CLi] = CreateFrame("frame", "CLQListF2"..CLi, AAP.QuestList21)
		AAP.QuestList2["BF"..CLi]:SetWidth(410)
		AAP.QuestList2["BF"..CLi]:SetHeight(38)
		AAP.QuestList2["BF"..CLi]:SetPoint("BOTTOMLEFT", AAP.QuestList21, "BOTTOMLEFT",0,0)

		AAP.QuestList2["BF"..CLi]:Hide()
		AAP.QuestList2["BF"..CLi]:SetParent(AAP.QuestList.ButtonParent)
		AAP.QuestList2["BF"..CLi]["AAP_Button"] = CreateFrame("Button", "AAP_SBX"..CLi, AAP.QuestList2["BF"..CLi], "SecureActionButtonTemplate")
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetWidth(38)
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetHeight(38)
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetText("X")
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetPoint("LEFT",AAP.QuestList2["BF"..CLi],"RIGHT",0,0)
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetNormalFontObject("GameFontNormalLarge")
		AAP.QuestList2["BF"..CLi]["AAP_Buttonntex"] = AAP.QuestList2["BF"..CLi]["AAP_Button"]:CreateTexture()
		AAP.QuestList2["BF"..CLi]["AAP_Buttonntex"]:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		AAP.QuestList2["BF"..CLi]["AAP_Buttonntex"]:SetTexCoord(0, 0.625, 0, 0.6875)
		AAP.QuestList2["BF"..CLi]["AAP_Buttonntex"]:SetAllPoints()	
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetNormalTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		AAP.QuestList2["BF"..CLi]["AAP_Buttonhtex"] = AAP.QuestList2["BF"..CLi]["AAP_Button"]:CreateTexture()
		AAP.QuestList2["BF"..CLi]["AAP_Buttonhtex"]:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		AAP.QuestList2["BF"..CLi]["AAP_Buttonhtex"]:SetTexCoord(0, 0.625, 0, 0.6875)
		AAP.QuestList2["BF"..CLi]["AAP_Buttonhtex"]:SetAllPoints()
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetHighlightTexture(AAP.QuestList2["BF"..CLi]["AAP_Buttonhtex"])
		AAP.QuestList2["BF"..CLi]["AAP_Buttonptex"] = AAP.QuestList2["BF"..CLi]["AAP_Button"]:CreateTexture()
		AAP.QuestList2["BF"..CLi]["AAP_Buttonptex"]:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
		AAP.QuestList2["BF"..CLi]["AAP_Buttonptex"]:SetTexCoord(0, 0.625, 0, 0.6875)
		AAP.QuestList2["BF"..CLi]["AAP_Buttonptex"]:SetAllPoints()
		AAP.QuestList2["BF"..CLi]["AAP_Button"]:SetPushedTexture(AAP.QuestList2["BF"..CLi]["AAP_Buttonptex"])
		AAP.QuestList2["BF"..CLi]["AAP_ButtonCD"] = CreateFrame("Cooldown", "AAP_Cooldown"..CLi, AAP.QuestList2["BF"..CLi]["AAP_Button"], "CooldownFrameTemplate")
		AAP.QuestList2["BF"..CLi]["AAP_ButtonCD"]:SetAllPoints()

--		AAP.QuestList2["BF"..CLi]:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
		AAP.QuestList2["BF"..CLi]:SetAlpha(AAP1[AAP_Realm][AAP_Name]["Settings"]["alpha"])


	end



--	AAP.QuestList21:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])

	AAP.QuestList.ListFrame:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
	AAP.QuestList21:SetScale(AAP1[AAP_Realm][AAP_Name]["Settings"]["Scale"])
	AAP.QuestList.ListFrame:SetAlpha(AAP1[AAP_Realm][AAP_Name]["Settings"]["alpha"])
	if (AAP1[AAP_Realm][AAP_Name]["Settings"]["Hide"] == 1) then
		AAP.QuestList.ListFrame:Hide()
	end
	AAP.QuestList.Warcamp2 = CreateFrame("frame", "AAP_Warcamp2", UIParent)
	AAP.QuestList.Warcamp2:SetWidth(300)
	AAP.QuestList.Warcamp2:SetHeight(100)
	AAP.QuestList.Warcamp2:SetPoint("CENTER", UIParent, "CENTER",0,40)
	AAP.QuestList.Warcamp2:SetMovable(true)
	AAP.QuestList.Warcamp2:EnableMouse(true)
	AAP.QuestList.Warcamp2:Hide()
	AAP.QuestList.Warcamp2:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
	});
	AAP.QuestList.Warcamp2:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			AAP.QuestList.Warcamp2:StartMoving();
			AAP.QuestList.Warcamp2.isMoving = true;
		end
	end)
	AAP.QuestList.Warcamp2:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and AAP.QuestList.Warcamp2.isMoving then
			AAP.QuestList.Warcamp2:StopMovingOrSizing();
			AAP.QuestList.Warcamp2.isMoving = false;
		end
	end)
	AAP.QuestList.Warcamp2:SetScript("OnHide", function(self)
		if ( AAP.QuestList.Warcamp2.isMoving ) then
			AAP.QuestList.Warcamp2:StopMovingOrSizing();
			AAP.QuestList.Warcamp2.isMoving = false;
		end
	end)
	AAP.QuestList.WarcampFS2 = AAP.QuestList.Warcamp2:CreateFontString("AAP_WarcampFS2","ARTWORK", "ChatFontNormal")
	AAP.QuestList.WarcampFS2:SetParent(AAP.QuestList.Warcamp2)
	AAP.QuestList.WarcampFS2:SetPoint("TOP", AAP.QuestList.Warcamp2, "TOP", 0, 0)
	AAP.QuestList.WarcampFS2:SetWidth(130)
	AAP.QuestList.WarcampFS2:SetHeight(40)
	AAP.QuestList.WarcampFS2:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.WarcampFS2:SetText(AAP_Locals["War Campaign"])
	AAP.QuestList.WarcampFS2:SetTextColor(0, 1, 0)


	AAP.QuestList.WarcampB1 = CreateFrame("Button", "AAP_WarCampB1", UIParent, "SecureActionButtonTemplate")
	AAP.QuestList.WarcampB1:SetPoint("BOTTOMLEFT",AAP.QuestList.Warcamp2,"BOTTOMLEFT",15,5)
	AAP.QuestList.WarcampB1:SetWidth(110)
	AAP.QuestList.WarcampB1:SetHeight(30)
	AAP.QuestList.WarcampB1:SetText(AAP_Locals["Accept Quest"])
	AAP.QuestList.WarcampB1:SetParent(AAP.QuestList.Warcamp2)
	AAP.QuestList.WarcampB1:SetNormalFontObject("GameFontNormal")
	AAP.QuestList.WarcampB1ntex = AAP.QuestList.WarcampB1:CreateTexture()
	AAP.QuestList.WarcampB1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.WarcampB1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.WarcampB1ntex:SetAllPoints()	
	AAP.QuestList.WarcampB1:SetNormalTexture(AAP.QuestList.WarcampB1ntex)
	AAP.QuestList.WarcampB1htex = AAP.QuestList.WarcampB1:CreateTexture()
	AAP.QuestList.WarcampB1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.WarcampB1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.WarcampB1htex:SetAllPoints()
	AAP.QuestList.WarcampB1:SetHighlightTexture(AAP.QuestList.WarcampB1htex)
	AAP.QuestList.WarcampB1ptex = AAP.QuestList.WarcampB1:CreateTexture()
	AAP.QuestList.WarcampB1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.WarcampB1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.WarcampB1ptex:SetAllPoints()
	AAP.QuestList.WarcampB1:SetPushedTexture(AAP.QuestList.WarcampB1ptex)
	AAP.QuestList.WarcampB1:SetScript("OnClick", function(self, arg1)
		AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"] = 1
		AAP_ZoneChangeTest()
		AAP_Plus()
		AAP_UpdateQuestList()
		AAP.QuestList.Warcamp2:Hide()
	end)
	AAP.QuestList.WarcampB2 = CreateFrame("Button", "AAP_WarCampB2", UIParent, "SecureActionButtonTemplate")
	AAP.QuestList.WarcampB2:SetPoint("BOTTOMRIGHT",AAP.QuestList.Warcamp2,"BOTTOMRIGHT",-15,5)
	AAP.QuestList.WarcampB2:SetWidth(110)
	AAP.QuestList.WarcampB2:SetHeight(30)
	AAP.QuestList.WarcampB2:SetText(AAP_Locals["Decline Quest"])
	AAP.QuestList.WarcampB2:SetParent(AAP.QuestList.Warcamp2)
	AAP.QuestList.WarcampB2:SetNormalFontObject("GameFontNormal")
	AAP.QuestList.WarcampB2ntex = AAP.QuestList.WarcampB2:CreateTexture()
	AAP.QuestList.WarcampB2ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	AAP.QuestList.WarcampB2ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.WarcampB2ntex:SetAllPoints()	
	AAP.QuestList.WarcampB2:SetNormalTexture(AAP.QuestList.WarcampB2ntex)
	AAP.QuestList.WarcampB2htex = AAP.QuestList.WarcampB2:CreateTexture()
	AAP.QuestList.WarcampB2htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	AAP.QuestList.WarcampB2htex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.WarcampB2htex:SetAllPoints()
	AAP.QuestList.WarcampB2:SetHighlightTexture(AAP.QuestList.WarcampB2htex)
	AAP.QuestList.WarcampB2ptex = AAP.QuestList.WarcampB2:CreateTexture()
	AAP.QuestList.WarcampB2ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	AAP.QuestList.WarcampB2ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	AAP.QuestList.WarcampB2ptex:SetAllPoints()
	AAP.QuestList.WarcampB2:SetPushedTexture(AAP.QuestList.WarcampB2ptex)
	AAP.QuestList.WarcampB2:SetScript("OnClick", function(self, arg1)
		AAP1[AAP_Realm][AAP_Name]["AAP_DoWarCampaign"] = 0
		AAP_ChangeZone()
		AAP_Plus()
		AAP_UpdateQuestList()
		AAP.QuestList.Warcamp2:Hide()
	end)














	AAP.QuestList.Warcamp = CreateFrame("frame", "AAP_Warcamp", AAP.QuestList.ListFrame)
	AAP.QuestList.Warcamp:SetWidth(130)
	AAP.QuestList.Warcamp:SetHeight(25)
	AAP.QuestList.Warcamp:SetPoint("BOTTOMLEFT", AAP.QuestList.ListFrame, "BOTTOMLEFT",0,40)
	AAP.QuestList.Warcamp:Hide()
	AAP.QuestList.Warcamp:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 10, edgeSize = 10, insets = { left = 2, right = 2, top = 2, bottom = 2 }
	});

	AAP.QuestList.WarcampFS = AAP.QuestList.Warcamp:CreateFontString("AAP_WarcampFS1","ARTWORK", "ChatFontNormal")
	AAP.QuestList.WarcampFS:SetParent(AAP.QuestList.Warcamp)
	AAP.QuestList.WarcampFS:SetPoint("CENTER", AAP.QuestList.Warcamp, "CENTER", 0, 0)
	AAP.QuestList.WarcampFS:SetWidth(130)
	AAP.QuestList.WarcampFS:SetHeight(25)
	AAP.QuestList.WarcampFS:SetFontObject("GameFontNormalLarge")
	AAP.QuestList.WarcampFS:SetText(AAP_Locals["War Campaign"])
	AAP.QuestList.WarcampFS:SetTextColor(0, 1, 0)
	AAP.QuestList.Warcamp:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" then
			AAP.QuestList.Warcamp2:Show()
		end
	end)
	AAP.QuestList.Warcamp:SetScript("OnEnter", function(self, button)
		AAP.QuestList.WarcampFS:SetTextColor(1, 0, 0)
	end)
	AAP.QuestList.Warcamp:SetScript("OnLeave", function(self, button)
		AAP.QuestList.WarcampFS:SetTextColor(0, 1, 0)
	end)
end

