(* ::Package:: *)

BeginPackage["Functions`"];


changePosY::usage = "Changes y pos of object";
changeToRight::usage = "Moves figure to right";
changeToLeft::usage = "Moves figure to left";
randomPos::usage = "Generates random pos for object.";
randomChoice::usage = "Selects one random figure";
clearDisplay::usage = "Clears display";
rotateFigure::usage = "Rotates falling figure.";


Begin["`Private`"];


randomPos[lim_] := RandomInteger[{1,lim}]; 


randomChoice[n_]:= RandomInteger[{1,n}];


changePosY[y_]:= y + 1;


changeToRight[x_]:=x + 1;


changeToLeft[x_]:= x - 1;


clearDisplay[]:= Return[RandomInteger[0,{23,10}]]


rotateFigure[figure_,angle_]:= Block[{tmpImg}, 
 tmpImg = Image[figure];
 tmpImg = ImageRotate[tmpImg, angle Degree];
 Return[ImageData[tmpImg,"Bit"]]]


End[];


EndPackage[];
