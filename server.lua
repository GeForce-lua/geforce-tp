-----------------------------------------------------------------------------------------------------------------------------------------
-- 	TPTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpto',function(source,args,rawCommand) -- "/TPTO" 
    local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"tp.perm") then
        if args[1] then
            local tplayer = vRP.getUserSource(parseInt(args[1]))
				if vRP.request(tplayer,"O ID: "..source.." quer ir até você! Deseja aceitar ?",10) then
					TriggerClientEvent("Notify",source,"importante","A solicitação foi enviada!")
                if tplayer then
					vRPclient.teleport(source,vRPclient.getPosition(tplayer))
					TriggerClientEvent("Notify",source,"sucesso","A solicitação foi aceita!")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPTOME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tptome',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"tp.perm") then
		if args[1] then
			local tplayer = vRP.getUserSource(parseInt(args[1]))
				local x,y,z = vRPclient.getPosition(source)
					if vRP.request(tplayer,"O ID: "..source.." quer puxar você até a localização dele! Deseja aceitar ?",10) then
						TriggerClientEvent("Notify",source,"importante","A solicitação foi enviada!")
					if tplayer then
						vRPclient.teleport(tplayer,x,y,z)
						TriggerClientEvent("Notify",source,"sucesso","A solicitação foi aceita!")
					end
				end
			end
		end
	end
end)
