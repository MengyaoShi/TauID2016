cd /afs/cern.ch/work/m/mshi/private/ZTT/CMSSW_8_0_26_patch1/src/
eval $(scramv1 runtime -sh)
cd /afs/cern.ch/work/m/mshi/private/ZTT/CMSSW_8_0_26_patch1/src/TauID2016/Analyze
rm -rf /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/
mkdir /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/
rm -rf /afs/cern.ch/work/m/mshi/public/files_up$NAME/
mkdir /afs/cern.ch/work/m/mshi/public/files_up$NAME/
rm -rf /afs/cern.ch/work/m/mshi/public/files_wup$NAME/
mkdir /afs/cern.ch/work/m/mshi/public/files_wup$NAME/
rm -rf /afs/cern.ch/work/m/mshi/public/files_wdown$NAME/
mkdir /afs/cern.ch/work/m/mshi/public/files_wdown$NAME/
rm -rf /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/
mkdir /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/Data.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/Data.root data_obs data_obs iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYSall.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYBall.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJall.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS1.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB1.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ1.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS2.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB2.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ2.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS3.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB3.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ3.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS4.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB4.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ4.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJall.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYBall.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYSall.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS4.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/TT.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/TT.root TT TT iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/Wincl.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W2.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W3.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W4.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W4.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/Wunscaled.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/Wincl.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_t_antitop.root ST_t_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_tW_antitop.root ST_tW_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_t_top.root ST_t_top VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_tW_top.root ST_tW_top VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WW1L1Nu2Q.root WW1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/VV2L2Nu.root VV2L2Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ3LNu.root WZ3LNu VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ZZ2L2Q.root ZZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ZZ4L.root ZZ4L VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ2L2Q.root WZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ1L3Nu.root WZ1L3Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/VV.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/WZ1L1Nu2Q.root



./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYSall.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYBall.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJall.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS1.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB1.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ1.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS2.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB2.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ2.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS3.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB3.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ3.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS4.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB4.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ4.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJall.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ1.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYSall.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS1.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYBall.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB1.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB4.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/TT.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/TT.root TT TT iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/Wincl.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W2.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/W2.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W3.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/W3.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W4.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/W4.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_up$NAME/Wunscaled.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/Wincl.root
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_t_antitop.root ST_t_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_tW_antitop.root ST_tW_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_t_top.root ST_t_top VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_tW_top.root ST_tW_top VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WW1L1Nu2Q.root WW1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/VV2L2Nu.root VV2L2Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ3LNu.root WZ3LNu VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ZZ2L2Q.root ZZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ZZ4L.root ZZ4L VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ2L2Q.root WZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ1L3Nu.root WZ1L3Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_up$NAME/VV.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/WZ1L1Nu2Q.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYBall_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB1_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB2_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB3_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB4_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000 $SWITCHBINS $SWITCHVAR

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYBall_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB1_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB2_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB3_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB4_muD.root

python Scale_WOriginal.py --scale nominal --anti iso --var $NAME
python Create_QCDOriginal.py --scale nominal --var $NAME
python Create_QCDOriginal.py --scale wup --var $NAME
python Create_QCDOriginal.py --scale wdown --var $NAME
python Create_QCDOriginal.py --scale shapeup
python Create_QCDOriginal.py --scale shapedown

python Scale_processOriginal.py --input /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W.root --output /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W_wnorm.root --hist W --postfixP _Wnorm --postfixF _Wnorm --factor 0.10

hadd -f /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final_nominal.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/Data.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYS.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/TT.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/QCD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/VV.root /afs/cern.ch/work/m/mshi/public/files_wup$NAME/QCD.root /afs/cern.ch/work/m/mshi/public/files_wdown$NAME/QCD.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/W_wnorm.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYJ.root /afs/cern.ch/work/m/mshi/public/files_nominal$NAME/DYB_muD.root 
hadd -f /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final_up.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYS.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYB.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/TT.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/VV.root /afs/cern.ch/work/m/mshi/public/files_up$NAME/DYJ.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final.root /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final_nominal.root /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final_up.root

rm /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final_nominal.root
rm /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final_up.root
mv /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/final.root /afs/cern.ch/work/m/mshi/public/files_mvis$NAME/mvis_$ISO_dm-$DM_dmf-$DECAYMODEFINDING_eta-$ETAMIN-$ETAMAX_pt-$PTMIN-$PTMAX.root
