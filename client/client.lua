local RSGCore = exports['rsg-core']:GetCoreObject()

------------------------------------------
-- load ammo
------------------------------------------
RegisterNetEvent('rsg-ammo:client:AddAmmo', function(ammotype)

    local weapon = GetPedCurrentHeldWeapon(cache.ped)
    local weapongroup = GetWeapontypeGroup(weapon)
    local weaponInHands = exports['rsg-weapons']:weaponInHands()
    local currentSerial = weaponInHands[weapon]
    local max_ammo = 0
    local amount_ammo = 0
    local ammo_type = nil
    local ammo_save = 0
    local ammo_item = nil
    local valid_ammo = false

    if weapon == -1569615261 then
        lib.notify({ title = Lang:t('client.lang_1'), type = 'error', duration = 5000 })
        return
    end

    ----------------------------
    -- revolver
    ----------------------------
    if weapongroup == -1101297303 and ammotype == 'AMMO_REVOLVER' then
        max_ammo = 200
        amount_ammo = Config.AmountRevolverAmmo
        ammo_type = joaat('AMMO_REVOLVER')
        ammo_save = 'ammo'
        ammo_item = 'ammo_revolver'
        valid_ammo = true
    end

    if weapongroup == -1101297303 and ammotype == 'AMMO_REVOLVER_HIGH_VELOCITY' then
        max_ammo = 200
        amount_ammo = Config.AmountRevolverAmmo
        ammo_type = joaat('AMMO_REVOLVER_HIGH_VELOCITY')
        ammo_save = 'ammo_high_velocity'
        ammo_item = 'ammo_revolver_high_velocity'
        valid_ammo = true
    end

    if weapongroup == -1101297303 and ammotype == 'AMMO_REVOLVER_SPLIT_POINT' then
        max_ammo = 200
        amount_ammo = Config.AmountRevolverAmmo
        ammo_type = joaat('AMMO_REVOLVER_SPLIT_POINT')
        ammo_save = 'ammo_split_point'
        ammo_item = 'ammo_revolver_split_point'
        valid_ammo = true
    end

    if weapongroup == -1101297303 and ammotype == 'AMMO_REVOLVER_EXPRESS' then
        max_ammo = 200
        amount_ammo = Config.AmountRevolverAmmo
        ammo_type = joaat('AMMO_REVOLVER_EXPRESS')
        ammo_save = 'ammo_express'
        ammo_item = 'ammo_revolver_express'
        valid_ammo = true
    end

    if weapongroup == -1101297303 and ammotype == 'AMMO_REVOLVER_EXPRESS_EXPLOSIVE' then
        max_ammo = 10
        amount_ammo = Config.AmountRevolverExplosiveAmmo
        ammo_type = joaat('AMMO_REVOLVER_EXPRESS_EXPLOSIVE')
        ammo_save = 'ammo_express_explosive'
        ammo_item = 'ammo_revolver_express_explosive'
        valid_ammo = true
    end

    ----------------------------
    -- pistol
    ----------------------------
    if weapongroup == 416676503 and ammotype == 'AMMO_PISTOL' then
        max_ammo = 100
        amount_ammo = Config.AmountPistolAmmo
        ammo_type = joaat('AMMO_PISTOL')
        ammo_save = 'ammo'
        ammo_item = 'ammo_pistol'
        valid_ammo = true
    end

    if weapongroup == 416676503 and ammotype == 'AMMO_PISTOL_HIGH_VELOCITY' then
        max_ammo = 100
        amount_ammo = Config.AmountPistolAmmo
        ammo_type = joaat('AMMO_PISTOL_HIGH_VELOCITY')
        ammo_save = 'ammo_high_velocity'
        ammo_item = 'ammo_pistol_high_velocity'
        valid_ammo = true
    end

    if weapongroup == 416676503 and ammotype == 'AMMO_PISTOL_SPLIT_POINT' then
        max_ammo = 50
        amount_ammo = Config.AmountPistolAmmo
        ammo_type = joaat('AMMO_PISTOL_SPLIT_POINT')
        ammo_save = 'ammo_split_point'
        ammo_item = 'ammo_pistol_split_point'
        valid_ammo = true
    end

    if weapongroup == 416676503 and ammotype == 'AMMO_PISTOL_EXPRESS' then
        max_ammo = 100
        amount_ammo = Config.AmountPistolAmmo
        ammo_type = joaat('AMMO_PISTOL_EXPRESS')
        ammo_save = 'ammo_express'
        ammo_item = 'ammo_pistol_express'
        valid_ammo = true
    end

    if weapongroup == 416676503 and ammotype == 'AMMO_PISTOL_EXPRESS_EXPLOSIVE' then
        max_ammo = 10
        amount_ammo = Config.AmountPistolExplosiveAmmo
        ammo_type = joaat('AMMO_PISTOL_EXPRESS_EXPLOSIVE')
        ammo_save = 'ammo_express_explosive'
        ammo_item = 'ammo_pistol_express_explosive'
        valid_ammo = true
    end

    ----------------------------
    -- repeater
    ----------------------------
    if weapongroup == -594562071 and ammotype == 'AMMO_REPEATER' then
        max_ammo = 200
        amount_ammo = Config.AmountRepeaterAmmo
        ammo_type = joaat('AMMO_REPEATER')
        ammo_save = 'ammo'
        ammo_item = 'ammo_repeater'
        valid_ammo = true
    end

    if weapongroup == -594562071 and ammotype == 'AMMO_REPEATER_HIGH_VELOCITY' then
        max_ammo = 200
        amount_ammo = Config.AmountRepeaterAmmo
        ammo_type = joaat('AMMO_REPEATER_HIGH_VELOCITY')
        ammo_save = 'ammo_high_velocity'
        ammo_item = 'ammo_repeater_high_velocity'
        valid_ammo = true
    end

    if weapongroup == -594562071 and ammotype == 'AMMO_REPEATER_SPLIT_POINT' then
        max_ammo = 100
        amount_ammo = Config.AmountRepeaterAmmo
        ammo_type = joaat('AMMO_REPEATER_SPLIT_POINT')
        ammo_save = 'ammo_split_point'
        ammo_item = 'ammo_repeater_split_point'
        valid_ammo = true
    end

    if weapongroup == -594562071 and ammotype == 'AMMO_REPEATER_EXPRESS' then
        max_ammo = 200
        amount_ammo = Config.AmountRepeaterAmmo
        ammo_type = joaat('AMMO_REPEATER_EXPRESS')
        ammo_save = 'ammo_express'
        ammo_item = 'ammo_repeater_express'
        valid_ammo = true
    end

    if weapongroup == -594562071 and ammotype == 'AMMO_REPEATER_EXPRESS_EXPLOSIVE' then
        max_ammo = 10
        amount_ammo = Config.AmountRepeaterExplosiveAmmo
        ammo_type = joaat('AMMO_REPEATER_EXPRESS_EXPLOSIVE')
        ammo_save = 'ammo_express_explosive'
        ammo_item = 'ammo_repeater_express_explosive'
        valid_ammo = true
    end

    ----------------------------
    -- rifle
    ----------------------------
    if (weapongroup == 970310034 or weapongroup == -1212426201) and ammotype == 'AMMO_RIFLE' then
        max_ammo = 100
        amount_ammo = Config.AmountRifleAmmo
        ammo_type = joaat('AMMO_RIFLE')
        ammo_save = 'ammo'
        ammo_item = 'ammo_rifle'
        valid_ammo = true
    end

    if (weapongroup == 970310034 or weapongroup == -1212426201) and ammotype == 'AMMO_RIFLE_HIGH_VELOCITY' then
        max_ammo = 100
        amount_ammo = Config.AmountRifleAmmo
        ammo_type = joaat('AMMO_RIFLE_HIGH_VELOCITY')
        ammo_save = 'ammo_high_velocity'
        ammo_item = 'ammo_rifle_high_velocity'
        valid_ammo = true
    end

    if (weapongroup == 970310034 or weapongroup == -1212426201) and ammotype == 'AMMO_RIFLE_SPLIT_POINT' then
        max_ammo = 50
        amount_ammo = Config.AmountRifleAmmo
        ammo_type = joaat('AMMO_RIFLE_SPLIT_POINT')
        ammo_save = 'ammo_split_point'
        ammo_item = 'ammo_rifle_split_point'
        valid_ammo = true
    end

    if (weapongroup == 970310034 or weapongroup == -1212426201) and ammotype == 'AMMO_RIFLE_EXPRESS' then
        max_ammo = 100
        amount_ammo = Config.AmountRifleAmmo
        ammo_type = joaat('AMMO_RIFLE_EXPRESS')
        ammo_save = 'ammo_express'
        ammo_item = 'ammo_rifle_express'
        valid_ammo = true
    end

    if (weapongroup == 970310034 or weapongroup == -1212426201) and ammotype == 'AMMO_RIFLE_EXPRESS_EXPLOSIVE' then
        max_ammo = 10
        amount_ammo = Config.AmountRifleExplosiveAmmo
        ammo_type = joaat('AMMO_RIFLE_EXPRESS_EXPLOSIVE')
        ammo_save = 'ammo_express_explosive'
        ammo_item = 'ammo_rifle_express_explosive'
        valid_ammo = true
    end

    ----------------------------
    -- shotgun
    ----------------------------
    if weapongroup == 860033945 and ammotype == 'AMMO_SHOTGUN' then
        max_ammo = 60
        amount_ammo = Config.AmountShotgunAmmo
        ammo_type = joaat('AMMO_SHOTGUN')
        ammo_save = 'ammo'
        ammo_item = 'ammo_shotgun'
        valid_ammo = true
    end

    if weapongroup == 860033945 and ammotype == 'AMMO_SHOTGUN_BUCKSHOT_INCENDIARY' then
        max_ammo = 14
        amount_ammo = Config.AmountShotgunIncendiaryAmmo
        ammo_type = joaat('AMMO_SHOTGUN_BUCKSHOT_INCENDIARY')
        ammo_save = 'ammo_buckshot_incendiary'
        ammo_item = 'ammo_shotgun_buckshot_incendiary'
        valid_ammo = true
    end

    if weapongroup == 860033945 and ammotype == 'AMMO_SHOTGUN_SLUG' then
        max_ammo = 60
        amount_ammo = Config.AmountShotgunAmmo
        ammo_type = joaat('AMMO_SHOTGUN_SLUG')
        ammo_save = 'ammo_slug'
        ammo_item = 'ammo_shotgun_slug'
        valid_ammo = true
    end

    if weapongroup == 860033945 and ammotype == 'AMMO_SHOTGUN_SLUG_EXPLOSIVE' then
        max_ammo = 10
        amount_ammo = Config.AmountShotgunExplosiveAmmo
        ammo_type = joaat('AMMO_SHOTGUN_SLUG_EXPLOSIVE')
        ammo_save = 'ammo_slug_explosive'
        ammo_item = 'ammo_shotgun_slug_explosive'
        valid_ammo = true
    end

    ----------------------------
    -- elephant rifle
    ----------------------------
    if weapongroup == 970310034 and weapon == -1717423096 and ammotype == 'AMMO_RIFLE_ELEPHANT' then
        max_ammo = 20
        amount_ammo = Config.AmountElephantRifleAmmo
        ammo_type = joaat('AMMO_RIFLE_ELEPHANT')
        ammo_save = 'ammo'
        ammo_item = 'ammo_rifle_elephant'
        valid_ammo = true
    end

    ----------------------------
    -- vermint rifle
    ----------------------------
    if weapongroup == 970310034 and weapon == -570967010 and ammotype == 'AMMO_22' then
        max_ammo = 100
        amount_ammo = Config.AmountVarmintAmmo
        ammo_type = joaat('AMMO_22')
        ammo_save = 'ammo'
        ammo_item = 'ammo_varmint'
        valid_ammo = true
    end

    if weapongroup == 970310034 and weapon == -570967010 and ammotype == 'AMMO_22_TRANQUILIZER' then
        max_ammo = 200
        amount_ammo = Config.AmountVarmintAmmo
        ammo_type = joaat('AMMO_22_TRANQUILIZER')
        ammo_save = 'ammo_tranquilizer'
        ammo_item = 'ammo_varmint_tranquilizer'
        valid_ammo = true
    end

    ----------------------------
    -- bow
    ----------------------------
    if weapongroup == -1241684019 and ammotype == 'AMMO_ARROW' then
        max_ammo = 40
        amount_ammo = Config.AmountArrowAmmo
        ammo_type = joaat('AMMO_ARROW')
        ammo_save = 'ammo'
        ammo_item = 'ammo_arrow'
        valid_ammo = true
    end

    if weapongroup == -1241684019 and ammotype == 'AMMO_ARROW_FIRE' then
        max_ammo = 8
        amount_ammo = Config.AmountArrowAmmo
        ammo_type = joaat('AMMO_ARROW_FIRE')
        ammo_save = 'ammo_fire'
        ammo_item = 'ammo_arrow_fire'
        valid_ammo = true
    end

    if weapongroup == -1241684019 and ammotype == 'AMMO_ARROW_POISON' then
        max_ammo = 8
        amount_ammo = Config.AmountArrowAmmo
        ammo_type = joaat('AMMO_ARROW_POISON')
        ammo_save = 'ammo_poison'
        ammo_item = 'ammo_arrow_poison'
        valid_ammo = true
    end

    if weapongroup == -1241684019 and ammotype == 'AMMO_ARROW_DYNAMITE' then
        max_ammo = 8
        amount_ammo = Config.AmountArrowAmmo
        ammo_type = joaat('AMMO_ARROW_DYNAMITE')
        ammo_save = 'ammo_dynamite'
        ammo_item = 'ammo_arrow_dynamite'
        valid_ammo = true
    end

    if not valid_ammo then
        lib.notify({ title = Lang:t('client.lang_2'), type = 'error', duration = 5000 })
        return
    end

    local currentammo = GetPedAmmoByType(cache.ped, ammo_type)
    local total = currentammo + amount_ammo

    if total <= max_ammo then
        AddAmmoToPedByType(cache.ped, ammo_type, amount_ammo, 0xCA3454E6)
        TriggerServerEvent('rsg-ammo:server:removeitem', ammo_item, 1)
        TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, ammo_save, total)
    else
        lib.notify({ title = Lang:t('client.lang_3'), type = 'error', duration = 5000 })
    end

end)

------------------------------------------
-- update ammo loop
------------------------------------------
CreateThread(function()
    SetWeaponsNoAutoswap(true)
    while true do
        local weaponInHands = exports['rsg-weapons']:weaponInHands()
        local heldWeapon = GetPedCurrentHeldWeapon(cache.ped)
        local currentSerial = weaponInHands[heldWeapon]
        if weaponInHands[heldWeapon] ~= nil and heldWeapon ~= -1569615261 then
            local IsGun = IsWeaponAGun(heldWeapon)
            if IsGun then
                local weaponObject = GetPedWeaponObject(cache.ped, 1)
                local currenttype = GetCurrentPedWeaponAmmoType(cache.ped, weaponObject)
                local currentammo = GetPedAmmoByType(cache.ped, currenttype)

                -----------------------
                -- revolver ammo
                -----------------------
                if currenttype == joaat('AMMO_REVOLVER') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_REVOLVER_EXPRESS') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express', currentammo)
                end
                if currenttype == joaat('AMMO_REVOLVER_EXPRESS_EXPLOSIVE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express_explosive', currentammo)
                end
                if currenttype == joaat('AMMO_REVOLVER_HIGH_VELOCITY') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_high_velocity', currentammo)
                end
                if currenttype == joaat('AMMO_REVOLVER_SPLIT_POINT') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_split_point', currentammo)
                end

                -----------------------
                -- pistol ammo
                -----------------------
                if currenttype == joaat('AMMO_PISTOL') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_PISTOL_EXPRESS') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express', currentammo)
                end
                if currenttype == joaat('AMMO_PISTOL_EXPRESS_EXPLOSIVE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express_explosive', currentammo)
                end
                if currenttype == joaat('AMMO_PISTOL_HIGH_VELOCITY') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_high_velocity', currentammo)
                end
                if currenttype == joaat('AMMO_PISTOL_SPLIT_POINT') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_split_point', currentammo)
                end

                -----------------------
                -- repeater ammo
                -----------------------
                if currenttype == joaat('AMMO_REPEATER') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_REPEATER_EXPRESS') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express', currentammo)
                end
                if currenttype == joaat('AMMO_REPEATER_EXPRESS_EXPLOSIVE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express_explosive', currentammo)
                end
                if currenttype == joaat('AMMO_REPEATER_HIGH_VELOCITY') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_high_velocity', currentammo)
                end
                if currenttype == joaat('AMMO_REPEATER_SPLIT_POINT') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_split_point', currentammo)
                end

                -----------------------
                -- rifle ammo
                -----------------------
                if currenttype == joaat('AMMO_RIFLE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_RIFLE_EXPRESS') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express', currentammo)
                end
                if currenttype == joaat('AMMO_RIFLE_EXPRESS_EXPLOSIVE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_express_explosive', currentammo)
                end
                if currenttype == joaat('AMMO_RIFLE_HIGH_VELOCITY') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_high_velocity', currentammo)
                end
                if currenttype == joaat('AMMO_RIFLE_SPLIT_POINT') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_split_point', currentammo)
                end

                -----------------------
                -- shotgun ammo
                -----------------------
                if currenttype == joaat('AMMO_SHOTGUN') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_SHOTGUN_BUCKSHOT_INCENDIARY') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_buckshot_incendiary', currentammo)
                end
                if currenttype == joaat('AMMO_SHOTGUN_SLUG') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_slug', currentammo)
                end
                if currenttype == joaat('AMMO_SHOTGUN_SLUG_EXPLOSIVE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_slug_explosive', currentammo)
                end

                -----------------------
                -- elephant rifle ammo
                -----------------------
                if currenttype == joaat('AMMO_RIFLE_ELEPHANT') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end

                -----------------------
                -- varmint rifle ammo
                -----------------------
                if currenttype == joaat('AMMO_22') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_22_TRANQUILIZER') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_tranquilizer', currentammo)
                end

                -----------------------
                -- bow ammo
                -----------------------
                if currenttype == joaat('AMMO_ARROW') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo', currentammo)
                end
                if currenttype == joaat('AMMO_ARROW_FIRE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_fire', currentammo)
                end
                if currenttype == joaat('AMMO_ARROW_POISON') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_poison', currentammo)
                end
                if currenttype == joaat('AMMO_ARROW_DYNAMITE') then
                    TriggerServerEvent('rsg-ammo:server:updateammo', currentSerial, 'ammo_dynamite', currentammo)
                end

            end
        end
        Wait(1000)
    end
end)

------------------------------------------
-- easy reload weapon function
------------------------------------------
function HandleReload()
    
    if not Config.EasyReload then
        return
    end

    local weaponHash = GetPedCurrentHeldWeapon(cache.ped)
    if weaponHash and weaponHash ~= -1569615261 then
        local weapon = GetPedCurrentHeldWeapon(cache.ped)
        local weapongroup = GetWeapontypeGroup(weapon)
        local group_revolver = joaat('group_revolver')
        local group_pistol = joaat('group_pistol')
        local group_repeater = joaat('group_repeater')
        local group_rifle = joaat('group_rifle')
        local group_sniper = joaat('group_sniper')
        local group_shotgun = joaat('group_shotgun')

        if weapongroup == group_revolver then
            local ammo1 = RSGCore.Functions.HasItem('ammo_revolver', 1)
            local ammo2 = RSGCore.Functions.HasItem('ammo_revolver_high_velocity', 1)
            local ammo3 = RSGCore.Functions.HasItem('ammo_revolver_split_point', 1)
            local ammo4 = RSGCore.Functions.HasItem('ammo_revolver_express', 1)
            local ammo5 = RSGCore.Functions.HasItem('ammo_revolver_express_explosive', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REVOLVER')
            end
            if ammo2 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REVOLVER_HIGH_VELOCITY')
            end
            if ammo3 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REVOLVER_SPLIT_POINT')
            end
            if ammo4 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REVOLVER_EXPRESS')
            end
            if ammo5 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REVOLVER_EXPRESS_EXPLOSIVE')
            end
        end

        if weapongroup == group_pistol then
            local ammo1 = RSGCore.Functions.HasItem('ammo_pistol', 1)
            local ammo2 = RSGCore.Functions.HasItem('ammo_pistol_high_velocity', 1)
            local ammo3 = RSGCore.Functions.HasItem('ammo_pistol_split_point', 1)
            local ammo4 = RSGCore.Functions.HasItem('ammo_pistol_express', 1)
            local ammo5 = RSGCore.Functions.HasItem('ammo_pistol_express_explosive', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_PISTOL')
            end
            if ammo2 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_PISTOL_HIGH_VELOCITY')
            end
            if ammo3 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_PISTOL_SPLIT_POINT')
            end
            if ammo4 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_PISTOL_EXPRESS')
            end
            if ammo5 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_PISTOL_EXPRESS_EXPLOSIVE')
            end
        end

        if weapongroup == group_repeater then
            local ammo1 = RSGCore.Functions.HasItem('ammo_repeater', 1)
            local ammo2 = RSGCore.Functions.HasItem('ammo_repeater_high_velocity', 1)
            local ammo3 = RSGCore.Functions.HasItem('ammo_repeater_split_point', 1)
            local ammo4 = RSGCore.Functions.HasItem('ammo_repeater_express', 1)
            local ammo5 = RSGCore.Functions.HasItem('ammo_repeater_express_explosive', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REPEATER')
            end
            if ammo2 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REPEATER_HIGH_VELOCITY')
            end
            if ammo3 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REPEATER_SPLIT_POINT')
            end
            if ammo4 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REPEATER_EXPRESS')
            end
            if ammo5 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_REPEATER_EXPRESS_EXPLOSIVE')
            end
        end

        if (weapongroup == group_rifle or weapongroup == group_sniper) and weaponHash ~= `weapon_rifle_elephant` and weaponHash ~= `weapon_rifle_varmint` then
            local ammo1 = RSGCore.Functions.HasItem('ammo_rifle', 1)
            local ammo2 = RSGCore.Functions.HasItem('ammo_rifle_high_velocity', 1)
            local ammo3 = RSGCore.Functions.HasItem('ammo_rifle_split_point', 1)
            local ammo4 = RSGCore.Functions.HasItem('ammo_rifle_express', 1)
            local ammo5 = RSGCore.Functions.HasItem('ammo_rifle_express_explosive', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_RIFLE')
            end
            if ammo2 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_RIFLE_HIGH_VELOCITY')
            end
            if ammo3 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_RIFLE_SPLIT_POINT')
            end
            if ammo4 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_RIFLE_EXPRESS')
            end
            if ammo5 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_RIFLE_EXPRESS_EXPLOSIVE')
            end
        end

        if weapongroup == group_shotgun then
            local ammo1 = RSGCore.Functions.HasItem('ammo_shotgun', 1)
            local ammo2 = RSGCore.Functions.HasItem('ammo_shotgun_buckshot_incendiary', 1)
            local ammo3 = RSGCore.Functions.HasItem('ammo_shotgun_slug', 1)
            local ammo4 = RSGCore.Functions.HasItem('ammo_shotgun_slug_explosive', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_SHOTGUN')
            end
            if ammo2 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_SHOTGUN_BUCKSHOT_INCENDIARY')
            end
            if ammo3 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_SHOTGUN_SLUG')
            end
            if ammo4 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_SHOTGUN_SLUG_EXPLOSIVE')
            end
        end

        if weaponHash == `weapon_rifle_elephant` then
            local ammo1 = RSGCore.Functions.HasItem('ammo_rifle_elephant', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_RIFLE_ELEPHANT')
            end
        end
        
        if weaponHash == `weapon_rifle_varmint` then
            local ammo1 = RSGCore.Functions.HasItem('ammo_varmint', 1)
            local ammo2 = RSGCore.Functions.HasItem('ammo_varmint_tranquilizer', 1)
            if ammo1 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_22')
            end
            if ammo2 then
                TriggerEvent('rsg-ammo:client:AddAmmo', 'AMMO_22_TRANQUILIZER')
            end
        end
        
    else
        lib.notify({ title = Lang:t('client.lang_4'), type = 'error', duration = 5000 })
    end
end

------------------------------------------
-- reload weapon by keybind
------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsControlJustReleased(0, RSGCore.Shared.Keybinds[Config.AmmoReloadKeybind]) then
            HandleReload()
        end
    end
end)
