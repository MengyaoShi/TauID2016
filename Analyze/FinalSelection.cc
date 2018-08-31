#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>
#include <TGraph.h>
#include <TGraphAsymmErrors.h>
#include "TMultiGraph.h"
#include <iostream>
#include <vector>
#include <string>
#include <sstream>
#include <utility>
#include <stdio.h>
#include <TF1.h>
#include <TDirectoryFile.h>
#include <TRandom3.h>
#include "TLorentzVector.h"
#include "TString.h"
#include "TLegend.h"
#include "TH1F.h"
#include "TKey.h"
#include "THashList.h"
#include "THStack.h"
#include "TPaveLabel.h"
#include "TFile.h"
#include "myHelper.h"
#include "tr_Tree.h"
#include "ScaleFactor.h"
#include "LumiReweightingStandAlone.h"
#include "BTagCalibrationStandalone.h"
#include "BTagCalibrationStandalone.cpp"
using namespace std;

int main(int argc, char** argv) {

    std::string input = *(argv + 1);
    std::string output = *(argv + 2);
    std::string sample = *(argv + 3);
    std::string name = *(argv + 4);
    std::string anti = *(argv + 5);
    std::string isolation = *(argv + 6);
    std::string variable = *(argv + 7);
    std::string dm = *(argv + 8);
    std::string decaymodefinding = *(argv + 9);
    float ptmin; float ptmax; float etamin=-10; float etamax=10; float pumin=0; float pumax=200; float tes=0; int switch_bins; int switch_var; 
    if (argc > 1) {
        tes = atof(argv[10]);
        ptmin = atof(argv[11]);
        ptmax = atof(argv[12]);
        etamin = atof(argv[13]);
        etamax = atof(argv[14]);
        pumin = atof(argv[15]);
        pumax = atof(argv[16]);
        switch_bins=atof(argv[17]);
        switch_var=atof(argv[18]);
    }
    string bTagSFShift_="central";
    TFile *f_Double = new TFile(input.c_str());
    cout<<"XXXXXXXXXXXXX "<<input.c_str()<<" XXXXXXXXXXXX"<<endl;
    TTree *arbre = (TTree*) f_Double->Get("mutau_tree");
    TH1F* nbevt = (TH1F*) f_Double->Get("nevents");
    float ngen = nbevt->GetBinContent(2);
    float nFeng =nbevt->GetBinContent(1);
    std::cout<<"nevents->getBinContent(1)="<<nFeng<<std::endl;

    reweight::LumiReWeighting* LumiWeights_12;
    LumiWeights_12 = new reweight::LumiReWeighting("MC_Moriond17_PU25ns_V1.root", "Data_Pileup_2016_271036-284044_80bins.root", "pileup", "pileup");

    float xs=1.0; float weight=1.0; float luminosity=35870;//20100.0;
    if (sample=="DYJ" or sample=="DYB" or sample=="DYS120"){ xs=5765.4; weight=luminosity*xs/ngen;}
    else if (sample=="TT") {xs=831.76; weight=luminosity*xs/ngen;}
    else if (sample=="W") {xs=61526.7; weight=luminosity*xs/ngen;}
    else if (sample=="QCD") {xs=720648000*0.00042; weight=luminosity*xs/ngen;}
    else if (sample=="data_obs"){weight=1.0;}
    else if (sample=="ZZ") {xs=16.523; weight=luminosity*xs/ngen;}
    else if (sample=="WZ") {xs=47.13; weight=luminosity*xs/ngen;}
    else if (sample=="WW") {xs=118.7; weight=luminosity*xs/ngen;}
    else if (sample=="ST_tW_antitop") {xs=35.6; weight=luminosity*xs/ngen;}
    else if (sample=="ST_tW_top") {xs=35.6; weight=luminosity*xs/ngen;}
    else if (sample=="ST_t_antitop") {xs=80.95; weight=luminosity*xs/ngen;}
    else if (sample=="ST_t_top") {xs=136.02; weight=luminosity*xs/ngen;}
    else if (sample=="ggH") {xs=43.92; weight=luminosity*xs/ngen;}
    else if (sample=="VBF") {xs=3.748; weight=luminosity*xs/ngen;}
    else if (sample=="WZ1L1Nu2Q") {xs=10.71; weight=luminosity*xs/ngen;}
    else if (sample=="WZ1L3Nu") {xs=3.05; weight=luminosity*xs/ngen;}
    else if (sample=="WZJets") {xs=5.26; weight=luminosity*xs/ngen;}
    else if (sample=="WZLLLNu") {xs=4.708; weight=luminosity*xs/ngen;}
    else if (sample=="WZ2L2Q") {xs=5.595; weight=luminosity*xs/ngen;}
    else if (sample=="WW1L1Nu2Q") {xs=49.997; weight=luminosity*xs/ngen;}
    else if (sample=="ZZ4L") {xs=1.212; weight=luminosity*xs/ngen;}
    else if (sample=="ZZ2L2Q") {xs=3.22; weight=luminosity*xs/ngen;}
    else if (sample=="VV2L2Nu") {xs=11.95; weight=luminosity*xs/ngen;}


    cout.setf(ios::fixed, ios::floatfield);
    cout.precision(10);
    arbre->SetBranchAddress("run", &run);
    arbre->SetBranchAddress("lumi", &lumi);
    arbre->SetBranchAddress("evt", &evt);
    arbre->SetBranchAddress("NUP", &NUP);
    arbre->SetBranchAddress("npv", &npv);
    //arbre->SetBranchAddress("tJetHadronFlavour", &tJetHadronFlavour);
    arbre->SetBranchAddress("px_1", &px_1);
    arbre->SetBranchAddress("py_1", &py_1);
    arbre->SetBranchAddress("pz_1", &pz_1);
    arbre->SetBranchAddress("pt_1", &pt_1);
    arbre->SetBranchAddress("phi_1", &phi_1);
    arbre->SetBranchAddress("eta_1", &eta_1);
    arbre->SetBranchAddress("iso_1", &iso_1);
    arbre->SetBranchAddress("id_m_medium_1", &id_m_medium_1);
    arbre->SetBranchAddress("id_m_ICHEPmedium_1", &id_m_ICHEPmedium_1);
    arbre->SetBranchAddress("m_1", &m_1);
    arbre->SetBranchAddress("q_1", &q_1);
    arbre->SetBranchAddress("nbtag", &nbtag);
    arbre->SetBranchAddress("q_2", &q_2);
    arbre->SetBranchAddress("trackpt_2", &trackpt_2);
    arbre->SetBranchAddress("px_2", &px_2);
    arbre->SetBranchAddress("py_2", &py_2);
    arbre->SetBranchAddress("pz_2", &pz_2);
    arbre->SetBranchAddress("pt_2", &pt_2);
    arbre->SetBranchAddress("eta_2", &eta_2);
    arbre->SetBranchAddress("m_2", &m_2);
    arbre->SetBranchAddress("phi_2", &phi_2);
    arbre->SetBranchAddress("met", &met);
    arbre->SetBranchAddress("metphi", &metphi);
    //arbre->SetBranchAddress("met_px", &met_px);
    //arbre->SetBranchAddress("met_py", &met_py);
    arbre->SetBranchAddress("byLooseCombinedIsolationDeltaBetaCorr3Hits_2",&byLooseCombinedIsolationDeltaBetaCorr3Hits_2);
    arbre->SetBranchAddress("byMediumCombinedIsolationDeltaBetaCorr3Hits_2",&byMediumCombinedIsolationDeltaBetaCorr3Hits_2);
    arbre->SetBranchAddress("byTightCombinedIsolationDeltaBetaCorr3Hits_2",&byTightCombinedIsolationDeltaBetaCorr3Hits_2);
    arbre->SetBranchAddress("byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2",&byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2);
    arbre->SetBranchAddress("byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2",&byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2);
    arbre->SetBranchAddress("byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2",&byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2);
    arbre->SetBranchAddress("byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2",&byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2);
    arbre->SetBranchAddress("byVLooseIsolationMVArun2v1DBoldDMwLT_2",&byVLooseIsolationMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byVLooseIsolationMVArun2v1DBnewDMwLT_2",&byVLooseIsolationMVArun2v1DBnewDMwLT_2);
    arbre->SetBranchAddress("byLooseIsolationMVArun2v1DBdR03oldDMwLT_2",&byLooseIsolationMVArun2v1DBdR03oldDMwLT_2);
    arbre->SetBranchAddress("byLooseIsolationMVArun2v1DBoldDMwLT_2",&byLooseIsolationMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byLooseIsolationMVArun2v1DBnewDMwLT_2",&byLooseIsolationMVArun2v1DBnewDMwLT_2);
    arbre->SetBranchAddress("byMediumIsolationMVArun2v1DBdR03oldDMwLT_2",&byMediumIsolationMVArun2v1DBdR03oldDMwLT_2);
    arbre->SetBranchAddress("byMediumIsolationMVArun2v1DBoldDMwLT_2",&byMediumIsolationMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byMediumIsolationMVArun2v1DBnewDMwLT_2",&byMediumIsolationMVArun2v1DBnewDMwLT_2);
    arbre->SetBranchAddress("byTightIsolationMVArun2v1DBdR03oldDMwLT_2",&byTightIsolationMVArun2v1DBdR03oldDMwLT_2);
    arbre->SetBranchAddress("byTightIsolationMVArun2v1DBoldDMwLT_2",&byTightIsolationMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byTightIsolationMVArun2v1DBnewDMwLT_2",&byTightIsolationMVArun2v1DBnewDMwLT_2);
    arbre->SetBranchAddress("byVTightIsolationMVArun2v1DBdR03oldDMwLT_2",&byVTightIsolationMVArun2v1DBdR03oldDMwLT_2);
    arbre->SetBranchAddress("byVTightIsolationMVArun2v1DBoldDMwLT_2",&byVTightIsolationMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byVTightIsolationMVArun2v1DBnewDMwLT_2",&byVTightIsolationMVArun2v1DBnewDMwLT_2);
    arbre->SetBranchAddress("byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2", &byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byLooseIsolationRerunMVArun2v1DBoldDMwLT_2", &byLooseIsolationRerunMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byMediumIsolationRerunMVArun2v1DBoldDMwLT_2", &byMediumIsolationRerunMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byTightIsolationRerunMVArun2v1DBoldDMwLT_2", &byTightIsolationRerunMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byVTightIsolationRerunMVArun2v1DBoldDMwLT_2", &byVTightIsolationRerunMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2", &byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2);
    arbre->SetBranchAddress("byIsolationMVA3oldDMwLTraw_2",&byIsolationMVA3oldDMwLTraw_2);
    arbre->SetBranchAddress("byCombinedIsolationDeltaBetaCorrRaw3Hits_2", &byCombinedIsolationDeltaBetaCorrRaw3Hits_2);
    arbre->SetBranchAddress("decayModeFindingNewDMs_2",&decayModeFindingNewDMs_2);
    arbre->SetBranchAddress("decayModeFinding_2",&decayModeFinding_2);
    arbre->SetBranchAddress("charged_signalCone_2",&charged_signalCone_2);
    arbre->SetBranchAddress("charged_isoCone_2",&charged_isoCone_2);
    //arbre->SetBranchAddress("l2_decayMode",&l2_decayMode);
    arbre->SetBranchAddress("againstElectronVLooseMVA6_2",&againstElectronVLooseMVA6_2);
    arbre->SetBranchAddress("againstElectronLooseMVA6_2",&againstElectronLooseMVA6_2);
    arbre->SetBranchAddress("againstElectronMediumMVA6_2",&againstElectronMediumMVA6_2);
    arbre->SetBranchAddress("againstElectronTightMVA6_2",&againstElectronTightMVA6_2);
    arbre->SetBranchAddress("againstElectronVTightMVA6_2",&againstElectronVTightMVA6_2);
    arbre->SetBranchAddress("againstMuonLoose3_2",&againstMuonLoose3_2);
    arbre->SetBranchAddress("againstMuonTight3_2",&againstMuonTight3_2);
    arbre->SetBranchAddress("l2_decayMode",&l2_decayMode);
    //arbre->SetBranchAddress("isZmt",&isZmt);
    arbre->SetBranchAddress("amcatNLO_weight",&amcatNLO_weight);
    arbre->SetBranchAddress("m_vis",&m_vis);
    arbre->SetBranchAddress("npu",&npu);
    arbre->SetBranchAddress("neutralIso_2",&neutralIso_2);
    arbre->SetBranchAddress("chargedIso_2",&chargedIso_2);
    arbre->SetBranchAddress("puIso_2",&puIso_2);
    arbre->SetBranchAddress("photonIso_2",&photonIso_2);
    arbre->SetBranchAddress("gen_match_2",&gen_match_2);
    arbre->SetBranchAddress("numGenJets",&numGenJets);

    arbre->SetBranchAddress("matchIsoMu22eta2p1_1", &matchIsoMu22eta2p1_1);
    arbre->SetBranchAddress("matchIsoTkMu22eta2p1_1", &matchIsoTkMu22eta2p1_1);
    arbre->SetBranchAddress("matchIsoMu22_1", &matchIsoMu22_1);
    arbre->SetBranchAddress("matchIsoTkMu22_1", &matchIsoTkMu22_1);
    arbre->SetBranchAddress("matchIsoMu24_1", &matchIsoMu24_1);
    arbre->SetBranchAddress("matchIsoTkMu24_1", &matchIsoTkMu24_1);
    arbre->SetBranchAddress("filterIsoMu22eta2p1_1", &filterIsoMu22eta2p1_1);
    arbre->SetBranchAddress("filterIsoTkMu22eta2p1_1", &filterIsoTkMu22eta2p1_1);
    arbre->SetBranchAddress("filterIsoMu22_1", &filterIsoMu22_1);
    arbre->SetBranchAddress("filterIsoTkMu22_1", &filterIsoTkMu22_1);
    arbre->SetBranchAddress("filterIsoMu24_1", &filterIsoMu24_1);
    arbre->SetBranchAddress("filterIsoTkMu24_1", &filterIsoTkMu24_1);
    arbre->SetBranchAddress("passIsoMu22eta2p1", &passIsoMu22eta2p1);
    arbre->SetBranchAddress("passIsoTkMu22eta2p1", &passIsoTkMu22eta2p1);
    arbre->SetBranchAddress("passIsoMu22", &passIsoMu22);
    arbre->SetBranchAddress("passIsoTkMu22", &passIsoTkMu22);
    arbre->SetBranchAddress("passIsoMu24", &passIsoMu24);
    arbre->SetBranchAddress("passIsoTkMu24", &passIsoTkMu24);


//   float bins[] = {2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
//   float binsPass[] = {1,2,3,4,5,6,7};//
   //float bins[] = {40,45,50,55,60,65,70,75,80,85,90,95,100,105,110,115,120,125,130,135,140,145,150,155,160,165,170,175,180,185,190,195,200};
   //float binsPass[] = {40,45,50,55,60,65,70,75,80,85,90,95,100,105,110,115,120,125,130,135,140,145,150};
   //float bins[] = {40,55,70,85,100,115,130,145,160,175,190,205};
   //float binsPass[] = {40,55,70,85,100,115,130};
   float *bins=NULL;
   float *binsPass=NULL;
   int num_bins=30;
   switch(switch_bins)
   {
     case 1:
       {
         num_bins=30;
         bins= new float [num_bins];
         binsPass=new float [num_bins];
         for(int i=0; i<num_bins; i++){ 
           bins[i]=5*i;
           binsPass[i] =  5*i;
         }
         break;
       }
     case 2:
       {
         num_bins=11;
         bins= new float[num_bins];
         binsPass=new float[num_bins];
         for( int i=0; i<num_bins; i++)
         {
            bins[i]=0.5*i;
            binsPass[i]=0.5*i;
         }
         break;
       }
     case 3:
       {
         num_bins=11;
         bins=new float[num_bins];
         binsPass=new float[num_bins];
         for (int i=0; i<num_bins; i++)
         {
            bins[i] = -2.5+i*0.5;
            binsPass[i]=-2.5+i*0.5;
         }
         break;
       }
     default :
       {
         cout<<"default switch_bins"<<std::endl;
         num_bins=30;
         bins= new float[num_bins];
         binsPass=new float[num_bins];
         for (int i=0; i<num_bins; i++)
         { bins[i]=5*i;
           binsPass[i] =  5*i;
         }
         break;
       }
   }
   
   //float bins[] = {40,60,80,100,120,140,160,180,200};
   //float binsPass[] = {40,60,80,100,120,140};
   int  binnum = sizeof(bins)/sizeof(Float_t) - 1;
   int  binnumPass = sizeof(binsPass)/sizeof(Float_t) - 1;

   TH1F *n70=new TH1F ("n70", "n70", 6,0,6);
   TH2F *mvaPt=new TH2F ("mvaPt","mvaPt",50,0.5,1.0,50,20,120);

   std::vector<TH1F*> mtFailH;
   std::vector<TH1F*> mtPassH;
   std::vector<TH1F*> mtFailSSH;
   std::vector<TH1F*> mtPassSSH;

   int nbhist=1;
   if (tes==1) nbhist=8;
   if (tes==2) nbhist=6;

   for (int k=0; k<nbhist; ++k){
        ostringstream HmtPassH; HmtPassH << "mtPassH" << k;
        ostringstream HmtPassSSH; HmtPassSSH << "mtPassSSH" << k;
        mtPassH.push_back(new TH1F (HmtPassH.str().c_str(),"InvMa",binnumPass,binsPass)); mtPassH[k]->Sumw2();
        mtPassSSH.push_back(new TH1F (HmtPassSSH.str().c_str(),"InvMa",binnumPass,binsPass)); mtPassSSH[k]->Sumw2();
        ostringstream HmtFailH; HmtFailH << "mtFailH" << k;
        ostringstream HmtFailSSH; HmtFailSSH << "mtFailSSH" << k;
        mtFailH.push_back(new TH1F (HmtFailH.str().c_str(),"InvMa",binnum,bins)); mtFailH[k]->Sumw2();
        mtFailSSH.push_back(new TH1F (HmtFailSSH.str().c_str(),"InvMa",binnum,bins)); mtFailSSH[k]->Sumw2();

   }
   delete [] binsPass;
   delete [] bins;

   TString postfixTES[8]={"_CMS_scale_t_13TeVDown","_CMS_scale_t_13TeVUp","_CMS_scale_t_1prong_13TeVDown","_CMS_scale_t_1prong_13TeVUp","_CMS_scale_t_1prong1pizero_13TeVDown","_CMS_scale_t_1prong1pizero_13TeVUp","_CMS_scale_t_3prong_13TeVDown","_CMS_scale_t_3prong_13TeVUp"};
   TString postfixLES[6]={"_CMS_scale_faket_13TeVDown","_CMS_scale_faket_13TeVUp","_CMS_scale_faket_1prong_13TeVDown","_CMS_scale_faket_1prong_13TeVUp","_CMS_scale_faket_1prong1pizero_13TeVDown","_CMS_scale_faket_1prong1pizero_13TeVUp"};
//this is where btagging start
// from Kyle
  std::cout << "===> Loading the input .csv SF file..." << std::endl;
  
  std::string inputCSVfile = "/afs/cern.ch/work/k/ktos/public/CMSSW_8_0_17/src/AnalyzerGeneratorRecoVariousFunctions/Analyzer/FILE_TESTS/CSVv2_Moriond17_B_H.csv";  
  BTagCalibration calib("csvv2", inputCSVfile);
  std::cout << "bTagSFShift_= " << bTagSFShift_ << "  BTagEntry::FLAV_C=" << BTagEntry::FLAV_C << "  BTagEntry::FLAV_B=" << BTagEntry::FLAV_B <<  std::endl;
  BTagCalibrationReader reader(BTagEntry::OP_MEDIUM, bTagSFShift_) ;
  
  reader.load(calib, BTagEntry::FLAV_B, "comb");
  reader.load(calib, BTagEntry::FLAV_C, "comb");
  reader.load(calib, BTagEntry::FLAV_UDSG, "incl");
  std::cout  << "initialized reader" << std::endl;
// b tagging ends.
   double Trigger_weightBToF=1.0;
   double Trigger_weightGH=1.0;
   TH2F *TriggerWeight_BToF;
   TFile *_fileTrigger_BToF=new TFile("EfficienciesAndSF_RunBtoF.root");
   TFile *_fileTrigger_GH=new TFile("EfficienciesAndSF_Period4.root");
   TriggerWeight_BToF=(TH2F*)_fileTrigger_BToF->Get("IsoMu24_OR_IsoTkMu24_PtEtaBins/pt_abseta_ratio");
   TH2F *TriggerWeight_GH;
   TriggerWeight_GH=(TH2F*)_fileTrigger_GH->Get("IsoMu24_OR_IsoTkMu24_PtEtaBins/pt_abseta_ratio");
   float binxTrigger_BToF=TriggerWeight_BToF->GetXaxis()->FindBin(pt_1);
   float binyTrigger_BToF=TriggerWeight_BToF->GetYaxis()->FindBin(fabs(eta_1));
   

   ScaleFactor * myScaleFactor_trg = new ScaleFactor();
   myScaleFactor_trg->init_ScaleFactor("LeptonEfficiencies/Muon/Run2016BtoH/Muon_Mu22OR_eta2p1_eff.root");
   ScaleFactor * myScaleFactor_id = new ScaleFactor();
   myScaleFactor_id->init_ScaleFactor("LeptonEfficiencies/Muon/Run2016BtoH/Muon_IdIso_IsoLt0p15_2016BtoH_eff.root");

    TFile *f_Trk=new TFile("Tracking_EfficienciesAndSF_BCDEFGH.root");
    TGraph *h_Trk=(TGraph*) f_Trk->Get("ratio_eff_eta3_dr030e030_corr");

   int nombre=0;int indexmu=0;int nbmu25=0; int nbextramu=0;
   float n70passOS=0; float n70failOS=0; float n70passSS=0; float n70failSS=0;
   Int_t nentries_wtn = (Int_t) arbre->GetEntries();
   double csvSF;
   int count_PassOS=0;
   int count_PassSS=0;
   int count_FailOS=0;
   int count_FailSS=0;
   for (Int_t i = 0; i < nentries_wtn; i++) {
        arbre->GetEntry(i);
        //btagging
        /*csvSF = -1;
        if (tJetHadronFlavour==5)
            csvSF = reader.eval_auto_bounds("central",BTagEntry::FLAV_B, fabs(eta_2), pt_2);
        else if( tJetHadronFlavour == 4 )
            csvSF = reader.eval_auto_bounds("central",BTagEntry::FLAV_C, fabs(eta_2), pt_2);

        else 
            csvSF = reader.eval_auto_bounds("central",BTagEntry::FLAV_UDSG, fabs(eta_2), pt_2);
	std::cout << "csvSF=" << csvSF << "  hadronFlavor=" << tJetHadronFlavour  << std::endl;

        double csvWeight = 1;
        if (sample!="data_obs" && bTagValue >= 0.8484)
            csvWeight = 1 - csvSF;

        std::cout << "csvWeight= " << csvWeight << std::endl;

        if (sample=="data_obs" && bTagValue> 0.8484) continue;
*/
        if (i % 20000 == 0) fprintf(stdout, "\r  Processed events: %8d of %8d ", i, nentries_wtn);
        fflush(stdout);
	bool print=false;
        if (npv<pumin or npv>=pumax) continue;
	if (pt_1<26) continue;
	if (fabs(eta_1)>2.099) continue;
	if (sample!="data_obs" && !id_m_medium_1) continue;
	if (sample=="data_obs" && !id_m_medium_1 && run>=278808) continue;
	if (sample=="data_obs" && !id_m_ICHEPmedium_1 && run<278808) continue;
        bool isSingleLep = (passIsoMu22 && matchIsoMu22_1 && filterIsoMu22_1) or (passIsoTkMu22 && matchIsoTkMu22_1 && filterIsoTkMu22_1) or (passIsoMu22eta2p1 && matchIsoMu22eta2p1_1 && filterIsoMu22eta2p1_1) or (passIsoTkMu22eta2p1 && matchIsoTkMu22eta2p1_1 && filterIsoTkMu22eta2p1_1);
	if (!isSingleLep) continue;
//FIXME trigger matching 
///
        bool tauIsolation;
	if (isolation=="comb3T")
           tauIsolation=byTightCombinedIsolationDeltaBetaCorr3Hits_2;
        if (isolation=="comb3M")
           tauIsolation=byMediumCombinedIsolationDeltaBetaCorr3Hits_2;
        if (isolation=="comb3L")
           tauIsolation=byLooseCombinedIsolationDeltaBetaCorr3Hits_2;
        if (isolation=="comb3dR03T")
           tauIsolation=byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2;
        if (isolation=="comb3dR03M")
           tauIsolation=byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2;
        if (isolation=="comb3dR03L")
           tauIsolation=byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2;
        if (isolation=="MVAoldVL")
           tauIsolation=byVLooseIsolationMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldL")
           tauIsolation=byLooseIsolationMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldM")
           tauIsolation=byMediumIsolationMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldT")
           tauIsolation=byTightIsolationMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldVT")
           tauIsolation=byVTightIsolationMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldVVT")
           tauIsolation=byVVTightIsolationMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldVLrerun")
           tauIsolation=byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldLrerun")
           tauIsolation=byLooseIsolationRerunMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldMrerun")
           tauIsolation=byMediumIsolationRerunMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldTrerun")
           tauIsolation=byTightIsolationRerunMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldVTrerun")
           tauIsolation=byVTightIsolationRerunMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAoldVVTrerun")
           tauIsolation=byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2;
        if (isolation=="MVAnewVL")
           tauIsolation=byVLooseIsolationMVArun2v1DBnewDMwLT_2;
        if (isolation=="MVAnewL")
           tauIsolation=byLooseIsolationMVArun2v1DBnewDMwLT_2;
        if (isolation=="MVAnewM")
           tauIsolation=byMediumIsolationMVArun2v1DBnewDMwLT_2;
        if (isolation=="MVAnewT")
           tauIsolation=byTightIsolationMVArun2v1DBnewDMwLT_2;
        if (isolation=="MVAnewVT")
           tauIsolation=byVTightIsolationMVArun2v1DBnewDMwLT_2;
        if (isolation=="MVAnewVVT")
           tauIsolation=byVVTightIsolationMVArun2v1DBnewDMwLT_2;
        if (isolation=="MVAolddR03VL")
           tauIsolation=byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2;
        if (isolation=="MVAolddR03L")
           tauIsolation=byLooseIsolationMVArun2v1DBdR03oldDMwLT_2;
        if (isolation=="MVAolddR03M")
           tauIsolation=byMediumIsolationMVArun2v1DBdR03oldDMwLT_2;
        if (isolation=="MVAolddR03T")
           tauIsolation=byTightIsolationMVArun2v1DBdR03oldDMwLT_2;
        if (isolation=="MVAolddR03VT")
           tauIsolation=byVTightIsolationMVArun2v1DBdR03oldDMwLT_2;
        if (isolation=="MVAolddR03VVT")
           tauIsolation=byVVTightIsolationMVArun2v1DBdR03oldDMwLT_2;
	if (isolation=="rawL")
	   tauIsolation=(byCombinedIsolationDeltaBetaCorrRaw3Hits_2<2.5);
        if (isolation=="rawM")
           tauIsolation=(byCombinedIsolationDeltaBetaCorrRaw3Hits_2<1.5);
        if (isolation=="rawT")
           tauIsolation=(byCombinedIsolationDeltaBetaCorrRaw3Hits_2<0.8);
        if (isolation=="charged05")
           tauIsolation=(chargedIso_2<0.5);
        if (isolation=="charged08")
           tauIsolation=(chargedIso_2<0.8);
        if (isolation=="charged11")
           tauIsolation=(chargedIso_2<1.1);

        float sf_trg=1.0;
        float sf_id=1.0;
        float sf_iso=1.0;

        if (sample!="data_obs"){
           float binxTrigger_BToF=TriggerWeight_BToF->GetXaxis()->FindBin(pt_1);
           float binyTrigger_BToF=TriggerWeight_BToF->GetYaxis()->FindBin(fabs(eta_1));
           float binxTrigger_GH=TriggerWeight_GH->GetXaxis()->FindBin(pt_1);
           float binyTrigger_GH=TriggerWeight_GH->GetYaxis()->FindBin(fabs(eta_1));
           Trigger_weightBToF=TriggerWeight_BToF->GetBinContent(binxTrigger_BToF, binyTrigger_BToF);
           Trigger_weightGH=TriggerWeight_GH->GetBinContent(binxTrigger_GH, binyTrigger_GH); 
           //sf_trg=myScaleFactor_trg->get_ScaleFactor(pt_1,eta_1);
           sf_trg=20.1/36.8*Trigger_weightBToF+16.7/36.8*Trigger_weightGH;
           sf_id=myScaleFactor_id->get_ScaleFactor(pt_1,eta_1);
	}
	if (iso_1>0.15) continue;

        TLorentzVector mytau;
        mytau.SetPtEtaPhiM(pt_2,eta_2,phi_2,m_2);
        TLorentzVector mymu;
        mymu.SetPtEtaPhiM(pt_1,eta_1,phi_1,m_1);
	bool fillOS=false;
	bool fillSS=false;
   	if (fabs(eta_2)>2.3) continue;
	if (!againstElectronVLooseMVA6_2) continue;
	if (!againstMuonTight3_2) continue;
        //if (!againstMuonLoose3_2) continue;
	if (fabs(mytau.Eta())<etamin) continue;
	if (fabs(mytau.Eta())>etamax) continue;
	if (decaymodefinding=="old" && !decayModeFinding_2) continue;
	if (q_2*q_1<0) fillOS=true;
        if (q_2*q_1>0) fillSS=true;
	if (trackpt_2<5) continue;
	if (dm=="1prong" && l2_decayMode>3) continue;
        if (dm=="1prong0pizero" && l2_decayMode!=0) continue;
        if (dm=="1prong1pizero" && l2_decayMode!=1) continue;
        if (dm=="1prong2pizero" && l2_decayMode!=2) continue;
        if (dm=="3prong" && l2_decayMode<8) continue;

        if (sample=="W"){
            weight=25.446;
            if (numGenJets==1) weight=6.8176;
            else if (numGenJets==2) weight=2.0995;
            else if (numGenJets==3) weight=0.6889;
            else if (numGenJets==4) weight=0.6900;
        }

        if (sample=="ZTT" or sample=="ZLL" or sample=="ZL" or sample=="ZJ" or sample=="DYS" or sample=="DYB" or sample=="DYJ" or sample=="DYS120"){
            weight=4.2081;
            if (numGenJets==1)
                weight=0.5816;
            else if (numGenJets==2)
                weight=0.6160;
            else if (numGenJets==3)
                weight=0.6187;
            else if (numGenJets==4)
                weight=0.4822;
        }

	float sf_trk=1.0;
//	if (sample!="data_obs")
//	   sf_trk=(16.7/36.8)*1.0+(20.1/36.8)*h_Trk->Eval(eta_1);
	float correction=sf_iso*sf_trg*sf_id*sf_trk*LumiWeights_12->weight(npu);
//cout<<correction<<" "<<sf_iso<<" "<<sf_trg<<" "<<sf_id<<" "<<sf_trk<<" "<<LumiWeights_12->weight(npu)<<endl;
	float aweight=weight*correction;
	if (sample=="data_obs") aweight=1.0;
        if (name=="VV") aweight=aweight*amcatNLO_weight;

	//********************* Separation between signal and DY others *******************
        if (sample=="DYS120" && gen_match_2!=5) {fillOS=false; fillSS=false;}
        if (sample=="DYB" && gen_match_2==5) {fillOS=false; fillSS=false;}
        if (sample=="DYB" && gen_match_2>4) {fillOS=false; fillSS=false;}
        if (sample=="DYJ" && gen_match_2<6) {fillOS=false; fillSS=false;}
	if (sample=="DYB" && gen_match_2<5){
            if (fabs(eta_2)<0.4) aweight=aweight*1.470;
            else if (fabs(eta_2)<0.8) aweight=aweight*1.367;
            else if (fabs(eta_2)<1.2) aweight=aweight*1.251;
            else if (fabs(eta_2)<1.7) aweight=aweight*1.770;
            else if (fabs(eta_2)<2.3) aweight=aweight*1.713;
	}
        //std::cout<<"debug, n70 aweight="<<aweight<<std::endl;

	//if (sample!="data_obs") aweight=aweight*20.1/36.8;
	//if (sample=="DYB") continue;

        //********************** MT between muon and MET ***********************************
        float mt=0;
	float mex=met*cos(metphi); float mey=met*sin(metphi);
	float met_pt2=sqrt(mex*mex+mey*mey);
	mt=TMass_F(pt_1,met_pt2,px_1,mex,py_1,mey);
        if (fillOS && mt>80 && tauIsolation) n70passOS+=aweight;
	if (fillSS && mt>80 && tauIsolation) n70passSS+=aweight;
	if (fillOS && mt>80 && (!tauIsolation)) n70failOS+=aweight;
        if (fillSS && mt>80 && (!tauIsolation)) n70failSS+=aweight;

	TLorentzVector mymet;
     	mymet.SetPtEtaPhiM(met,0,metphi,0);

        for (int k=0; k<nbhist; ++k){

           if (tes==1 && gen_match_2==5){
               if (k==0){ mytau*=0.988; mymet=mymet+(0.012/0.988)*mytau;}
               if (k==1){ mytau*=1.012; mymet=mymet-(0.012/1.012)*mytau;}
               if (k==2 && l2_decayMode==0){ mytau*=0.988; mymet=mymet+(0.012/0.988)*mytau;}
               if (k==3 && l2_decayMode==0){ mytau*=1.012; mymet=mymet-(0.012/1.012)*mytau;}
               if (k==4 && l2_decayMode==1){ mytau*=0.988; mymet=mymet+(0.012/0.988)*mytau;}
               if (k==5 && l2_decayMode==1){ mytau*=1.012; mymet=mymet-(0.012/1.012)*mytau;}
               if (k==6 && l2_decayMode==10){ mytau*=0.988; mymet=mymet+(0.012/0.988)*mytau;}
               if (k==7 && l2_decayMode==10){ mytau*=1.012; mymet=mymet-(0.012/1.012)*mytau;}
           }
           if (tes==2 && gen_match_2<5){
               if (k==0){ mytau*=0.985; mymet=mymet+(0.015/0.985)*mytau;}
               if (k==1){ mytau*=1.015; mymet=mymet-(0.015/1.015)*mytau;}
               if (k==2 && l2_decayMode==0){ mytau*=0.985; mymet=mymet+(0.015/0.985)*mytau;}
               if (k==3 && l2_decayMode==0){ mytau*=1.015; mymet=mymet-(0.015/1.015)*mytau;}
               if (k==4 && l2_decayMode==1){ mytau*=0.985; mymet=mymet+(0.015/0.985)*mytau;}
               if (k==5 && l2_decayMode==1){ mytau*=1.015; mymet=mymet-(0.015/1.015)*mytau;}
           }

	   mt=TMass_F(pt_1,mymet.Pt(),px_1,mymet.Px(),py_1,mymet.Py());

           if (mytau.Pt()<ptmin) continue;
           if (mytau.Pt()>ptmax) continue;

	   //************************* Pzeta variable ***********************
	   float norm_zeta=norm_F(mytau.Px()/mytau.Pt()+px_1/pt_1,mytau.Py()/mytau.Pt()+py_1/pt_1);
	   float x_zeta= (mytau.Px()/mytau.Pt()+px_1/pt_1)/norm_zeta;
	   float y_zeta= (mytau.Py()/mytau.Pt()+py_1/pt_1)/norm_zeta;
	   float p_zeta_mis=mex*x_zeta+mey*y_zeta;
	   float pzeta_vis=(mytau.Px()+px_1)*x_zeta+(mytau.Py()+py_1)*y_zeta;
	   bool cut_zeta=p_zeta_mis-0.85*pzeta_vis>-25;

	   //************************* Fill histograms **********************
	   float var;
	   switch(switch_var){
             case 1:
               { 
                 var=(mytau+mymu).M();
                 break;
               }
             case 2:{
               var=mytau.Pt();
               break;
               }
             default :
               std::cout<<"default switch_var"<<std::endl;
               var=(mytau+mymu).M();
           }
	   //float var=dR(eta_1, phi_1, eta_2, phi_2);
           //float var=mytau.Pt();
	   //if (variable=="ntracks"){
	      //var=charged_signalCone_2+charged_isoCone_2;
	   //}
           if (fillOS && cut_zeta && mt<40 && tauIsolation) {//Pass OS
               mtPassH[k]->Fill(var,aweight);
	       mvaPt->Fill(byIsolationMVA3oldDMwLTraw_2,mytau.Pt());
	   }
           if (fillSS && cut_zeta && mt<40 &&  tauIsolation) //Pass SS
               mtPassSSH[k]->Fill(var,aweight);
           if (fillOS && cut_zeta && mt<40 && !tauIsolation) //Fail OS
               mtFailH[k]->Fill(var,aweight);
           if (fillSS && cut_zeta && mt<40 && !tauIsolation) //Fail SS
               mtFailSSH[k]->Fill(var,aweight);
	}
        if (fillOS && tauIsolation) count_PassOS+=1;
        if (fillSS && tauIsolation) count_PassSS+=1;
        if (fillOS && (!tauIsolation)) count_FailOS+=1;
        if (fillSS && (!tauIsolation)) count_FailSS+=1;
				
    } // end of loop over events
    cout<<"n70: "<<n70passOS<<" "<<n70failOS<<" "<<n70passSS<<" "<<n70failSS<<endl;
    //cout<<"calculate QCD transfer factor: count_PassOS="<<count_PassOS<<"; count_PassSS="<<count_PassSS<<"; count_FailOS="<<count_FailOS<<"; count_FailSS="<<count_FailSS<<std::endl;
    n70->SetBinContent(1,n70passOS);
    n70->SetBinContent(2,n70failOS);
    n70->SetBinContent(3,n70passSS);
    n70->SetBinContent(4,n70failSS);
    TFile *fout = TFile::Open(output.c_str(), "RECREATE");
    fout->cd();
    n70->Write();
    mvaPt->Write();

    TString postfix="";
    if (tes==1)
	postfix="_TESUp";
    if (tes==-1)
        postfix="_TESDown";
    if (tes==2)
        postfix="_muToTauUp";
    if (tes==-2)
        postfix="_muToTauDown";
    TDirectory *passOS =fout->mkdir("passOS");
    TDirectory *failOS =fout->mkdir("failOS");
    TDirectory *passSS =fout->mkdir("passSS");
    TDirectory *failSS =fout->mkdir("failSS");
    for (int k=0; k<nbhist; ++k){
       if (tes==1)
          postfix=postfixTES[k];
       if (tes==2)
          postfix=postfixLES[k];
       passOS->cd();
       mtPassH[k]->SetBinContent(binnum+1,0);
       mtPassH[k]->SetBinError(binnum+1,0);
       mtPassH[k]->SetBinContent(0,0);
       mtPassH[k]->SetBinError(0,0);
       for (int l=0; l<binnum;++l){
	   if (mtPassH[k]->GetBinContent(l+1)<0)
	      mtPassH[k]->SetBinContent(l+1,0);
       }
       mtPassH[k]->SetName(name.c_str()+postfix);
       mtPassH[k]->Write();
       failOS->cd();
       mtFailH[k]->SetBinContent(binnum+1,0);
       mtFailH[k]->SetBinError(binnum+1,0);
       mtFailH[k]->SetBinContent(0,0);
       mtFailH[k]->SetBinError(0,0);
       for (int l=0; l<binnum;++l){
           if (mtFailH[k]->GetBinContent(l+1)<0)
              mtFailH[k]->SetBinContent(l+1,0);
       }
       mtFailH[k]->SetName(name.c_str()+postfix);
       mtFailH[k]->Write();
       passSS->cd();
       mtPassSSH[k]->SetBinContent(binnum+1,0);
       mtPassSSH[k]->SetBinError(binnum+1,0);
       mtPassSSH[k]->SetBinContent(0,0);
       mtPassSSH[k]->SetBinError(0,0);
       for (int l=0; l<binnum;++l){
           if (mtPassSSH[k]->GetBinContent(l+1)<0)
              mtPassSSH[k]->SetBinContent(l+1,0);
       }
       mtPassSSH[k]->SetName(name.c_str()+postfix);
       mtPassSSH[k]->Write();
       failSS->cd();
       mtFailSSH[k]->SetBinContent(binnum+1,0);
       mtFailSSH[k]->SetBinError(binnum+1,0);
       mtFailSSH[k]->SetBinContent(0,0);
       mtFailSSH[k]->SetBinError(0,0);
       for (int l=0; l<binnum;++l){
           if (mtFailSSH[k]->GetBinContent(l+1)<0)
              mtFailSSH[k]->SetBinContent(l+1,0);
       }
       mtFailSSH[k]->SetName(name.c_str()+postfix);
       mtFailSSH[k]->Write();
    }
    fout->Close();
} 

