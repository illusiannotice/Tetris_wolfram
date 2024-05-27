(* ::Package:: *)

BeginPackage["Objects`"];


figureBuild::usage = "....";
getShape::usage = "....";
getPosX::usage = "....";
getPosY::usage = "....";
getFallIndex::usage = "....";
getSpeed::usage = "....";
setPosX::usage = "....";
setPosY::usage = "....";
setSpeed::usage = "....";
setFallIndex::usage = "....";
placeOnDisplay::usage = "....";
isFalling::usage = "....";


Begin["`Private`"];


figureBuild[$pos_, $k_, $speed_, $fallIndex_, $shape_]:= Module[
{posX, posY, k, speed, shape, self,i,j, fallIndex},
(*---constructor code---*)
posX = $pos[[2]];
posY = $pos[[1]];
k = $k;
speed = $speed;
shape = $shape;
fallIndex = $fallIndex;
		 
SetAttributes[self, HoldAll];
(*---get attributes---*)
self@getShape[]:= Return[shape];
self@getPosX[]:= Return[posX];
self@getPosY[]:= Return[posY];
self@getSpeed[]:= Return[speed];
self@getFallIndex[]:= Return[fallIndex];
(*---set attributes---*)
self@setPosX[val_] := (posX = val);
self@setPosY[val_]:=(posY = val);
self@setSpeed[val_]:=(speed = val);
self@setFallIndex[val_]:=(fallIndex = val);
(*---object methods---*)
self@placeOnDisplay[display_]:= (For[i = posY, i < posY + Length[shape], i++, 
								 For[j = posX, j < posX + Length[shape[[i - (posY - 1)]]], j++,
								  display[[i,j]] = shape[[i-(posY - 1), j -(posX - 1)]];
								  If[i > Length[shape], display[[i - Length[shape],j]] = 0];
								  ]];
								 Return[display]);
self@isFalling[display_]:= If[display[[posY + Length[shape]- 1, posX]] != 1, Return[True], Return[False]];								

self
];



End[];


EndPackage[];
