(* ::Package:: *)

BeginPackage["Objects`"];


squareShape::usage = "squareObject[$pos, $k, $speed]";
getShape::usage = "....";
getPosX::usage = "....";
getPosY::usage = "....";
getSpeed::usage = "....";
setPosX::usage = "....";
setPosY::usage = "....";
setSpeed::usage = "....";
placeOnDisplay::usage = "....";


Begin["`Private`"];


squareShape[$pos_, $k_, $speed_]:= Module[
{posX, posY, k, speed, shape, self,i,j},
(*---constructor code---*)
posX = $pos[[2]];
posY = $pos[[1]];
k = $k;
speed = $speed;
shape = {{1, 1},
		 {1, 1}};
SetAttributes[self, HoldAll];
(*---get attributes---*)
self@getShape[]:= Return[shape];
self@getPosX[]:= Return[posX];
self@getPosY[]:= Return[posY];
self@getSpeed[]:= Return[speed];
(*---set attributes---*)
self@setPosX[val_] := (posX = val);
self@setPosY[val_]:=(posY = val);
self@setSpeed[val_]:=(speed = val);
(*---object methods---*)
self@placeOnDisplay[display_]:= (For[i = posY, i <= posY + Length[shape] - 1, i++, 
								 For[j = posX, j <= posX + Length[shape[[i]]] - 1, j++,
								  Print[j];
								  display[[i,j]] = shape[[i, j -(posX - 1)]];
								  ]];
								 Return[display]);

self
];


End[];


EndPackage[];
