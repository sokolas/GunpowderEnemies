for i, entity in ipairs(EntityGetWithTag("teleportable_NOT")) do
    if EntityHasTag(entity, "done") then
    elseif EntityGetComponent(entity, "AnimalAIComponent") ~= null then
        EntityAddTag(entity, "done")
        local damagemodels = EntityGetComponent( entity, "DamageModelComponent" )
        if( damagemodels ~= nil ) then
            for i,damagemodel in ipairs(damagemodels) do
                ComponentSetValue( damagemodel, "blood_material", "gunpowder_unstable" )
                ComponentSetValue( damagemodel, "blood_spray_material", "gunpowder_unstable" )
                ComponentSetValue( damagemodel, "blood_multiplier", "3.0" )
            end
        end
    else
        EntityAddTag(entity, "done")
    end
end
