./Make.sh FinalSelection.cc
./FinalSelection.exe /data/ccaillol/tauid_25may/Data.root files_nominal/Data.root data_obs data_obs iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_nominal/DYSall.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_nominal/DYBall.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_nominal/DYJall.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_nominal/DYS1.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_nominal/DYB1.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_nominal/DYJ1.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_nominal/DYS2.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_nominal/DYB2.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_nominal/DYJ2.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_nominal/DYS3.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_nominal/DYB3.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_nominal/DYJ3.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_nominal/DYS4.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_nominal/DYB4.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_nominal/DYJ4.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_nominal/DYJ.root files_nominal/DYJall.root files_nominal/DYJ1.root files_nominal/DYJ2.root files_nominal/DYJ3.root files_nominal/DYJ4.root
hadd -f files_nominal/DYB.root files_nominal/DYBall.root files_nominal/DYB1.root files_nominal/DYB2.root files_nominal/DYB3.root files_nominal/DYB4.root
hadd -f files_nominal/DYS.root files_nominal/DYSall.root files_nominal/DYS1.root files_nominal/DYS2.root files_nominal/DYS3.root files_nominal/DYS4.root
./FinalSelection.exe /data/ccaillol/tauid_25may/TT.root files_nominal/TT.root TT TT iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W.root files_nominal/Wincl.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W1.root files_nominal/W1.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W2.root files_nominal/W2.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W3.root files_nominal/W3.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W4.root files_nominal/W4.root W W iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_nominal/Wunscaled.root files_nominal/W4.root files_nominal/W3.root files_nominal/W2.root files_nominal/W1.root files_nominal/Wincl.root
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_t_antitop.root files_nominal/ST_t_antitop.root ST_t_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_tW_antitop.root files_nominal/ST_tW_antitop.root ST_tW_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_t_top.root files_nominal/ST_t_top.root ST_t_top VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_tW_top.root files_nominal/ST_tW_top.root ST_tW_top VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WW1L1Nu2Q.root files_nominal/WW1L1Nu2Q.root WW1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/VV2L2Nu.root files_nominal/VV2L2Nu.root VV2L2Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZJLLLNu.root files_nominal/WZLLLNu.root WZLLLNu VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ZZ2L2Q.root files_nominal/ZZ2L2Q.root ZZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ZZ4L.root files_nominal/ZZ4L.root ZZ4L VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZ2L2Q.root files_nominal/WZ2L2Q.root WZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZ1L3Nu.root files_nominal/WZ1L3Nu.root WZ1L3Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZ1L1Nu2Q.root files_nominal/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 0 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_nominal/VV.root files_nominal/ST_tW_top.root files_nominal/ST_t_top.root files_nominal/ST_tW_antitop.root files_nominal/ST_t_antitop.root files_nominal/VV2L2Nu.root files_nominal/WW1L1Nu2Q.root
 files_nominal/WZLLLNu.root files_nominal/ZZ2L2Q.root files_nominal/ZZ4L.root files_nominal/WZ2L2Q.root files_nominal/WZ1L3Nu.root files_nominal/WZ1L1Nu2Q.root



./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_up/DYSall.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_up/DYBall.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_up/DYJall.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_up/DYS1.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_up/DYB1.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_up/DYJ1.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_up/DYS2.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_up/DYB2.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_up/DYJ2.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_up/DYS3.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_up/DYB3.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_up/DYJ3.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_up/DYS4.root DYS120 DYS iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_up/DYB4.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_up/DYJ4.root DYJ DYJ iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_up/DYJ.root files_up/DYJall.root files_up/DYJ1.root files_up/DYJ2.root files_up/DYJ3.root files_up/DYJ4.root
hadd -f files_up/DYS.root files_up/DYSall.root files_up/DYS1.root files_up/DYS2.root files_up/DYS3.root files_up/DYS4.root
hadd -f files_up/DYB.root files_up/DYBall.root files_up/DYB1.root files_up/DYB2.root files_up/DYB3.root files_up/DYB4.root
./FinalSelection.exe /data/ccaillol/tauid_25may/TT.root files_up/TT.root TT TT iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W.root files_up/Wincl.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W1.root files_up/W1.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W2.root files_up/W2.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W3.root files_up/W3.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/W4.root files_up/W4.root W W iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_up/Wunscaled.root files_up/W4.root files_up/W3.root files_up/W2.root files_up/W1.root files_up/Wincl.root
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_t_antitop.root files_up/ST_t_antitop.root ST_t_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_tW_antitop.root files_up/ST_tW_antitop.root ST_tW_antitop VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_t_top.root files_up/ST_t_top.root ST_t_top VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ST_tW_top.root files_up/ST_tW_top.root ST_tW_top VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WW1L1Nu2Q.root files_up/WW1L1Nu2Q.root WW1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/VV2L2Nu.root files_up/VV2L2Nu.root VV2L2Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZJLLLNu.root files_up/WZLLLNu.root WZLLLNu VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ZZ2L2Q.root files_up/ZZ2L2Q.root ZZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/ZZ4L.root files_up/ZZ4L.root ZZ4L VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZ2L2Q.root files_up/WZ2L2Q.root WZ2L2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZ1L3Nu.root files_up/WZ1L3Nu.root WZ1L3Nu VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/WZ1L1Nu2Q.root files_up/WZ1L1Nu2Q.root WZ1L1Nu2Q VV iso $ISO mvis $DM $DECAYMODEFINDING 1 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_up/VV.root files_up/ST_tW_top.root files_up/ST_t_top.root files_up/ST_tW_antitop.root files_up/ST_t_antitop.root files_up/VV2L2Nu.root files_up/WW1L1Nu2Q.root files_up/WZLLLNu.root files_up/ZZ2L2Q.root files_up/ZZ4L.root files_up/WZ2L2Q.root files_up/WZ1L3Nu.root files_up/WZ1L1Nu2Q.root

./FinalSelection.exe /data/ccaillol/tauid_25may/DY.root files_nominal/DYBall_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY1.root files_nominal/DYB1_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY2.root files_nominal/DYB2_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY3.root files_nominal/DYB3_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
./FinalSelection.exe /data/ccaillol/tauid_25may/DY4.root files_nominal/DYB4_muD.root DYB DYB iso $ISO mvis $DM $DECAYMODEFINDING 2 $PTMIN $PTMAX $ETAMIN $ETAMAX 0 2000
hadd -f files_nominal/DYB_muD.root files_nominal/DYBall_muD.root files_nominal/DYB1_muD.root files_nominal/DYB2_muD.root files_nominal/DYB3_muD.root files_nominal/DYB4_muD.root


python Scale_W.py --scale nominal --anti iso
python Create_QCD.py --scale nominal 
python Create_QCD.py --scale wup
python Create_QCD.py --scale wdown
python Scale_process.py --input files_nominal/W.root --output files_nominal/W_wnorm.root --hist W --postfixP _Wnorm --postfixF _Wnorm --factor 0.10

hadd -f final_nominal.root files_nominal/W.root files_nominal/Data.root files_nominal/DYS.root files_nominal/DYB.root files_nominal/TT.root files_nominal/QCD.root files_nominal/VV.root  files_wup/QCD.root files_wdown/QCD.root files_nominal/W_wnorm.root files_nominal/DYJ.root files_nominal/DYB_muD.root 
hadd -f final_up.root files_up/W.root files_up/DYS.root files_up/DYB.root files_up/TT.root files_up/VV.root files_up/DYJ.root
hadd -f final.root final_nominal.root final_up.root

cp -f final.root files_mvis/mvis_$ISO_dm-$DM_dmf-$DECAYMODEFINDING_eta-$ETAMIN-$ETAMAX_pt-$PTMIN-$PTMAX.root

