(* ::Package:: *)

BeginPackage["Functions`"];


randomPos::usage = "Generates random pos for object."


Begin["`Private`"];


randomPos[lim_] := RandomInteger[lim]; 


End[];


EndPackage[];
