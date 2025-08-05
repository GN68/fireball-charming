-- code here

vanilla_model.PLAYER:setVisible(false)

animations.model.walk:play()

local UP = vec(0,1,0)

events.TICK:register(function ()
	local vel = player:getVelocity()
	local lvel = vectors.rotateAroundAxis(player:getBodyYaw(),vel, UP)
	animations.model.walk:speed(lvel.z*22)
end)

models.model.Base.Waist.Chest.Hed.HelmetPivot:scale(0.8)
models.model.Base.Waist.Chest.Hed.Eyes:setPrimaryRenderType("EMISSIVE_SOLID")

renderer:setShadowRadius(0)

--models:addChild(models.model:copy("shadow"):scale(1,0,1):setColor(0,0,0))

events.RENDER:register(function ()
	models:setPos(0,player:isCrouching() and 2.16 or 0,0)
end)