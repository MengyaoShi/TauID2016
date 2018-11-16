cd /afs/cern.ch/work/m/mshi/private/ZTT/CMSSW_8_0_26_patch1/src/
eval $(scramv1 runtime -sh)
cd /afs/cern.ch/work/m/mshi/private/ZTT/CMSSW_8_0_26_patch1/src/TauID2016/Analyze
rm -rf /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/
mkdir /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/
rm -rf /afs/cern.ch/work/m/mshi/public/files_upmuPt/
mkdir /afs/cern.ch/work/m/mshi/public/files_upmuPt/
rm -rf /afs/cern.ch/work/m/mshi/public/files_wupmuPt/
mkdir /afs/cern.ch/work/m/mshi/public/files_wupmuPt/
rm -rf /afs/cern.ch/work/m/mshi/public/files_wdownmuPt/
mkdir /afs/cern.ch/work/m/mshi/public/files_wdownmuPt/
rm -rf /afs/cern.ch/work/m/mshi/public/files_mvismuPt/
mkdir /afs/cern.ch/work/m/mshi/public/files_mvismuPt/

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/Data.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/Data.root data_obs data_obs iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYSall.root DYS120 DYS iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYBall.root DYB DYB iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJall.root DYJ DYJ iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS1.root DYS120 DYS iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB1.root DYB DYB iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ1.root DYJ DYJ iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS2.root DYS120 DYS iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB2.root DYB DYB iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ2.root DYJ DYJ iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS3.root DYS120 DYS iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB3.root DYB DYB iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ3.root DYJ DYJ iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS4.root DYS120 DYS iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB4.root DYB DYB iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ4.root DYJ DYJ iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJall.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYBall.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYSall.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS4.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/TT.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/TT.root TT TT iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/Wincl.root W W iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W2.root W W iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W3.root W W iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W4.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W4.root W W iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/Wunscaled.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/Wincl.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_t_antitop.root ST_t_antitop VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_tW_antitop.root ST_tW_antitop VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_t_top.root ST_t_top VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_tW_top.root ST_tW_top VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WW1L1Nu2Q.root WW1L1Nu2Q VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/VV2L2Nu.root VV2L2Nu VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ3LNu.root WZ3LNu VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ZZ2L2Q.root ZZ2L2Q VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ZZ4L.root ZZ4L VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ2L2Q.root WZ2L2Q VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ1L3Nu.root WZ1L3Nu VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso MVAoldM mvis all old 0 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/VV.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/WZ1L1Nu2Q.root



./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYSall.root DYS120 DYS iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYBall.root DYB DYB iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJall.root DYJ DYJ iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS1.root DYS120 DYS iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB1.root DYB DYB iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ1.root DYJ DYJ iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS2.root DYS120 DYS iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB2.root DYB DYB iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ2.root DYJ DYJ iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS3.root DYS120 DYS iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB3.root DYB DYB iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ3.root DYJ DYJ iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS4.root DYS120 DYS iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB4.root DYB DYB iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ4.root DYJ DYJ iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJall.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ1.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYSall.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS1.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYBall.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB1.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB4.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/TT.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/TT.root TT TT iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/Wincl.root W W iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W2.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/W2.root W W iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W3.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/W3.root W W iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/W4.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/W4.root W W iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_upmuPt/Wunscaled.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/Wincl.root
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_t_antitop.root ST_t_antitop VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_tW_antitop.root ST_tW_antitop VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_t_top.root ST_t_top VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_tW_top.root ST_tW_top VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WW1L1Nu2Q.root WW1L1Nu2Q VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/VV2L2Nu.root VV2L2Nu VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ3LNu.root WZ3LNu VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ZZ2L2Q.root ZZ2L2Q VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ZZ4L.root ZZ4L VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ2L2Q.root WZ2L2Q VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ1L3Nu.root WZ1L3Nu VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/WZ1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso MVAoldM mvis all old 1 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_upmuPt/VV.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ3LNu.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/WZ1L1Nu2Q.root

./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYBall_muD.root DYB DYB iso MVAoldM mvis all old 2 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB1_muD.root DYB DYB iso MVAoldM mvis all old 2 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB2_muD.root DYB DYB iso MVAoldM mvis all old 2 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB3_muD.root DYB DYB iso MVAoldM mvis all old 2 10 20 0 3 0 2000 7 2
./FinalSelectionOriginal.exe /afs/cern.ch/work/m/mshi/public/AnalyzeInput/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB4_muD.root DYB DYB iso MVAoldM mvis all old 2 10 20 0 3 0 2000 7 2

hadd -f /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB_muD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYBall_muD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB1_muD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB2_muD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB3_muD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB4_muD.root

python Scale_WOriginal.py --scale nominal --anti iso --var muPt
python Create_QCDOriginal.py --scale nominal --var muPt
python Create_QCDOriginal.py --scale wup --var muPt
python Create_QCDOriginal.py --scale wdown --var muPt
python Create_QCDOriginal.py --scale shapeup
python Create_QCDOriginal.py --scale shapedown

python Scale_processOriginal.py --input /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W.root --output /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W_wnorm.root --hist W --postfixP _Wnorm --postfixF _Wnorm --factor 0.10

hadd -f /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final_nominal.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/Data.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYS.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/TT.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/QCD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/VV.root /afs/cern.ch/work/m/mshi/public/files_wupmuPt/QCD.root /afs/cern.ch/work/m/mshi/public/files_wdownmuPt/QCD.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/W_wnorm.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYJ.root /afs/cern.ch/work/m/mshi/public/files_nominalmuPt/DYB_muD.root 
hadd -f /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final_up.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYS.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYB.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/TT.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/VV.root /afs/cern.ch/work/m/mshi/public/files_upmuPt/DYJ.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final.root /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final_nominal.root /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final_up.root

rm /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final_nominal.root
rm /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final_up.root
mv /afs/cern.ch/work/m/mshi/public/files_mvismuPt/final.root /afs/cern.ch/work/m/mshi/public/files_mvismuPt/mvis_MVAoldM_dm-all_dmf-old_eta-0-3_pt-10-20.root
