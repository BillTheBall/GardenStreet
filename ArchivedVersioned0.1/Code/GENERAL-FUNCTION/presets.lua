PRESETS = {}

local BINDFORINTERACT = 3
local ADJUSTBINDFORINTERACT = A1
local WATERINGKEYBIND = 23
local PAUSEKEYBIND = 37
function PRESETS:load()
	InteractKeyBinded = 1
	OpenDevOptionsKeyBinded = A0
	WateringKeyBinded = 1
	PauseKeyBinded = 37
	KEYS = {
		A,
		B,
		C,
		D,
		E,
		F,
		G,
		H,
		I,
		J,
		K,
		L,
		M,
		N,
		O,
		P,
		Q,
		R,
		S,
		T,
		U,
		V,
		W,
		X,
		Y,
		Z,
		A1,
		A2,
		A3,
		A4,
		A5,
		A6,
		A7,
		A8,
		A9,
		A0,
		Esc,
	}
end

function PRESETS:update(dt)
	KEYS = {
		A, --1
		B, --2
		C, --3
		D, --4
		E, --5
		F, --6
		G, --7
		H, --8
		I, --9
		J, --10
		K, --11
		L, --12
		M, --13
		N, --14
		O, --15
		P, --16
		Q, --17
		R, --18
		S, --19
		T, --20
		U, --21
		V, --22
		W, --23
		X, --24
		Y, --25
		Z, --26
		A1, --27
		A2, --28
		A3, --29
		A4, --30
		A5, --31
		A6, --32
		A7, --33
		A8, --34
		A9, --35
		A0, --36
		Esc, --37
	}
	ADJUSTBINDFORINTERACT = KEYS[27]
	if ADJUSTBINDFORINTERACT then
		BINDFORINTERACT = BINDFORINTERACT + 1
	end
	OpenDevOptionsKeyBinded = KEYS[35]
	WateringKeyBinded = KEYS[WATERINGKEYBIND]
	InteractKeyBinded = KEYS[BINDFORINTERACT]
	PauseKeyBinded = KEYS[PAUSEKEYBIND]
end
