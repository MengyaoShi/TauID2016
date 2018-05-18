./Make.sh FinalSelection.cc
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/Data.root /afs/cern.ch/work/m/mshi/public/files_nominal/Data.root data_obs data_obs iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYSall.root DYS120 DYS iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYBall.root DYB DYB iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJall.root DYJ DYJ iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS1.root DYS120 DYS iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB1.root DYB DYB iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ1.root DYJ DYJ iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS2.root DYS120 DYS iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB2.root DYB DYB iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ2.root DYJ DYJ iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS3.root DYS120 DYS iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB3.root DYB DYB iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ3.root DYJ DYJ iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS4.root DYS120 DYS iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB4.root DYB DYB iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ4.root DYJ DYJ iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJall.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/DYB.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYBall.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/DYS.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYSall.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS4.root
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/TT.root /afs/cern.ch/work/m/mshi/public/files_nominal/TT.root TT TT iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W.root /afs/cern.ch/work/m/mshi/public/files_nominal/Wincl.root W W iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W1.root /afs/cern.ch/work/m/mshi/public/files_nominal/W1.root W W iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W2.root /afs/cern.ch/work/m/mshi/public/files_nominal/W2.root W W iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W3.root /afs/cern.ch/work/m/mshi/public/files_nominal/W3.root W W iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W4.root /afs/cern.ch/work/m/mshi/public/files_nominal/W4.root W W iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/Wunscaled.root /afs/cern.ch/work/m/mshi/public/files_nominal/W4.root /afs/cern.ch/work/m/mshi/public/files_nominal/W3.root /afs/cern.ch/work/m/mshi/public/files_nominal/W2.root /afs/cern.ch/work/m/mshi/public/files_nominal/W1.root /afs/cern.ch/work/m/mshi/public/files_nominal/Wincl.root
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_t_antitop.root ST_t_antitop VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_tW_antitop.root ST_tW_antitop VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_t_top.root ST_t_top VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_tW_top.root ST_tW_top VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/WW1L1Nu2Q.root WW1L1Nu2Q VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal/VV2L2Nu.root VV2L2Nu VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZJLLLNu.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZLLLNu.root WZLLLNu VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/ZZ2L2Q.root ZZ2L2Q VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominal/ZZ4L.root ZZ4L VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ2L2Q.root WZ2L2Q VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ1L3Nu.root WZ1L3Nu VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZ1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso MVAoldT mvis all old 0 20 10000 0 3 0 2000


#hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/VV.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal/WW1L1Nu2Q.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/VV.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_nominal/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_nominal/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal/WW1L1Nu2Q.root
 /afs/cern.ch/work/m/mshi/public/files_nominal/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ1L1Nu2Q.root

#above line will be replaced by /afs/cern.ch/work/m/mshi/public/files_nominal/WZLLLNu.root /afs/cern.ch/work/m/mshi/public/files_nominal/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_nominal/WZ1L1Nu2Q.root



./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_up/DYSall.root DYS120 DYS iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_up/DYBall.root DYB DYB iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_up/DYJall.root DYJ DYJ iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_up/DYS1.root DYS120 DYS iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_up/DYB1.root DYB DYB iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ1.root DYJ DYJ iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_up/DYS2.root DYS120 DYS iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_up/DYB2.root DYB DYB iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ2.root DYJ DYJ iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_up/DYS3.root DYS120 DYS iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_up/DYB3.root DYB DYB iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ3.root DYJ DYJ iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_up/DYS4.root DYS120 DYS iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_up/DYB4.root DYB DYB iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ4.root DYJ DYJ iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
hadd -f /afs/cern.ch/work/m/mshi/public/files_up/DYJ.root /afs/cern.ch/work/m/mshi/public/files_up/DYJall.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ1.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ2.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ3.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_up/DYS.root /afs/cern.ch/work/m/mshi/public/files_up/DYSall.root /afs/cern.ch/work/m/mshi/public/files_up/DYS1.root /afs/cern.ch/work/m/mshi/public/files_up/DYS2.root /afs/cern.ch/work/m/mshi/public/files_up/DYS3.root /afs/cern.ch/work/m/mshi/public/files_up/DYS4.root
hadd -f /afs/cern.ch/work/m/mshi/public/files_up/DYB.root /afs/cern.ch/work/m/mshi/public/files_up/DYBall.root /afs/cern.ch/work/m/mshi/public/files_up/DYB1.root /afs/cern.ch/work/m/mshi/public/files_up/DYB2.root /afs/cern.ch/work/m/mshi/public/files_up/DYB3.root /afs/cern.ch/work/m/mshi/public/files_up/DYB4.root
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/TT.root /afs/cern.ch/work/m/mshi/public/files_up/TT.root TT TT iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W.root /afs/cern.ch/work/m/mshi/public/files_up/Wincl.root W W iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W1.root /afs/cern.ch/work/m/mshi/public/files_up/W1.root W W iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W2.root /afs/cern.ch/work/m/mshi/public/files_up/W2.root W W iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W3.root /afs/cern.ch/work/m/mshi/public/files_up/W3.root W W iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/W4.root /afs/cern.ch/work/m/mshi/public/files_up/W4.root W W iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
hadd -f /afs/cern.ch/work/m/mshi/public/files_up/Wunscaled.root /afs/cern.ch/work/m/mshi/public/files_up/W4.root /afs/cern.ch/work/m/mshi/public/files_up/W3.root /afs/cern.ch/work/m/mshi/public/files_up/W2.root /afs/cern.ch/work/m/mshi/public/files_up/W1.root /afs/cern.ch/work/m/mshi/public/files_up/Wincl.root
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_up/ST_t_antitop.root ST_t_antitop VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_up/ST_tW_antitop.root ST_tW_antitop VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_up/ST_t_top.root ST_t_top VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_up/ST_tW_top.root ST_tW_top VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up/WW1L1Nu2Q.root WW1L1Nu2Q VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_up/VV2L2Nu.root VV2L2Nu VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZJLLLNu.root /afs/cern.ch/work/m/mshi/public/files_up/WZLLLNu.root WZLLLNu VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up/ZZ2L2Q.root ZZ2L2Q VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_up/ZZ4L.root ZZ4L VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
#./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up/WZ2L2Q.root WZ2L2Q VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_up/WZ1L3Nu.root WZ1L3Nu VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/WZ1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso MVAoldT mvis all old 1 20 10000 0 3 0 2000

hadd -f /afs/cern.ch/work/m/mshi/public/files_up/VV.root /afs/cern.ch/work/m/mshi/public/files_up/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_up/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_up/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_up/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_up/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_up/WZ1L1Nu2Q.root

#above line should be replaced with following after we get WZLLLNu.roo
#hadd -f /afs/cern.ch/work/m/mshi/public/files_up/VV.root /afs/cern.ch/work/m/mshi/public/files_up/ST_tW_top.root /afs/cern.ch/work/m/mshi/public/files_up/ST_t_top.root /afs/cern.ch/work/m/mshi/public/files_up/ST_tW_antitop.root /afs/cern.ch/work/m/mshi/public/files_up/ST_t_antitop.root /afs/cern.ch/work/m/mshi/public/files_up/VV2L2Nu.root /afs/cern.ch/work/m/mshi/public/files_up/WW1L1Nu2Q.root /afs/cern.ch/work/m/mshi/public/files_up/WZLLLNu.root /afs/cern.ch/work/m/mshi/public/files_up/ZZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up/ZZ4L.root /afs/cern.ch/work/m/mshi/public/files_up/WZ2L2Q.root /afs/cern.ch/work/m/mshi/public/files_up/WZ1L3Nu.root /afs/cern.ch/work/m/mshi/public/files_up/WZ1L1Nu2Q.root

./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYBall_muD.root DYB DYB iso MVAoldT mvis all old 2 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY1.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB1_muD.root DYB DYB iso MVAoldT mvis all old 2 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY2.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB2_muD.root DYB DYB iso MVAoldT mvis all old 2 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY3.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB3_muD.root DYB DYB iso MVAoldT mvis all old 2 20 10000 0 3 0 2000
./FinalSelection.exe /afs/cern.ch/work/m/mshi/public/outputTauID/DY4.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB4_muD.root DYB DYB iso MVAoldT mvis all old 2 20 10000 0 3 0 2000
hadd -f /afs/cern.ch/work/m/mshi/public/files_nominal/DYB_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYBall_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB1_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB2_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB3_muD.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB4_muD.root


python Scale_W.py --scale nominal --anti iso
python Create_QCD.py --scale nominal 
python Create_QCD.py --scale wup
python Create_QCD.py --scale wdown
python Scale_process.py --input /afs/cern.ch/work/m/mshi/public/files_nominal/W.root --output /afs/cern.ch/work/m/mshi/public/files_nominal/W_wnorm.root --hist W --postfixP _Wnorm --postfixF _Wnorm --factor 0.10

hadd -f final_nominal.root /afs/cern.ch/work/m/mshi/public/files_nominal/W.root /afs/cern.ch/work/m/mshi/public/files_nominal/Data.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYS.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB.root /afs/cern.ch/work/m/mshi/public/files_nominal/TT.root /afs/cern.ch/work/m/mshi/public/files_nominal/QCD.root /afs/cern.ch/work/m/mshi/public/files_nominal/VV.root  files_wup/QCD.root files_wdown/QCD.root /afs/cern.ch/work/m/mshi/public/files_nominal/W_wnorm.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYJ.root /afs/cern.ch/work/m/mshi/public/files_nominal/DYB_muD.root 
hadd -f final_up.root /afs/cern.ch/work/m/mshi/public/files_up/DYS.root /afs/cern.ch/work/m/mshi/public/files_up/DYB.root /afs/cern.ch/work/m/mshi/public/files_up/TT.root /afs/cern.ch/work/m/mshi/public/files_up/VV.root /afs/cern.ch/work/m/mshi/public/files_up/DYJ.root
hadd -f final.root final_nominal.root final_up.root

cp -f final.root /afs/cern.ch/work/m/mshi/public/files_mvis/mvis_MVAoldT_dm-all_dmf-old_eta-0-3_pt-20-10000.root

