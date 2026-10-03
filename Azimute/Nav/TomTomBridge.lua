-- Integração opcional com o TomTom (## OptionalDeps: TomTom).
-- O TomTom é "All Rights Reserved": só chamamos a API pública dele, sem
-- copiar código. Sem o TomTom instalado, o Azimute usa a própria seta.
local addonName, ns = ...

local Bridge = {}
ns.TomTomBridge = Bridge

function Bridge:IsAvailable()
    return ns.db.useTomTom
        and type(TomTom) == "table"
        and type(TomTom.AddWaypoint) == "function"
end

function Bridge:IsActive()
    return self.uid ~= nil
end

function Bridge:Clear()
    if self.uid and type(TomTom) == "table" and type(TomTom.RemoveWaypoint) == "function" then
        TomTom:RemoveWaypoint(self.uid)
    end
    self.uid = nil
end

-- target: { mapID, x, y (0-1), radius }
function Bridge:Set(target, title)
    self:Clear()
    if not self:IsAvailable() then
        return false
    end
    self.uid = TomTom:AddWaypoint(target.mapID, target.x, target.y, {
        title = title,
        from = addonName,
        persistent = false,
        minimap = true,
        world = true,
        crazy = true,
        silent = true,
        -- A chegada é controlada pelo Azimute (Nav/Navigator.lua).
        cleardistance = 0,
        arrivaldistance = target.radius,
    })
    return self.uid ~= nil
end
