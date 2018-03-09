First step
=========

Create FSA ntuples in the mutau final state. You need to run with the "ztt.py" parameter file in CMSSW_8_0_26_patch1. You need all the jet-binned and inclusive DY LO MC, the jet-binned and inclusive W+jets LO MC, the aMCatNLO diboson samples, the powheg ttbar sample, the powheg single top samples, the single muon dataset.

Second step
===========

Skim the data and MC FSA ntuples. This happens in the "Skim" directory. You need to checkout that repository https://github.com/CMS-HTT/RecoilCorrections to get the recoil corrections files.

Compile the code: ./Make.sh skim_mt.cc

Run the code: ./skim_mt.exe mc output.root input.root 0

In the line above, "mc" should be replaced by "data" if you run over data.

The file "prepare_run.py" can prepare the commands to run over a long list of files.

Third step
==========

Making the datacards. This happens in the "Analyze" directory.

Fourth step
==========

Compute the scale factors with Combine. This happens in the "Limits" directory.
