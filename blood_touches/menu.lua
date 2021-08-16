ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RMenu.Add("Menu", "main", RageUI.CreateMenu("Menu Touches","Menu"))
RMenu:Get('Menu', 'main'):SetRectangleBanner(255, 153, 102)
RMenu:Get("Menu", "main").Closed = function()
    bloodins = false end 
    function OpenMenu()

    if bloodins then
        bloodins = false
        return
    else
        bloodins = true
        RageUI.Visible(RMenu:Get('Menu', 'main'), true)
            while bloodins do
                RageUI.IsVisible(RMenu:Get('Menu', 'main'), true, true, true, function()
                    RageUI.Separator(" Liste des touches présentes sur le serveur. ")
                    RageUI.ButtonWithStyle("Boutique", "F10 est la touche pour la Boutique",{RightLabel = "F10"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Inventaire", "F2 est la touche pour ouvrir votre inventaire",{RightLabel = "F2"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Animations", "F3 est la touche pour les Animations",{RightLabel = "F3"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Menu Inventaire", "F5 est la touche pour l'inventaire",{RightLabel = "F5"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Menu Métiers", "F6 est la touche pour le Menu Métier",{RightLabel = "F6"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Menu Gang", "F7 est la touche pour le Menu Gang",{RightLabel = "F7"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Lever les mains", "² est la touche pour lever les mains",{RightLabel = "²"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Pointer du doigt", "B est la touche pour pointer du doigt",{RightLabel = "B"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Drift", "Shift est la touche pour drifter",{RightLabel = "SHIFT"} ,function()
                    end)
                    RageUI.ButtonWithStyle("Signalement", "/report dans le tchat pour signaler tout comportement suspect",{RightLabel = "/report"} ,function()
                    end)
            end, function()
            end)
        Wait(1)
        end
    end
end
-------------------------------------------------------------------------------------------------------------------
RegisterCommand(Config.registername, function()
    OpenMenu()
end)