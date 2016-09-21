--パッチワーク・ファーニマル
--Fluffal Patchwork
--Script by mercury233
function c100200119.initial_effect(c)
	--setcode
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCode(EFFECT_ADD_SETCODE)
	e1:SetValue(0xad)
	c:RegisterEffect(e1)
	--fusion substitute
	local e2=Effect.CreateEffect(c)
	e2:SetType(EFFECT_TYPE_SINGLE)
	e2:SetCode(EFFECT_FUSION_SUBSTITUTE)
	e2:SetCondition(c100200119.subcon)
	e2:SetValue(c100200119.subval)
	c:RegisterEffect(e2)
end
function c100200119.subcon(e)
	local c=e:GetHandler()
	return c:IsLocation(LOCATION_MZONE)
end
function c100200119.subval(e,c)
    return c:IsSetCard(0xad)
end
