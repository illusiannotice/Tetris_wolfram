(* ::Package:: *)

BeginPackage["Objects`"];


squareObject::usage = "squareObject[$pos, $k, $speed]";
getShape::usage = "....";
getPos::usage = "....";
getSpeed::usage = "....";
setPos::usage = "....";
setSpeed::usage = "....";


Begin["`Private`"];


squareObject[$pos_, $k_, $speed_]:= Module[
{pos, k, speed, shape,self},

SetAttributes[self, HoldAll];
(*---get attributes---*)
self@getShape[]:= Return[shape];
self@getPos[]:= Return[pos];
self@getSpeed[]:= Return[speed];
(*---set attributes---*)
self@setPos[val_] := (pos = val);
self@setSpeed[val_]:=(speed = val);
pos = $pos;
k = $k;
speed = $speed;
shape = {{1, 1},
		 {1, 1}};
self
];


End[];


EndPackage[];
