import os
if __name__ == "__main__":

    place="AllRootFiles/SUB/"
    #sample=["SingleMuon_Run2016B-23Sep2016-v3rawSkim_MakeNtuples3","SingleMuon_Run2016C-23Sep2016-v1rawSkim_MakeNtuples3","SingleMuon_Run2016D-23Sep2016-v1rawSkim_MakeNtuples3","SingleMuon_Run2016E-23Sep2016-v1rawSkim1_MakeNtuples3","SingleMuon_Run2016F-23Sep2016-v1rawSkim_MakeNtuples3","SingleMuon_Run2016G-23Sep2016-v1rawSkim1_MakeNtuples3","SingleMuon_Run2016H-PromptReco-v2rawSkim_MakeNtuples3","SingleMuon_Run2016H-PromptReco-v3rawSkim_MakeNtuples3"]
    #name=["DataB","DataC","DataD","DataE","DataF","DataG","DataH2","DataH3"]
    #recoil=["0","0","0","0","0","0","0","0"]


    sample=["DY1JetsToLL_M-10to50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","DY1JetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","DY2JetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","DY3JetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","DY4JetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V2","DYJetsToLL_M-10to50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","DYJetsToLL_M-50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_1-v1rawSkimTau_V2","ST_tW_antitop_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1_1-v1rawSkimTau_V0","ST_tW_top_5f_inclusiveDecays_13TeV-powheg-pythia8_TuneCUETP8M1_1-v1rawSkimTau_V0","TT_TuneCUETP8M2T4_13TeV-powheg-pythia8_6-v1rawSkimTau_V0","W1JetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","W4JetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V2","WWTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_6-v1rawSkimTau_V0","WZTo1L1Nu2Q_13TeV_amcatnloFXFX_madspin_pythia8_6-v3rawSkimTau_V0","WZTo1L3Nu_13TeV_amcatnloFXFX_madspin_pythia8_6-v1rawSkimTau_V2","WZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_6-v1rawSkimTau_V2","WZTo3LNu_TuneCUETP8M1_13TeV-powheg-pythia8_6-v1rawSkimTau_V2","ZZTo2L2Q_13TeV_amcatnloFXFX_madspin_pythia8_6-v1rawSkimTau_V2","ZZTo4L_13TeV_powheg_pythia8_6-v1rawSkimTau_V2","ZZ_TuneCUETP8M1_13TeV-pythia8_6-v1rawSkimTau_V0", "DY2JetsToLL_M-10to50_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","W2JetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_1-v1rawSkimTau_V0","W3JetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V2","WJetsToLNu_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_6-v1rawSkimTau_V0","WWToLNuQQ_13TeV-powheg_6-v1rawSkimTau_V0","ST_t-channel_top_4f_inclusiveDecays_13TeV-powhegV2-madspin-pythia8_TuneCUETP8M1_6-v1rawSkimTau_V0","VVTo2L2Nu_13TeV_amcatnloFXFX_madspin_pythia8_6-v1rawSkimTau2_V2" ]
    name=["DY1low","DY1","DY2","DY3","DY4","DYlow","DY_v","ST_tW_antitop","ST_tW_top","TT","W1","W4_v","WW1L1Nu2Q","WZ1L1Nu2Q","WZ1L3Nu","WZ2L2Q","WZ3LNu","ZZ2L2Q","ZZ4L","ZZ","DY2low","W2_v","W3_v","W_v","WWLNuQQ","ST_t_top","VV2L2Nu"]
    recoil=["Z","Z","Z","Z","Z","Z","Z","0","0","0","W","W","0","0","0","0","0","0","0","0","Z","W","W","W","0","0","0"]
    sorted_cecile_name=['DY', 'DY1', 'DY1low', 'DY2', 'DY2low', 'DY3', 'DY4', 'DY_v2', 'DYlow', 'ST_tW_antitop', 'ST_tW_top', 'ST_t_antitop', 'ST_t_top', 'TT', 'VV2L2Nu', 'VV2L2Nu_v2', 'W', 'W1', 'W2', 'W2_v2', 'W3', 'W3_v2', 'W4', 'W4_v2', 'W4_v3', 'WW', 'WW1L1Nu2Q', 'WZ', 'WZ1L1Nu2Q', 'WZ1L3Nu', 'WZ2L2Q', 'WZJLLLNu', 'W_v2', 'ZZ', 'ZZ2L2Q', 'ZZ4L']
    print len(sample)
    print len(name)
    print len(recoil)
    print len(sorted_cecile_name)

    
    datadir="/afs/cern.ch/work/m/mshi/public/outputTauID/"
    all_File = open("do_submit.sh" , 'w')
    line=""
    for j in range(0,len(name)):
       print name[j],sample[j],recoil[j]
       submit_File = open("Submit_"+name[j]+".sh" , 'w')
       line+="mkdir -p "+datadir+"Out_"+name[j]+"\n"
       line+="chmod 777 Submit_"+name[j]+".sh" +"\n"
       line+="sh Submit_"+name[j]+".sh" +"\n"
       f=open( place+sample[j] + ".txt","r")
       command1=""
       ligne=0
       for i in f.readlines():
	   command1=command1+"./skim_mt.exe mc "+datadir+"Out_"+name[j]+"/"+name[j]+str(ligne)+".root " + i.rstrip('\n') + " " + recoil[j] +" \n"
           ligne=ligne+1
       submit_File.write(command1)
       submit_File.close()
    all_File.write(line)
    all_File.close()

