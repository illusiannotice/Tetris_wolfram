(* ::Package:: *)

BeginPackage["Functions`"];


changePosY::usage = "Changes y pos of object";
randomPos::usage = "Generates random pos for object.";


Begin["`Private`"];


randomPos[lim_] := RandomInteger[{1,lim}]; 


changePosY[y_]:= y + 1


End[];


EndPackage[];
