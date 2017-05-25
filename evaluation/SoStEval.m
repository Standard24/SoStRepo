(* ::Package:: *)

BeginPackage["SoStEval`"]

latexStyle::usage=""
plotOptions::usage=""
expath::usage=""

Begin["`Private`"]

latexStyle[x_]:=Style[x,FontSize->16,FontFamily->"Latin Modern Roman"]

plotOptions={
Frame->True,
ImageSize->600,
FrameTicksStyle->Directive[FontSize->16,FontFamily->"Latin Modern Roman"]
}

expath="../SoStProtokoll/img/"

End[]

EndPackage[]
