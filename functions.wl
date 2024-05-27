(* ::Package:: *)

BeginPackage["Functions`"];


changePosY::usage = "Changes y pos of object";
randomPos::usage = "Generates random pos for object.";
randomChoice::usage = "Selects one rondom figure";


Begin["`Private`"];


randomPos[lim_] := RandomInteger[{1,lim}]; 


randomChoice[n_]:= RandomInteger[{1,n}]


changePosY[y_]:= y + 1


End[];


EndPackage[];
