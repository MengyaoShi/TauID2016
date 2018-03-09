#include <iostream>
#include <fstream>
#include <sstream>
#include <stdio.h>
#include <vector>
#include <utility>
#include <map>
#include <string>
#include "TH1F.h"
#include "TH2F.h"
#include "TH3F.h"
#include "TTree.h"
#include "TChain.h"
#include "TFile.h"
#include "TMath.h"
#include "TSystem.h"
#include "TRandom.h"
#include "TLorentzVector.h"
#include "TRandom3.h"
#include "makeHisto.h"
#include "mutau_Tree_mt.h"

int main(int argc, char** argv) {

    using namespace std;
    myMap1 = new map<string, TH1F*>();
    myMap2 = new map<string, TH2F*>();
    string status_sample = *(argv + 1);
    bool isMC = false;
    bool isData = false;
    if (status_sample.compare("mc") == 0) isMC = true;
    if (status_sample.compare("data") == 0) isData = true;
    string out = *(argv + 2);
    string outname= out;
    TFile *fout = TFile::Open(outname.c_str(), "RECREATE");

    string in = *(argv + 3);
    string inname= in;
    TFile *fIn = TFile::Open(inname.c_str());

    int recoil=0;
    string recoilType = *(argv + 4);
    if (recoilType.compare("W") == 0)  recoil=1;
    if (recoilType.compare("Z") == 0)  recoil=2;

    TTree* treePtr = (TTree*) fIn->Get("mt/final/Ntuple");
    TH1F *evCounter = (TH1F*) fIn->Get("mt/eventCount");
    TH1F *evCounterW = (TH1F*) fIn->Get("mt/summedWeights");
    HTauTauTree_mt* tree = new HTauTauTree_mt (treePtr);

    TTree *Run_Tree = new TTree("mutau_tree", "mutau_tree");
    Run_Tree->SetDirectory(0);
    Run_Tree->Branch("run", &run, "run/I");
    Run_Tree->Branch("lumi", &lumi, "lumi/I");
    Run_Tree->Branch("evt", &evt, "evt/I");

    Run_Tree->Branch("NUP", &NUP, "NUP/I");
    Run_Tree->Branch("npv", &npv, "npv/F");
    Run_Tree->Branch("npu", &npu, "npu/F");
    Run_Tree->Branch("amcatNLO_weight", &aMCatNLO_weight, "aMCatNLO_weight/F");

    Run_Tree->Branch("pt_1", &pt_1, "pt_1/F");
    Run_Tree->Branch("px_1", &px_1, "px_1/F");
    Run_Tree->Branch("py_1", &py_1, "py_1/F");
    Run_Tree->Branch("pz_1", &pz_1, "pz_1/F");
    Run_Tree->Branch("phi_1", &phi_1, "phi_1/F");
    Run_Tree->Branch("eta_1", &eta_1, "eta_1/F");
    Run_Tree->Branch("m_1", &m_1, "m_1/F");
    Run_Tree->Branch("e_1", &e_1, "e_1/F");
    Run_Tree->Branch("q_1", &q_1, "q_1/F");
    Run_Tree->Branch("d0_1", &d0_1, "d0_1/F");
    Run_Tree->Branch("dZ_1", &dZ_1, "dZ_1/F");
    Run_Tree->Branch("mt_1", &mt_1, "mt_1/F");
    Run_Tree->Branch("iso_1", &iso_1, "iso_1/F");
    Run_Tree->Branch("id_m_ICHEPmedium_1", &id_m_ICHEPmedium_1, "id_m_ICHEPmedium_1/F");
    Run_Tree->Branch("id_m_medium_1", &id_m_medium_1, "id_m_medium_1/F");
    Run_Tree->Branch("id_m_tight_1", &id_m_tight_1, "id_m_tight_1/F");
    Run_Tree->Branch("genpX", &genpX, "genpX/F");
    Run_Tree->Branch("genpY", &genpY, "genpY/F");
    Run_Tree->Branch("genpT", &genpT, "genpT/F");
    Run_Tree->Branch("genM", &genM, "genM/F");
    Run_Tree->Branch("vispX", &vispX, "vispX/F");
    Run_Tree->Branch("vispY", &vispY, "vispY/F");

    Run_Tree->Branch("pt_2", &pt_2, "pt_2/F");
    Run_Tree->Branch("phi_2", &phi_2, "phi_2/F");
    Run_Tree->Branch("eta_2", &eta_2, "eta_2/F");
    Run_Tree->Branch("px_2", &px_2, "px_2/F");
    Run_Tree->Branch("py_2", &py_2, "py_2/F");
    Run_Tree->Branch("pz_2", &pz_2, "pz_2/F");
    Run_Tree->Branch("m_2", &m_2, "m_2/F");
    Run_Tree->Branch("e_2", &e_2, "e_2/F");
    Run_Tree->Branch("q_2", &q_2, "q_2/F");
    Run_Tree->Branch("d0_2", &d0_2, "d0_2/F");
    Run_Tree->Branch("dZ_2", &dZ_2, "dZ_2/F");
    Run_Tree->Branch("mt_2", &mt_2, "mt_2/F");
    Run_Tree->Branch("iso_2", &iso_2, "iso_2/F");
    Run_Tree->Branch("l2_decayMode", &l2_decayMode, "l2_decayMode/F");
    Run_Tree->Branch("againstElectronLooseMVA6_2", &againstElectronLooseMVA6_2, "againstElectronLooseMVA6_2/F");
    Run_Tree->Branch("againstElectronMediumMVA6_2", &againstElectronMediumMVA6_2, "againstElectronMediumMVA6_2/F");
    Run_Tree->Branch("againstElectronTightMVA6_2", &againstElectronTightMVA6_2, "againstElectronTightMVA6_2/F");
    Run_Tree->Branch("againstElectronVLooseMVA6_2", &againstElectronVLooseMVA6_2, "againstElectronVLooseMVA6_2/F");
    Run_Tree->Branch("againstElectronVTightMVA6_2", &againstElectronVTightMVA6_2, "againstElectronVTightMVA6_2/F");
    Run_Tree->Branch("againstMuonLoose3_2", &againstMuonLoose3_2, "againstMuonLoose3_2/F");
    Run_Tree->Branch("againstMuonTight3_2", &againstMuonTight3_2, "againstMuonTight3_2/F");
    Run_Tree->Branch("byLooseCombinedIsolationDeltaBetaCorr3Hits_2", &byLooseCombinedIsolationDeltaBetaCorr3Hits_2, "byLooseCombinedIsolationDeltaBetaCorr3Hits_2/F");
    Run_Tree->Branch("byMediumCombinedIsolationDeltaBetaCorr3Hits_2", &byMediumCombinedIsolationDeltaBetaCorr3Hits_2, "byMediumCombinedIsolationDeltaBetaCorr3Hits_2/F");
    Run_Tree->Branch("byTightCombinedIsolationDeltaBetaCorr3Hits_2", &byTightCombinedIsolationDeltaBetaCorr3Hits_2, "byTightCombinedIsolationDeltaBetaCorr3Hits_2/F");
    Run_Tree->Branch("byCombinedIsolationDeltaBetaCorrRaw3Hits_2", &byCombinedIsolationDeltaBetaCorrRaw3Hits_2, "byCombinedIsolationDeltaBetaCorrRaw3Hits_2/F");
    Run_Tree->Branch("byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2", &byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2, "byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2/F");
    Run_Tree->Branch("byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2", &byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2, "byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2/F");
    Run_Tree->Branch("byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2", &byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2, "byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2/F");
    Run_Tree->Branch("byVLooseIsolationMVArun2v1DBnewDMwLT_2", &byVLooseIsolationMVArun2v1DBnewDMwLT_2, "byVLooseIsolationMVArun2v1DBnewDMwLT_2/F");
    Run_Tree->Branch("byVLooseIsolationMVArun2v1DBoldDMwLT_2", &byVLooseIsolationMVArun2v1DBoldDMwLT_2, "byVLooseIsolationMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2", &byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2, "byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2/F");
    Run_Tree->Branch("byLooseIsolationMVArun2v1DBnewDMwLT_2", &byLooseIsolationMVArun2v1DBnewDMwLT_2, "byLooseIsolationMVArun2v1DBnewDMwLT_2/F");
    Run_Tree->Branch("byLooseIsolationMVArun2v1DBoldDMwLT_2", &byLooseIsolationMVArun2v1DBoldDMwLT_2, "byLooseIsolationMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byLooseIsolationMVArun2v1DBdR03oldDMwLT_2", &byLooseIsolationMVArun2v1DBdR03oldDMwLT_2, "byLooseIsolationMVArun2v1DBdR03oldDMwLT_2/F");
    Run_Tree->Branch("byMediumIsolationMVArun2v1DBnewDMwLT_2", &byMediumIsolationMVArun2v1DBnewDMwLT_2, "byMediumIsolationMVArun2v1DBnewDMwLT_2/F");
    Run_Tree->Branch("byMediumIsolationMVArun2v1DBoldDMwLT_2", &byMediumIsolationMVArun2v1DBoldDMwLT_2, "byMediumIsolationMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byMediumIsolationMVArun2v1DBdR03oldDMwLT_2", &byMediumIsolationMVArun2v1DBdR03oldDMwLT_2, "byMediumIsolationMVArun2v1DBdR03oldDMwLT_2/F");
    Run_Tree->Branch("byTightIsolationMVArun2v1DBnewDMwLT_2", &byTightIsolationMVArun2v1DBnewDMwLT_2, "byTightIsolationMVArun2v1DBnewDMwLT_2/F");
    Run_Tree->Branch("byTightIsolationMVArun2v1DBoldDMwLT_2", &byTightIsolationMVArun2v1DBoldDMwLT_2, "byTightIsolationMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byTightIsolationMVArun2v1DBdR03oldDMwLT_2", &byTightIsolationMVArun2v1DBdR03oldDMwLT_2, "byTightIsolationMVArun2v1DBdR03oldDMwLT_2/F");
    Run_Tree->Branch("byVTightIsolationMVArun2v1DBnewDMwLT_2", &byVTightIsolationMVArun2v1DBnewDMwLT_2, "byVTightIsolationMVArun2v1DBnewDMwLT_2/F");
    Run_Tree->Branch("byVTightIsolationMVArun2v1DBoldDMwLT_2", &byVTightIsolationMVArun2v1DBoldDMwLT_2, "byVTightIsolationMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byVTightIsolationMVArun2v1DBdR03oldDMwLT_2", &byVTightIsolationMVArun2v1DBdR03oldDMwLT_2, "byVTightIsolationMVArun2v1DBdR03oldDMwLT_2/F");
    Run_Tree->Branch("byVVTightIsolationMVArun2v1DBnewDMwLT_2", &byVVTightIsolationMVArun2v1DBnewDMwLT_2, "byVVTightIsolationMVArun2v1DBnewDMwLT_2/F");
    Run_Tree->Branch("byVVTightIsolationMVArun2v1DBoldDMwLT_2", &byVVTightIsolationMVArun2v1DBoldDMwLT_2, "byVVTightIsolationMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byVVTightIsolationMVArun2v1DBdR03oldDMwLT_2", &byVVTightIsolationMVArun2v1DBdR03oldDMwLT_2, "byVVTightIsolationMVArun2v1DBdR03oldDMwLT_2/F");
    Run_Tree->Branch("byIsolationMVA3oldDMwoLTraw_2", &byIsolationMVA3oldDMwoLTraw_2, "byIsolationMVA3oldDMwoLTraw_2/F");
    Run_Tree->Branch("byIsolationMVA3oldDMwLTraw_2", &byIsolationMVA3oldDMwLTraw_2, "byIsolationMVA3oldDMwLTraw_2/F");
    Run_Tree->Branch("byIsolationMVA3newDMwoLTraw_2", &byIsolationMVA3newDMwoLTraw_2, "byIsolationMVA3newDMwoLTraw_2/F");
    Run_Tree->Branch("byIsolationMVA3newDMwLTraw_2", &byIsolationMVA3newDMwLTraw_2, "byIsolationMVA3newDMwLTraw_2/F");

Run_Tree->Branch("byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2", &byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2, "byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byLooseIsolationRerunMVArun2v1DBoldDMwLT_2", &byLooseIsolationRerunMVArun2v1DBoldDMwLT_2, "byLooseIsolationRerunMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byMediumIsolationRerunMVArun2v1DBoldDMwLT_2", &byMediumIsolationRerunMVArun2v1DBoldDMwLT_2, "byMediumIsolationRerunMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byTightIsolationRerunMVArun2v1DBoldDMwLT_2", &byTightIsolationRerunMVArun2v1DBoldDMwLT_2, "byTightIsolationRerunMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byVTightIsolationRerunMVArun2v1DBoldDMwLT_2", &byVTightIsolationRerunMVArun2v1DBoldDMwLT_2, "byVTightIsolationRerunMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2", &byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2, "byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2/F");
    Run_Tree->Branch("byIsolationRerunMVA3oldDMwLTraw_2", &byIsolationRerunMVA3oldDMwLTraw_2, "byIsolationRerunMVA3oldDMwLTraw_2/F");

    Run_Tree->Branch("chargedIsoPtSum_2", &chargedIsoPtSum_2, "chargedIsoPtSum_2/F");
    Run_Tree->Branch("decayModeFinding_2", &decayModeFinding_2, "decayModeFinding_2/F");
    Run_Tree->Branch("decayModeFindingNewDMs_2", &decayModeFindingNewDMs_2, "decayModeFindingNewDMs_2/F");
    Run_Tree->Branch("neutralIsoPtSum_2", &neutralIsoPtSum_2, "neutralIsoPtSum_2/F");
    Run_Tree->Branch("puCorrPtSum_2", &puCorrPtSum_2, "puCorrPtSum_2/F");
    Run_Tree->Branch("chargedIso_2", &chargedIso_2, "chargedIso_2/F");
    Run_Tree->Branch("neutralIso_2", &neutralIso_2, "neutralIso_2/F");
    Run_Tree->Branch("puIso_2", &puIso_2, "puIso_2/F");
    Run_Tree->Branch("photonIso_2", &photonIso_2, "photonIso_2/F");
    Run_Tree->Branch("trackpt_2", &trackpt_2, "trackpt_2/F");
    Run_Tree->Branch("numGenJets", &numGenJets, "numGenJets/F");
    Run_Tree->Branch("jetPt_2", &jetPt_2, "jetPt_2/F");
    Run_Tree->Branch("charged_signalCone_2", &charged_signalCone_2, "charged_signalCone_2/F");
    Run_Tree->Branch("charged_isoCone_2", &charged_isoCone_2, "charged_isoCone_2/F");

    Run_Tree->Branch("matchIsoMu22eta2p1_1", &matchIsoMu22eta2p1_1, "matchIsoMu22eta2p1_1/F");
    Run_Tree->Branch("matchIsoTkMu22eta2p1_1", &matchIsoTkMu22eta2p1_1, "matchIsoTkMu22eta2p1_1/F");
    Run_Tree->Branch("matchIsoMu22_1", &matchIsoMu22_1, "matchIsoMu22_1/F");
    Run_Tree->Branch("matchIsoTkMu22_1", &matchIsoTkMu22_1, "matchIsoTkMu22_1/F");
    Run_Tree->Branch("matchIsoMu24_1", &matchIsoMu24_1, "matchIsoMu24_1/F");
    Run_Tree->Branch("matchIsoTkMu24_1", &matchIsoTkMu24_1, "matchIsoTkMu24_1/F");

    Run_Tree->Branch("filterIsoMu22eta2p1_1", &filterIsoMu22eta2p1_1, "filterIsoMu22eta2p1_1/F");
    Run_Tree->Branch("filterIsoTkMu22eta2p1_1", &filterIsoTkMu22eta2p1_1, "filterIsoTkMu22eta2p1_1/F");
    Run_Tree->Branch("filterIsoMu22_1", &filterIsoMu22_1, "filterIsoMu22_1/F");
    Run_Tree->Branch("filterIsoTkMu22_1", &filterIsoTkMu22_1, "filterIsoTkMu22_1/F");
    Run_Tree->Branch("filterIsoMu24_1", &filterIsoMu24_1, "filterIsoMu24_1/F");
    Run_Tree->Branch("filterIsoTkMu24_1", &filterIsoTkMu24_1, "filterIsoTkMu24_1/F");

    Run_Tree->Branch("passIsoMu22eta2p1", &passIsoMu22eta2p1, "passIsoMu22eta2p1/F");
    Run_Tree->Branch("passIsoTkMu22eta2p1", &passIsoTkMu22eta2p1, "passIsoTkMu22eta2p1/F");
    Run_Tree->Branch("passIsoMu22", &passIsoMu22, "passIsoMu22/F");
    Run_Tree->Branch("passIsoTkMu22", &passIsoTkMu22, "passIsoTkMu22/F");
    Run_Tree->Branch("passIsoMu24", &passIsoMu24, "passIsoMu24/F");
    Run_Tree->Branch("passIsoTkMu24", &passIsoTkMu24, "passIsoTkMu24/F");

    Run_Tree->Branch("m_vis", &m_vis, "m_vis/F");

    Run_Tree->Branch("pt_top1", &pt_top1, "pt_top1/F");
    Run_Tree->Branch("pt_top2", &pt_top2, "pt_top2/F");
    Run_Tree->Branch("genweight", &genweight, "genweight/F");
    Run_Tree->Branch("gen_match_2", &gen_match_2, "gen_match_2/F");

    Run_Tree->Branch("met_JESDown", &met_JESDown, "met_JESDown/F");
    Run_Tree->Branch("met_JERDown", &met_JERDown, "met_JERDown/F");
    Run_Tree->Branch("met_MESDown", &met_MESDown, "met_MESDown/F");
    Run_Tree->Branch("met_EESDown", &met_EESDown, "met_EESDown/F");
    Run_Tree->Branch("met_TESDown", &met_TESDown, "met_TESDown/F");
    Run_Tree->Branch("met_PESDown", &met_PESDown, "met_PESDown/F");
    Run_Tree->Branch("met_UESDown", &met_UESDown, "met_UESDown/F");
    Run_Tree->Branch("met_JESUp", &met_JESUp, "met_JESUp/F");
    Run_Tree->Branch("met_JERUp", &met_JERUp, "met_JERUp/F");
    Run_Tree->Branch("met_MESUp", &met_MESUp, "met_MESUp/F");
    Run_Tree->Branch("met_EESUp", &met_EESUp, "met_EESUp/F");
    Run_Tree->Branch("met_TESUp", &met_TESUp, "met_TESUp/F");
    Run_Tree->Branch("met_PESUp", &met_PESUp, "met_PESUp/F");
    Run_Tree->Branch("met_UESUp", &met_UESUp, "met_UESUp/F");
    Run_Tree->Branch("metphi_JESDown", &metphi_JESDown, "metphi_JESDown/F");
    Run_Tree->Branch("metphi_JERDown", &metphi_JERDown, "metphi_JERDown/F");
    Run_Tree->Branch("metphi_MESDown", &metphi_MESDown, "metphi_MESDown/F");
    Run_Tree->Branch("metphi_EESDown", &metphi_EESDown, "metphi_EESDown/F");
    Run_Tree->Branch("metphi_TESDown", &metphi_TESDown, "metphi_TESDown/F");
    Run_Tree->Branch("metphi_PESDown", &metphi_PESDown, "metphi_PESDown/F");
    Run_Tree->Branch("metphi_UESDown", &metphi_UESDown, "metphi_UESDown/F");
    Run_Tree->Branch("metphi_JESUp", &metphi_JESUp, "metphi_JESUp/F");
    Run_Tree->Branch("metphi_JERUp", &metphi_JERUp, "metphi_JERUp/F");
    Run_Tree->Branch("metphi_MESUp", &metphi_MESUp, "metphi_MESUp/F");
    Run_Tree->Branch("metphi_EESUp", &metphi_EESUp, "metphi_EESUp/F");
    Run_Tree->Branch("metphi_TESUp", &metphi_TESUp, "metphi_TESUp/F");
    Run_Tree->Branch("metphi_PESUp", &metphi_PESUp, "metphi_PESUp/F");
    Run_Tree->Branch("metphi_UESUp", &metphi_UESUp, "metphi_UESUp/F");

    Run_Tree->Branch("met", &met, "met/F");
    Run_Tree->Branch("metphi", &metphi, "metphi/F");
    Run_Tree->Branch("met_px", &met_px, "met_px/F");
    Run_Tree->Branch("met_py", &met_py, "met_py/F");
    Run_Tree->Branch("pzetavis", &pzetavis, "pzetavis/F");
    Run_Tree->Branch("pzetamiss", &pzetamiss, "pzetamiss/F");

    Run_Tree->Branch("nbtag", &nbtag, "nbtag/I");
    Run_Tree->Branch("njets", &njets, "njets/I");

    //reweight::LumiReWeighting* LumiWeights_12;
    //LumiWeights_12 = new reweight::LumiReWeighting("pileup-hists/MC_Spring15_PU25_Startup.root", "pileup-hists/Data_Pileup_2015D_Nov17.root", "pileup", "pileup");
    int bestEntry=-1;
    ULong64_t evt_now=0;
    ULong64_t evt_before=-1;
    float muiso_before=100;
    float tauiso_before=-1000;
    float mupt_before=0;
    float taupt_before=0;
    bool print=false;
    plotFill("nevents",0,9,0,9,evCounter->GetBinContent(1));
    plotFill("nevents",1,9,0,9,evCounterW->GetBinContent(1));
    for (int iEntry = 0; iEntry < tree->GetEntries() ; iEntry++)
    {
        float pu=1.0;
        tree->GetEntry(iEntry);
        bool print=false;
        if (iEntry % 1000 == 0) fprintf(stdout, "\r  Processed events: %8d ", iEntry);
        fflush(stdout);
        //if (!tree->singleIsoTkMu24Pass && !tree->singleIsoMu24Pass) continue;
        TLorentzVector dau1;
        TLorentzVector dau2;
        dau1.SetPtEtaPhiM(tree->mPt,tree->mEta,tree->mPhi,tree->mMass);
        dau2.SetPtEtaPhiM(tree->tPt,tree->tEta,tree->tPhi,tree->tMass);
        if (isMC && tree->tDecayMode==0) dau2=dau2*0.982;
        else if (isMC && tree->tDecayMode==1) dau2=dau2*1.010;
        else if (isMC && tree->tDecayMode==10) dau2=dau2*1.004;
        if (tree->m_t_DR<0.5) continue;
	if (fabs(tree->mPVDXY)>0.045) continue;
        if (fabs(tree->mPVDZ)>0.2) continue;
        if (fabs(tree->tPVDZ)>0.2) continue;
        if (dau1.Pt()<21 or dau2.Pt()<19) continue;
        if (fabs(dau1.Eta())>2.4 or fabs(dau2.Eta())>2.3) continue;
	if (!tree->tDecayModeFinding) continue;
 	if (fabs(tree->tCharge)>1) continue;
	//if (tree->mRelPFIsoDBDefault>0.5) continue;
	bool goodglob=tree->mIsGlobal && tree->mNormalizedChi2 < 3 && tree->mChi2LocalPosition < 12 && tree->mTrkKink < 20; 
	bool isMedium = tree->mPFIDLoose && tree->mValidFraction> 0.49 && tree->mSegmentCompatibility > (goodglob ? 0.303 : 0.451); 
        if (!isMedium && !tree->mPFIDMedium) continue;
	evt_now=tree->evt;
	if (tree->eVetoZTTp001dxyzR0>0) continue;
	if (tree->muVetoZTTp001dxyzR0>1) continue;
	if (tree->dimuonVeto>0) continue;
        if (!tree->tAgainstMuonTight3) continue;//FIXME
        if (!tree->tAgainstElectronVLooseMVA6) continue;//FIXME
	if (tree->mRelPFIsoDBDefaultR04>0.15) continue;
	if (evt_now!=evt_before){
	   mupt_before=tree->mPt;
	   muiso_before=tree->mRelPFIsoDBDefault;
	   taupt_before=tree->tPt;
	   tauiso_before=tree->tByIsolationMVArun2v1DBoldDMwLTraw;
	}
        if (evt_now!=evt_before){
           if (bestEntry>-1)
              fillTree(Run_Tree,tree,bestEntry,isMC,recoil);
           bestEntry=iEntry;
	}
	if (evt_now==evt_before){
	   if (tree->mRelPFIsoDBDefault<muiso_before or (tree->mRelPFIsoDBDefault==muiso_before && tree->mPt>mupt_before) or (tree->mRelPFIsoDBDefault==muiso_before && tree->mPt==mupt_before && tree->tByIsolationMVArun2v1DBoldDMwLTraw>tauiso_before) or (tree->mRelPFIsoDBDefault==muiso_before && tree->mPt==mupt_before && tree->tByIsolationMVArun2v1DBoldDMwLTraw==tauiso_before && tree->tPt>taupt_before) ){
		bestEntry=iEntry;
	        muiso_before=tree->mRelPFIsoDBDefault;
		mupt_before=tree->mPt;
		tauiso_before=tree->tByIsolationMVArun2v1DBoldDMwLTraw;
		taupt_before=tree->tPt;
	   }
	}
	evt_before=evt_now;
    }
    fillTree(Run_Tree,tree,bestEntry,isMC,recoil);
    fout->cd();
    Run_Tree->Write();
    map<string, TH1F*>::const_iterator iMap1 = myMap1->begin();
    map<string, TH1F*>::const_iterator jMap1 = myMap1->end();
    for (; iMap1 != jMap1; ++iMap1)
        nplot1(iMap1->first)->Write();
    map<string, TH2F*>::const_iterator iMap2 = myMap2->begin();
    map<string, TH2F*>::const_iterator jMap2 = myMap2->end();
    for (; iMap2 != jMap2; ++iMap2)
        nplot2(iMap2->first)->Write();

    fout->Close();
    return 0;
}

