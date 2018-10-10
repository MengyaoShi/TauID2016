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
       fDYB=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/DYB.root","r")
       fDYJ=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/DYJ.root","r")
       fDYS=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/DYS.root","r")
       fW=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/W.root","r")
       fTT=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/TT.root","r")
       fVV=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/VV.root","r")
       fData=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/Data.root","r")
    else:
       fDYB=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/DYB.root","r")
       fDYJ=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/DYJ.root","r")
       fDYS=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/DYS.root","r")
       fW=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/W.root","r")
       fTT=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/TT.root","r")
       fVV=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/VV.root","r")
       fData=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_nominal"+options.var+"/Data.root","r")
    fout=ROOT.TFile("/afs/cern.ch/work/m/mshi/public/files_"+options.scale+options.var+"/QCD.root","recreate")


    hSS=fData.Get("SS/data_obs")
    hSS.Add(fDYB.Get("SS/DYB"+postfix),-1)
    hSS.Add(fDYJ.Get("SS/DYJ"+postfix),-1)
    hSS.Add(fTT.Get("SS/TT"+postfix),-1)
    hSS.Add(fW.Get("SS/W"+postfix),-1*facteur)
    hSS.Add(fVV.Get("SS/VV"+postfix),-1)
    hSS.Add(fDYS.Get("SS/DYS"+postfix),-1)
   
    hOS=fData.Get("OS/data_obs")
    hOS.Add(fDYB.Get("OS/DYB"+postfix),-1)
    hOS.Add(fDYJ.Get("OS/DYJ"+postfix),-1)
    hOS.Add(fTT.Get("OS/TT"+postfix),-1)
    hOS.Add(fW.Get("OS/W"+postfix),-1*facteur)
    hOS.Add(fVV.Get("OS/VV"+postfix),-1)
    hOS.Add(fDYS.Get("OS/DYS"+postfix),-1)
   
    hSS.SetName("QCD"+postfixF)
#    hSS_pass.Scale(1.08*hSS_pass.Integral()/hSS_pass.Integral())
    hOS.SetName("QCD"+postfixF)
#    hSS_fail.Scale(1.08*hSS_fail.Integral()/hSS_fail.Integral())

    for i in range(0,hSS.GetSize()-2):
	if hSS.GetBinContent(i)<0:
	    hSS.SetBinContent(i,0)

    for i in range(0,hOS.GetSize()):
        if hOS.GetBinContent(i)<0:
            hOS.SetBinContent(i,0)

    fout.cd()
    dirOS=fout.mkdir("OS")
    dirOS.cd()
    hOS.Write()
    dirSS=fout.mkdir("SS")
    dirSS.cd()
    hSS.Write()

