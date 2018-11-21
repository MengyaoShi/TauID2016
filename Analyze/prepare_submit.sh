python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 1 --switch_var 1 --plotName invMass

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 2 --switch_var 8 --plotName muMetMt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 7 --switch_var 2 --plotName muPt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 500 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 7 --switch_var 3 --plotName tauPt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 10 --switch_var 17 --plotName numJets

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 2 --switch_var 5 --plotName tauMt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 11 --switch_var 6 --plotName tauMass

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 7 --switch_var 7 --plotName met

#python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 2 --switch_var 8 --plotName muMetMt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 2 --switch_var 9 --plotName tauMetMt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 7 --switch_var 10 --plotName ZPt

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 4 --switch_var 11 --plotName muEta

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 4 --switch_var 12 --plotName tauEta

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 5 --switch_var 13 --plotName muTauDPhi

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 6 --switch_var 14 --plotName muTauDR

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 10 --switch_var 17 --plotName muTauDEta

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 3 --switch_var 15 --plotName zeta

python replace_submit.py --input replace_mvis.sh --etamin 0 --etamax 3 --ptmin 10 --ptmax 20 --iso MVAoldM --dm all --decaymodefinding old --nvtxmin 0 --nvtxmax 1000 --switch_bins 8 --switch_var 16 --plotName tauDecayMode

chmod 755 submit_*.sh
