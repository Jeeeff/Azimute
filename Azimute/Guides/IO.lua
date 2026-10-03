-- Importar/exportar guias: texto puro ou código compactado "!AZ1!..." (ou "!GU1!", do GuiaUp).
-- Guias importados (e gravados) ficam em AzimuteDB.imported e passam pelo
-- mesmo parser só-de-dados dos guias embutidos.
local addonName, ns = ...
local L = ns.L

local IO = {}
ns.GuideIO = IO

local PREFIX = "!AZ1!"
local OLD_PREFIX = "!GU1!" -- códigos exportados pelo GuiaUp

-- C_EncodingUtil existe no Forever e no Midnight (11.1.5+). Se faltar ou
-- falhar, exportamos o texto puro, que também é aceito na importação.
function IO.Encode(text)
    local util = C_EncodingUtil
    if util and util.CompressString and util.EncodeBase64 then
        local ok, encoded = pcall(function()
            return util.EncodeBase64(util.CompressString(text))
        end)
        if ok and type(encoded) == "string" and encoded ~= "" then
            return PREFIX .. encoded
        end
    end
    return text
end

-- Devolve o texto do guia, ou nil se o código estiver corrompido.
function IO.Decode(input)
    input = strtrim(input or "")
    if input:sub(1, #OLD_PREFIX) == OLD_PREFIX then
        input = PREFIX .. input:sub(#OLD_PREFIX + 1)
    end
    if input:sub(1, #PREFIX) ~= PREFIX then
        return input
    end
    local util = C_EncodingUtil
    if not (util and util.DecodeBase64 and util.DecompressString) then
        return nil
    end
    local ok, text = pcall(function()
        return util.DecompressString(util.DecodeBase64(input:sub(#PREFIX + 1)))
    end)
    if ok and type(text) == "string" and text ~= "" then
        return text
    end
    return nil
end

-- Devolve true, guia ou false, mensagem de erro.
function IO.Import(input)
    local text = IO.Decode(input)
    if not text or text == "" then
        return false, L["IMPORT_BAD"]
    end
    local ok, result = ns.Registry:Register(text, "imported", true)
    if not ok then
        return false, result and result[1] or L["IMPORT_BAD"]
    end
    ns.db.imported[result.id] = text
    return true, result
end

function IO.Export(id, compact)
    local guide = ns.Registry:Get(id)
    if not guide or not guide.text then
        return nil
    end
    return compact and IO.Encode(guide.text) or guide.text
end

-- Só guias importados/gravados podem ser removidos.
function IO.Remove(id)
    if not ns.db.imported[id] then
        return false
    end
    ns.db.imported[id] = nil
    ns.Registry:Remove(id)
    if ns.Engine.guide and ns.Engine.guide.id == id then
        ns.Engine:Unload()
    end
    return true
end

ns:On("INIT", function()
    for id, text in pairs(ns.db.imported) do
        if not ns.Registry:Register(text, "imported", true) then
            ns.Debug("guia importado inválido: %s", tostring(id))
        end
    end
end)
