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
setShape::usage = "....";
setFallIndex::usage = "....";
placeOnDisplay::usage = "....";
isFalling::usage = "....";


Begin["`Private`"];


figureBuild[$pos_, $k_, $speed_, $fallIndex_, $shape_]:= Module[
{posX, posY, k, speed, shape, self,i,j, fallIndex, counter, whiteIsFound, whitePoint},
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
self@setShape[val_]:=(shape = val);
(*---object methods---*)
self@placeOnDisplay[display_, mov_]:= (If[mov, display = RandomInteger[0,{23,10}]];For[i = posY, i < posY + Length[shape], i++, 
								 For[j = posX, j < posX + Length[shape[[i - (posY - 1)]]], j++,
								  If[shape[[i-(posY - 1), j -(posX - 1)]] != 0, display[[i,j]] = shape[[i-(posY - 1), j -(posX - 1)]]];
								  If[i > Length[shape], display[[i - Length[shape],j]] = 0];
								  If[mov,
								   If[posX > 1, display[[i, posX - 1]] = 0];
								   If[posX + Length[shape[[i - (posY - 1)]]] <= Length[display[[1]]], display[[i, posX + Length[shape[[i - (posY - 1)]]]]] = 0];
								  ]
								  ]];
								 Return[display]);
self@isFalling[display_]:= (For[i = 0, i < Length[shape[[1]]], i++, counter = 0; whitePoint = 0; For[j = whitePoint, j <= Length[shape], j++, If[display[[posY + whitePoint, posX + i, 1]] == 1, If[display[[posY + j, posX + i, 1]] == 0, counter = counter + 1], whitePoint = whitePoint + 1]];If[counter == 0, Return[False]]];Return[True]);								

self
];



End[];


EndPackage[];
