(* ::Package:: *)

BeginPackage["SoStEval`"]
Needs["ErrorBarPlots`"]

latexStyle::usage="Style[x,FontSize->16,FontFamily->'Latin Modern Roman']"
plotOptions::usage=""
expath::usage=""
makeErrorListPlotData::usage="makeErrorListPlotData[d_,e_]:={#1,ErrorBar[#2]}&@@@Transpose[{d,e}]"

Begin["`Private`"]

latexStyle[x_]:=Style[x,FontSize->18,FontFamily->"Latin Modern Roman"]

plotOptions={Frame->True,
ImageSize->700,
PlotMarkers->{"\[Bullet]", 15},
FrameTicksStyle->Directive[FontSize->18,FontFamily->"Latin Modern Roman"]}

expath="../SoStProtokoll/img/"

makeErrorListPlotData[d_,e_]:={#1,ErrorBar[#2]}&@@@Transpose[{d,e}]

End[]
EndPackage[]
