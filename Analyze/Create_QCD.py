if __name__ == "__main__":

    import ROOT
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--scale', default="nominal", choices=['nominal', 'up', 'down', 'wup', 'wdown'], help="Which TES?")
    parser.add_argument('--var', default="invMass", choices=['invMass', 'muPt', 'tauPt', 'muMt', 'tauMt', 'tauMass', 'met', 'muMetMt', 'tauMetMt', 'ZPt', 'muEta', 'tauEta', 'muTauDPhi', 'muTauDR', 'zeta', 'tauDecayMode'], help="Which TES?")
    options = parser.parse_args()

    postfix=""
    if (options.scale=="up"):
        postfix="_TESUp"
    if (options.scale=="down"):
        postfix="_TESDown"

    postfixP=""
    if (options.scale=="up"):
        postfixP="_TESUp"
    if (options.scale=="down"):
        postfixP="_TESDown"
    if (options.scale=="wup"):
        postfixP="_WnormUp"
    if (options.scale=="wdown"):
        postfixP="_WnormDown"

    postfixF=""
    if (options.scale=="up"):
        postfixF="_TESUp"
    if (options.scale=="down"):
        postfixF="_TESDown"
    if (options.scale=="wup"):
        postfixF="_WnormUp"
    if (options.scale=="wdown"):
        postfixF="_WnormDown"

    facteur=1.0
    if (options.scale=="wup"):
        facteur=1.10
    if (options.scale=="wdown"):
        facteur=0.90

    if options.scale=="up" or options.scale=="down":
       fDYB=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/DYB.root","r")
       fDYJ=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/DYJ.root","r")
       fDYS=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/DYS.root","r")
       fW=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/W.root","r")
       fTT=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/TT.root","r")
       fVV=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/VV.root","r")
       fData=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/Data.root","r")
    else:
       fDYB=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/DYB.root","r")
       fDYJ=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/DYJ.root","r")
       fDYS=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/DYS.root","r")
       fW=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/W.root","r")
       fTT=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/TT.root","r")
       fVV=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/VV.root","r")
       fData=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_nominal"+options.var+"/Data.root","r")
    fout=ROOT.TFile("/afs/cern.ch/user/f/fengwang/workplace/public/files_"+options.scale+options.var+"/QCD.root","recreate")

    hSS_pass=fData.Get("passSS/data_obs")
    hSS_pass.Add(fDYB.Get("passSS/DYB"+postfix),-1)
    hSS_pass.Add(fDYJ.Get("passSS/DYJ"+postfix),-1)
    hSS_pass.Add(fTT.Get("passSS/TT"+postfix),-1)
    hSS_pass.Add(fW.Get("passSS/W"+postfix),-1*facteur)
    hSS_pass.Add(fVV.Get("passSS/VV"+postfix),-1)
    hSS_pass.Add(fDYS.Get("passSS/DYS"+postfix),-1)

    hSS_fail=fData.Get("failSS/data_obs")
    hSS_fail.Add(fDYB.Get("failSS/DYB"+postfix),-1)
    hSS_fail.Add(fDYJ.Get("failSS/DYJ"+postfix),-1)
    hSS_fail.Add(fTT.Get("failSS/TT"+postfix),-1)
    hSS_fail.Add(fW.Get("failSS/W"+postfix),-1*facteur)
    hSS_fail.Add(fVV.Get("failSS/VV"+postfix),-1)
    hSS_fail.Add(fDYS.Get("failSS/DYS"+postfix),-1)

    hSS_pass.SetName("QCD"+postfixP)
    hSS_pass.Scale(1.08*hSS_pass.Integral()/hSS_pass.Integral())
    hSS_fail.SetName("QCD"+postfixF)
    hSS_fail.Scale(1.08*hSS_fail.Integral()/hSS_fail.Integral())

    for i in range(0,hSS_fail.GetSize()-2):
	if hSS_fail.GetBinContent(i)<0:
	    hSS_fail.SetBinContent(i,0)

    for i in range(0,hSS_pass.GetSize()):
        if hSS_pass.GetBinContent(i)<0:
            hSS_pass.SetBinContent(i,0)

    fout.cd()
    dirFailOS=fout.mkdir("failOS")
    dirFailOS.cd()
    hSS_fail.Write()
    dirPassOS=fout.mkdir("passOS")
    dirPassOS.cd()
    hSS_pass.Write()

