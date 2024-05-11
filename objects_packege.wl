BeginPackage["Objects"];


squareObject[$pos_, $speed, $k] := Module[
	{shape, pos, speed, k, self},
	shape = {{1, 1},
			 {1, 1}};
	pos = $pos
	speed = $speed
	k = $k
	(*getattr*)
	self@getSpeed[] := Return[speed]
	self@getPos[]:= Return[pos]
]