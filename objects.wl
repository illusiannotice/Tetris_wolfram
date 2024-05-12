(* ::Package:: *)

BeginPackage["Objects`"];


squareShape::usage = "squareObject[$pos, $k, $speed]";
getShape::usage = "....";
getPos::usage = "....";
getSpeed::usage = "....";
setPos::usage = "....";
setSpeed::usage = "....";
placeOnDisplay::usage = "....";


Begin["`Private`"];


squareShape[$pos_, $k_, $speed_]:= Module[
{pos, k, speed, shape, self,i,j},

SetAttributes[self, HoldAll];
(*---get attributes---*)
self@getShape[]:= Return[shape];
self@getPos[]:= Return[pos];
self@getSpeed[]:= Return[speed];
(*---set attributes---*)
self@setPos[val_] := (pos = val);
self@setSpeed[val_]:=(speed = val);
(*---object methods---*)
self@placeOnDisplay[display_]:= (For[i = 1,i <= Length[shape], i++,For[j = pos; j <= pos + Length[shape[[i]]] - 1, j++,Print[j];display[[i,j]] = shape[[i, j -(pos - 1)]]]];
										 Return[display]);
(*---constructor code---*)
pos = $pos;
k = $k;
speed = $speed;
shape = {{1, 1},
		 {1, 1}};
self
];


End[];


EndPackage[];
