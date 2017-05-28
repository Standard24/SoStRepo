(* ::Package:: *)

BeginPackage["SoStEval`"]
Needs["ErrorBarPlots`"]

latexStyle::usage="Style[x,FontSize->16,FontFamily->'Latin Modern Roman']"
plotOptions::usage=""
expathImg::usage=""
expathSrc::usage=""
makeErrorListPlotData::usage="makeErrorListPlotData[d_,e_]:={#1,ErrorBar[#2]}&@@@Transpose[{d,e}]"
exportLatexTable::usage="exportLatexTable[dat_,path_] takes a list of rows of a table and exports
it to a latex-table at path_"

Begin["`Private`"]

latexStyle[x_]:=Style[x,FontSize->18,FontFamily->"Latin Modern Roman"]

plotOptions={Frame->True,
ImageSize->700,
PlotMarkers->{"\[Bullet]", 15},
FrameTicksStyle->Directive[FontSize->18,FontFamily->"Latin Modern Roman"]}

expathImg="../SoStProtokoll/img/"
expathSrc="../SoStProtokoll/src/"

makeErrorListPlotData[d_,e_]:={#1,ErrorBar[#2]}&@@@Transpose[{d,e}]

exportLatexTable[dat_,path_]:=Module[{t,t2},
(* insert ' & ' between every element of each line *)
t=Riffle[#,{" & "}]&/@dat ;
(* Cast list entries to strings, join them, add ' \\ \hline' at the end of each line *)
t2={StringJoin[(ToString/@#)~Join~{" \\\\ \\hline"}]}&/@t;
(* add header of table *)
PrependTo[t2,{"\\hline"}];
PrependTo[t2,{"\\begin{tabular}{|"<>StringJoin@Table["c|",Length@dat[[1]]]}<>"}"];
PrependTo[t2,{"\\begin{center}"}];
(* add footer of table *)
AppendTo[t2,{"\\end{tabular}"}];
AppendTo[t2,{"\\end{center}"}];
(* create the .tex file *)
Export[path,t2,"Table"];
]

End[]
EndPackage[]
