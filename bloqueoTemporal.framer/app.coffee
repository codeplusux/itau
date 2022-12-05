# Project Info

Framer.Info =
	title: "Bloqueo desbloque de tarjetas"
	version: "1"
	author: "@uxpablo"
	linkedin: "http://linkedin.com/in/uxpablo/"

#Utilities

Framer.Extras.Hints.disable()

#General

flow = new FlowComponent
flow.showNext(homeBloqueo)

#homeBloqueo

scroll = new ScrollComponent
	scrollHorizontal: false
	directionLock: true
	y:71
	x: Align.center
	width: 375
	height: 593
	parent: homeBloqueo
	speedY: 1


scrollContent = new PageComponent
	parent: scroll.content
	width: 375
	height: 749
	scrollHorizontal: false
	speedY: 0
	
scrollContent.addPage(scrollTarjetas)

#Switch 1
lockIcon.states.a =
	opacity: 1

lockIcon.animationOptions =
	time: 0.17
	
dot.states.a =
	x: 4

dot.animationOptions =
	time: 0.17

framerBlue = new Color
	r: 0
	g: 0
	b: 0
	a: 50
	
switch_1.states.a =
	backgroundColor: framerBlue
	borderColor: "#7D7D7D"
	borderWidth: 2

switch_1.animationOptions = 
	time: 0.17

overlayLockMaster.states.a =
	opacity: 0.6

overlayLockMaster.animationOptions =
	time: 0

btnSwitch1.onTap () ->
	overlayLockMaster.stateCycle()
	loader.animate
		opacity: 1
		time:0
		rotation:500
	switch_1.animate
		opacity: 0.3
		time: 0
	Utils.delay 1, -> 
		loader.animate
			opacity: 0
			time:0
	Utils.delay 1.1, ->
		switch_1.animate
			opacity: 1
			time: 0
		switch_1.stateCycle()
		dot.stateCycle()
		lockIcon.stateCycle()
		

	


#Switch 2


btnSwitchVisa.states.a =
	gradient: 
		start: "#1A1A1A"
		end: "#C6C6C6"
		

btnSwitchVisa.onTap () ->
	flow.showOverlayBottom(itauCode)

	

#itauCode

closeItauCode.onClick ->
	flow.showPrevious()
	