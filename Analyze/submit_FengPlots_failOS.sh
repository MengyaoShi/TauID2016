python make_multi_controlplot_failOS.py --input controlplot_failOS_template.py --plotname M_{\#tau\#tau}^{vis}  --filename mvis_MVAoldM_dm-all_dmf-old_eta-0-3_pt-10-20.root --dirname files_mvisinvMass --pdfname files_mvisinvMass_fail
python submit.py

python make_multi_controlplot_failOS.py --input controlplot_failOS_template.py --plotname "MET [GeV]"  --filename mvis_MVAoldM_dm-all_dmf-old_eta-0-3_pt-10-20.root --dirname files_mvismet --pdfname files_mvismet_fail
python submit.py

python make_multi_controlplot_failOS.py --input controlplot_failOS_template.py --plotname "#mu MET MT[GeV]"  --filename mvis_MVAoldM_dm-all_dmf-old_eta-0-3_pt-10-20.root --dirname files_mvismuMetMt --pdfname files_mvismuMetMt_fail
python submit.py

python make_multi_controlplot_failOS.py --input controlplot_failOS_template.py --plotname "Z pt [GeV]"  --filename mvis_MVAoldM_dm-all_dmf-old_eta-0-3_pt-10-20.root --dirname files_mvisZPt --pdfname files_mvisZPt_fail
python submit.py

