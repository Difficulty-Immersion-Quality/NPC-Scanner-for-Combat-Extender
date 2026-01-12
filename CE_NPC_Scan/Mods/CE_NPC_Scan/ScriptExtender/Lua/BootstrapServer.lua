Ext.Osiris.RegisterListener("LevelGameplayStarted", 2, "after", function(levelName, isEditorMode)
    for _, row in pairs(Osi.DB_Players:Get(nil)) do
        AddSpell(row[1], "CE_NPC_Scan_Container", 0, 0);
        AddSpell(row[1], "CE_NPC_Scan_A_10", 0, 0);
        AddSpell(row[1], "CE_NPC_Scan_B_25", 0, 0);
        AddSpell(row[1], "CE_NPC_Scan_C_50", 0, 0);
        AddSpell(row[1], "CE_NPC_Scan_D_100", 0, 0);
        AddSpell(row[1], "CE_NPC_Scan_E_500", 0, 0);
        AddSpell(row[1], "CE_NPC_Scan_F_1000", 0, 0);
    end
end)

Ext.Osiris.RegisterListener("CharacterJoinedParty", 1, "after", function(charID)
    AddSpell(charID, "CE_NPC_Scan_Container", 0, 0);
    AddSpell(charID, "CE_NPC_Scan_A_10", 0, 0);
    AddSpell(charID, "CE_NPC_Scan_B_25", 0, 0);
    AddSpell(charID, "CE_NPC_Scan_C_50", 0, 0);
    AddSpell(charID, "CE_NPC_Scan_D_100", 0, 0);
    AddSpell(charID, "CE_NPC_Scan_E_500", 0, 0);
    AddSpell(charID, "CE_NPC_Scan_F_1000", 0, 0);
end)

Ext.Osiris.RegisterListener("UsingSpell", 5, "after", function(uuid, name, _, _, _, _)
    if name == 'CE_NPC_Scan_A_10' then
        _D(Mods.CombatExtender.GetNearbyCharacters(10))
    end

    if name == 'CE_NPC_Scan_B_25' then
        _D(Mods.CombatExtender.GetNearbyCharacters(25))
    end

    if name == 'CE_NPC_Scan_C_50' then
        _D(Mods.CombatExtender.GetNearbyCharacters(50))
    end

    if name == 'CE_NPC_Scan_D_100' then
        _D(Mods.CombatExtender.GetNearbyCharacters(100))
    end

    if name == 'CE_NPC_Scan_E_500' then
        _D(Mods.CombatExtender.GetNearbyCharacters(500))
    end

    if name == 'CE_NPC_Scan_F_1000' then
        _D(Mods.CombatExtender.GetNearbyCharacters(1000))
    end
end)