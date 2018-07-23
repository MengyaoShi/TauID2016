#ifndef THTH_TREE_H
#define	THTH_TREE_H

#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <utility>
#include <map>
#include <string>
#include "TTree.h"
#include "TFile.h"
#include "TSystem.h"
#include "HTauTauTree_mt.h"
#include "RecoilCorrector.h"
//#include "myHelper.h"

using namespace std;

unsigned int run, lumi, evt, NUP = -10;
bool secondMuon=false;
float gen_match_1, gen_match_2=0;
float npu, rho, npv=-1, puweight, weight;
bool isZtt, isZmt, isZet, isZee, isZmm, isZem, isZEE, isZMM, isZLL, isFake;
float e_1, px_1, py_1, pz_1, pt_1, phi_1, eta_1, m_1, q_1, d0_1, dZ_1, mt_1, iso_1, l1_decayMode;
float id_m_highpt_1, id_m_loose_1, id_m_medium_1, id_m_tight_1, id_m_tightnovtx_1, id_m_hihghpt_1, id_e_mva_nt_loose_1, id_e_mva_nt_tight_1, id_e_cut_veto_1, id_e_cut_loose_1, id_e_cut_medium_1, id_e_cut_tight_1, againstElectronLooseMVA6_1, againstElectronMediumMVA6_1, againstElectronTightMVA6_1, againstElectronVLooseMVA6_1, againstElectronVTightMVA6_1, againstMuonLoose3_1, againstMuonTight3_1, decayModeFinding_1, decayModeFindingNewDMs_1, id_m_ICHEPmedium_1;
float trigweight_1, byCombinedIsolationDeltaBetaCorrRaw3Hits_1, byIsolationMVA3oldDMwoLTraw_1, byIsolationMVA3oldDMwLTraw_1, byIsolationMVA3newDMwoLTraw_1, byIsolationMVA3newDMwLTraw_1, chargedIsoPtSum_1, neutralIsoPtSum_1, puCorrPtSum_1;
float e_2, px_2, py_2, pz_2, pt_2, phi_2, eta_2, m_2, q_2, d0_2, dZ_2, mt_2, iso_2, l2_decayMode;
float id_m_highpt_2, id_m_loose_2, id_m_medium_2, id_m_tight_2, id_m_tightnovtx_2, id_m_hihghpt_2, id_e_mva_nt_loose_2, id_e_mva_nt_tight_2, id_e_cut_veto_2, id_e_cut_loose_2, id_e_cut_medium_2, id_e_cut_tight_2, againstElectronLooseMVA6_2, againstElectronMediumMVA6_2, againstElectronTightMVA6_2, againstElectronVLooseMVA6_2, againstElectronVTightMVA6_2, againstMuonLoose3_2, againstMuonTight3_2, decayModeFinding_2, decayModeFindingNewDMs_2;
float trigweight_2, byCombinedIsolationDeltaBetaCorrRaw3Hits_2, byIsolationMVA3oldDMwoLTraw_2, byIsolationMVA3oldDMwLTraw_2, byIsolationMVA3newDMwoLTraw_2, byIsolationMVA3newDMwLTraw_2, chargedIsoPtSum_2, neutralIsoPtSum_2, puCorrPtSum_2;
float sigmaIetaIeta_1, deltaPhiSuperCluster_1, deltaEtaSuperCluster_1, depositR03tracker_1, depositR03ecal_1, depositR03hcal_1, trackIso_1, ecalIso_1, hcalIso_1; 
float sigmaIetaIeta_2, deltaPhiSuperCluster_2, deltaEtaSuperCluster_2, depositR03tracker_2, depositR03ecal_2, depositR03hcal_2, trackIso_2, ecalIso_2, hcalIso_2;
float pt_tt, m_vis, m_sv, pt_sv, eta_sv, phi_sv, met_sv, mjj, jdeta, jdphi, dijetpt, dijetphi, hdijetphi, visjeteta, ptvis, m_coll, m_coll_uesU, m_coll_uesD, m_coll_jesU, m_coll_jesD, m_coll_tesU, m_coll_tesD;
float mjj_JESDown, jdeta_JESDown,mjj_JESUp,jdeta_JESUp;
int njetingap, njetingap20, nbtag, njets, njetspt20;
int njetingap_JESDown, njetingap20_JESDown, njets_JESDown, njetspt20_JESDown;
int njetingap_JESUp, njetingap20_JESUp, njets_JESUp, njetspt20_JESUp;
float je_1, jmass_1, jpt_1, jpx_1, jpy_1, jpz_1, jeta_1, jphi_1, jrawf_1, jmva_1, jpfid_1, jpuid_1, jcsv_1;
float je_2, jmass_2, jpx_2, jpy_2, jpz_2, jpt_2, jeta_2, jphi_2, jrawf_2, jmva_2, jpfid_2, jpuid_2, jcsv_2;
float bpt_1, beta_1, bphi_1, brawf_1, bmva_1, bpfid_1, bpuid_1, bcsv_1;
float bpt_2, beta_2, bphi_2, brawf_2, bmva_2, bpfid_2, bpuid_2, bcsv_2;
float met, metphi, mvaMet, mvaMetphi, pzetavis, pzetamiss, mvacov00, mvacov01, mvacov11, mvacov10;
int nb_extra_electrons, nb_extra_muons=0;
float top_reweighting, gen_Higgs_pt, gen_Higgs_mass=1.0;
float extraelec_veto, extramuon_veto, dilepton_veto=false;
float byLooseCombinedIsolationDeltaBetaCorr3Hits_2, byMediumCombinedIsolationDeltaBetaCorr3Hits_2, byTightCombinedIsolationDeltaBetaCorr3Hits_2;
float byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2, byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2, byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2;
float charged_signalCone_2, charged_isoCone_2, trackpt_2;
float chargedIso_2, puIso_2, neutralIso_2, photonIso_2;
float extratau_veto, pt_top1, pt_top2, genweight, dphi_12, dphi_mumet, dphi_taumet;
float aMCatNLO_weight, numGenJets,jetPt_2, tJetHadronFlavour, j1hadronflavor, j2hadronflavor, jb1hadronflavor,jb1hadronflavor_CSVL, jb2hadronflavor,jb2hadronflavor_CSVL;
float met_px, met_py;
float byVLooseIsolationMVArun2v1DBnewDMwLT_2,  byVLooseIsolationMVArun2v1DBoldDMwLT_2,  byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2;
float byLooseIsolationMVArun2v1DBnewDMwLT_2,  byLooseIsolationMVArun2v1DBoldDMwLT_2,  byLooseIsolationMVArun2v1DBdR03oldDMwLT_2;
float byMediumIsolationMVArun2v1DBnewDMwLT_2,  byMediumIsolationMVArun2v1DBoldDMwLT_2,  byMediumIsolationMVArun2v1DBdR03oldDMwLT_2;
float byTightIsolationMVArun2v1DBnewDMwLT_2,  byTightIsolationMVArun2v1DBoldDMwLT_2,  byTightIsolationMVArun2v1DBdR03oldDMwLT_2;
float byVTightIsolationMVArun2v1DBnewDMwLT_2,  byVTightIsolationMVArun2v1DBoldDMwLT_2,  byVTightIsolationMVArun2v1DBdR03oldDMwLT_2;
float byVVTightIsolationMVArun2v1DBnewDMwLT_2,  byVVTightIsolationMVArun2v1DBoldDMwLT_2,  byVVTightIsolationMVArun2v1DBdR03oldDMwLT_2;
float matchIsoMu22eta2p1_1,matchIsoTkMu22eta2p1_1,matchIsoMu22_1,matchIsoTkMu22_1,matchIsoMu24_1,matchIsoTkMu24_1,matchIsoMu19Tau20_1,matchIsoMu21Tau20_1,filterIsoMu22eta2p1_1,filterIsoTkMu22eta2p1_1,filterIsoMu22_1,filterIsoTkMu22_1,filterIsoMu24_1,filterIsoTkMu24_1,filterIsoMu19Tau20_1,filterIsoMu21Tau20_1,passIsoMu22eta2p1,passIsoTkMu22eta2p1,passIsoMu22,passIsoTkMu22,passIsoMu24,passIsoTkMu24,passIsoMu19Tau20,passIsoMu21Tau20,matchIsoMu19Tau20_2,matchIsoMu21Tau20_2,filterIsoMu19Tau20_2,filterIsoMu21Tau20_2;
float metSig, metcov00, metcov01, metcov10,metcov11, mvaMetcov00, mvaMetcov01,mvaMetcov10,mvaMetcov11;
float genM,genpT,genpX,genpY,vispX,vispY,filterTau32,pathTau32;
float met_JERDown,met_JESDown,met_UESDown,met_MESDown,met_EESDown,met_TESDown,met_PESDown;
float met_JERUp,met_JESUp,met_UESUp,met_MESUp,met_EESUp,met_TESUp,met_PESUp;
float metphi_JERDown,metphi_JESDown,metphi_UESDown,metphi_MESDown,metphi_EESDown,metphi_TESDown,metphi_PESDown;
float metphi_JERUp,metphi_JESUp,metphi_UESUp,metphi_MESUp,metphi_EESUp,metphi_TESUp,metphi_PESUp;
float byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2, byVTightIsolationRerunMVArun2v1DBoldDMwLT_2, byLooseIsolationRerunMVArun2v1DBoldDMwLT_2, byMediumIsolationRerunMVArun2v1DBoldDMwLT_2, byTightIsolationRerunMVArun2v1DBoldDMwLT_2, byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2,byIsolationRerunMVA3oldDMwLTraw_2;

RecoilCorrector recoilPFMetCorrector("HTT-utilities/RecoilCorrections/data/TypeI-PFMet_Run2016BtoH.root");

void fillTree(TTree *Run_Tree, HTauTauTree_mt *tree, int entry_tree, bool ismc, int recoil){
    tree->GetEntry(entry_tree);
    run = tree->run;
    lumi = tree->lumi;
    tJetHadronFlavour= tree->tJetHadronFlavour;
    j1hadronflavor=tree->j1hadronflavor;
    j2hadronflavor=tree->j2hadronflavor;
    jb1hadronflavor=tree->jb1hadronflavor;
    jb1hadronflavor_CSVL=tree->jb1hadronflavor_CSVL;
    jb2hadronflavor=tree->jb2hadronflavor; 
    jb2hadronflavor_CSVL=tree->jb2hadronflavor_CSVL;
    evt =tree->evt;
    aMCatNLO_weight = tree->GenWeight;

    matchIsoMu22eta2p1_1=tree->mMatchesIsoMu22eta2p1Path;
    matchIsoTkMu22eta2p1_1=tree->mMatchesIsoTkMu22eta2p1Path;
    matchIsoMu22_1=tree->mMatchesIsoMu22Path;
    matchIsoTkMu22_1=tree->mMatchesIsoTkMu22Path;
    matchIsoMu24_1=tree->mMatchesIsoMu24Path;
    matchIsoTkMu24_1=tree->mMatchesIsoTkMu24Path;

    filterIsoMu22eta2p1_1=tree->mIsoMu22eta2p1Filter;
    filterIsoTkMu22eta2p1_1=tree->mIsoTkMu22eta2p1Filter;
    filterIsoMu22_1=tree->mIsoMu22Filter;
    filterIsoTkMu22_1=tree->mIsoTkMu22Filter;
    filterIsoMu24_1=tree->mIsoMu24Filter;
    filterIsoTkMu24_1=tree->mIsoTkMu24Filter;

    passIsoMu22eta2p1=tree->singleIsoMu22eta2p1Pass;
    passIsoTkMu22eta2p1=tree->singleIsoTkMu22eta2p1Pass;
    passIsoMu22=tree->singleIsoMu22Pass;
    passIsoTkMu22=tree->singleIsoTkMu22Pass;
    passIsoMu24=tree->singleIsoMu24Pass;
    passIsoTkMu24=tree->singleIsoTkMu24Pass;

    genpX=tree->genpX;
    genpY=tree->genpY;
    genpT=tree->genpT;
    genM=tree->genM;
    vispX=tree->vispX;
    vispY=tree->vispY;

    pt_top1=tree->topQuarkPt1;
    pt_top2=tree->topQuarkPt2;

    TLorentzVector tau1;
    TLorentzVector tau2;
    tau1.SetPtEtaPhiM(tree->mPt,tree->mEta,tree->mPhi,tree->mMass);
    tau2.SetPtEtaPhiM(tree->tPt,tree->tEta,tree->tPhi,tree->tMass);

    TLorentzVector mymet;
    mymet.SetPtEtaPhiM(tree->type1_pfMetEt,0,tree->type1_pfMetPhi,0);
    float pfmetcorr_ex=mymet.Px();
    float pfmetcorr_ey=mymet.Py();

    if (recoil==1){
         recoilPFMetCorrector.CorrectByMeanResolution(
         mymet.Px(), // uncorrected type I pf met px (float)
         mymet.Py(), // uncorrected type I pf met py (float)
         tree->genpX, // generator Z/W/Higgs px (float)
         tree->genpY, // generator Z/W/Higgs py (float)
         tree->vispX, // generator visible Z/W/Higgs px (float)
         tree->vispY, // generator visible Z/W/Higgs py (float)
         tree->jetVeto30+1,  // number of jets (hadronic jet multiplicity) (int)
         pfmetcorr_ex, // corrected type I pf met px (float)
         pfmetcorr_ey  // corrected type I pf met py (float)
        );
    }
    if (recoil==2){
        recoilPFMetCorrector.CorrectByMeanResolution(
        mymet.Px(), // uncorrected type I pf met px (float)
        mymet.Py(), // uncorrected type I pf met py (float)
        tree->genpX, // generator Z/W/Higgs px (float)
        tree->genpY, // generator Z/W/Higgs py (float)
        tree->vispX, // generator visible Z/W/Higgs px (float)
        tree->vispY, // generator visible Z/W/Higgs py (float)
        tree->jetVeto30,  // number of jets (hadronic jet multiplicity) (int)
        pfmetcorr_ex, // corrected type I pf met px (float)
        pfmetcorr_ey  // corrected type I pf met py (float)
        );
    }
    mymet.SetPxPyPzE(pfmetcorr_ex,pfmetcorr_ey,0,sqrt(pfmetcorr_ex*pfmetcorr_ex+pfmetcorr_ey*pfmetcorr_ey));

    if (ismc && tree->tZTTGenMatching==5 && tree->tDecayMode==0){
        mymet=mymet+tau2-0.982*tau2;
    }
    else if (ismc && tree->tZTTGenMatching==5 && tree->tDecayMode==1){
        mymet=mymet+tau2-1.010*tau2;
    }
    else if (ismc && tree->tZTTGenMatching==5 && tree->tDecayMode==10){
        mymet=mymet+tau2-1.004*tau2;
    }
    if (ismc && (tree->tZTTGenMatching==2 or tree->tZTTGenMatching==4) && tree->tDecayMode==0){
        mymet=mymet+tau2-0.998*tau2;
    }
    else if (ismc && (tree->tZTTGenMatching==2 or tree->tZTTGenMatching==4) && tree->tDecayMode==1){
        mymet=mymet+tau2-1.015*tau2;
    }
    if (ismc && (tree->tZTTGenMatching==1 or tree->tZTTGenMatching==3) && tree->tDecayMode==1){
        mymet=mymet+tau2-1.095*tau2;
    }


    met=mymet.Pt();
    metphi=mymet.Phi();
    met_px=mymet.Px();
    met_py=mymet.Py();

    if (ismc && tree->tZTTGenMatching==5 && tree->tDecayMode==0) tau2=tau2*0.982;
    else if (ismc && tree->tZTTGenMatching==5 && tree->tDecayMode==1) tau2=tau2*1.010;
    else if (ismc && tree->tZTTGenMatching==5 && tree->tDecayMode==10) tau2=tau2*1.004;
    if (ismc && (tree->tZTTGenMatching==2 or tree->tZTTGenMatching==4) && tree->tDecayMode==0) tau2=tau2*0.998;
    else if (ismc && (tree->tZTTGenMatching==2 or tree->tZTTGenMatching==4) && tree->tDecayMode==1) tau2=tau2*1.015;
    if (ismc && (tree->tZTTGenMatching==1 or tree->tZTTGenMatching==3) && tree->tDecayMode==1) tau2=tau2*1.095;

    met_EESDown=tree->type1_pfMet_shiftedPt_ElectronEnDown;
    met_EESUp=tree->type1_pfMet_shiftedPt_ElectronEnUp;
    met_JESUp=tree->type1_pfMet_shiftedPt_JetEnUp;
    met_JESDown=tree->type1_pfMet_shiftedPt_JetEnDown;
    met_MESDown=tree->type1_pfMet_shiftedPt_MuonEnDown;
    met_MESUp=tree->type1_pfMet_shiftedPt_MuonEnUp;
    met_PESUp=tree->type1_pfMet_shiftedPt_PhotonEnUp;
    met_PESDown=tree->type1_pfMet_shiftedPt_PhotonEnDown;
    met_TESUp=tree->type1_pfMet_shiftedPt_TauEnUp;
    met_TESDown=tree->type1_pfMet_shiftedPt_TauEnDown;
    met_UESUp=tree->type1_pfMet_shiftedPt_UnclusteredEnUp;
    met_UESDown=tree->type1_pfMet_shiftedPt_UnclusteredEnDown;
    met_JERDown=tree->type1_pfMet_shiftedPt_JetResDown;
    met_JERUp=tree->type1_pfMet_shiftedPt_JetResUp;

    metphi_EESDown=tree->type1_pfMet_shiftedPhi_ElectronEnDown;
    metphi_EESUp=tree->type1_pfMet_shiftedPhi_ElectronEnUp;
    metphi_JESUp=tree->type1_pfMet_shiftedPhi_JetEnUp;
    metphi_JESDown=tree->type1_pfMet_shiftedPhi_JetEnDown;
    metphi_MESDown=tree->type1_pfMet_shiftedPhi_MuonEnDown;
    metphi_MESUp=tree->type1_pfMet_shiftedPhi_MuonEnUp;
    metphi_PESUp=tree->type1_pfMet_shiftedPhi_PhotonEnUp;
    metphi_PESDown=tree->type1_pfMet_shiftedPhi_PhotonEnDown;
    metphi_TESUp=tree->type1_pfMet_shiftedPhi_TauEnUp;
    metphi_TESDown=tree->type1_pfMet_shiftedPhi_TauEnDown;
    metphi_UESUp=tree->type1_pfMet_shiftedPhi_UnclusteredEnUp;
    metphi_UESDown=tree->type1_pfMet_shiftedPhi_UnclusteredEnDown;
    metphi_JERDown=tree->type1_pfMet_shiftedPhi_JetResDown;
    metphi_JERUp=tree->type1_pfMet_shiftedPhi_JetResUp;

    njets = tree->jetVeto30;
    nbtag = tree->bjetCISVVeto20Medium;
    njetspt20=tree->jetVeto20;

    njets_JESDown = tree->jetVeto30_JetEnDown;
    njetspt20_JESDown=tree->jetVeto20_JetEnDown;
    njets_JESUp = tree->jetVeto30_JetEnUp;
    njetspt20_JESUp=tree->jetVeto20_JetEnUp;

    gen_match_1=tree->mZTTGenMatching;
    gen_match_2=tree->tZTTGenMatching;
    pt_tt=tree->m_t_pt_tt;
    pzetavis=tree->m_t_PZetaVis;
    pzetamiss=tree->m_t_PZeta;

    extraelec_veto=(tree->eVetoZTTp001dxyzR0>0);
    extramuon_veto=(tree->muVetoZTTp001dxyzR0>1);
    dilepton_veto=(tree->dimuonVeto>0);
 
    m_vis=tree->m_t_Mass;

    l2_decayMode=tree->tDecayMode;

    m_1 = tau1.M();
    px_1 = tau1.Px();
    py_1 = tau1.Py();
    pz_1 = tau1.Pz();
    e_1 = tau1.E();
    pt_1 = tau1.Pt();
    phi_1 = tau1.Phi();
    eta_1 = tau1.Eta();
    mt_1 = tree->mMtToPfMet_type1;
    d0_1 = tree->mPVDXY;
    dZ_1 = tree->mPVDZ;
    id_m_loose_1 = tree->mPFIDLoose;
    id_m_medium_1 = tree->mPFIDMedium;
    bool goodglob=tree->mIsGlobal && tree->mNormalizedChi2 < 3 && tree->mChi2LocalPosition < 12 && tree->mTrkKink < 20;
    float isMedium = tree->mPFIDLoose && tree->mValidFraction> 0.49 && tree->mSegmentCompatibility > (goodglob ? 0.303 : 0.451);
    id_m_ICHEPmedium_1 = isMedium;
    id_m_tight_1 = tree->mPFIDTight;
    iso_1 = tree->mRelPFIsoDBDefault;
    q_1 = tree->mCharge;

    m_2 = tau2.M();
    if (tree->tDecayMode==0) m_2=tree->tMass;
    px_2 = tau2.Px();
    py_2 = tau2.Py();
    pz_2 = tau2.Pz();
    e_2 = tau2.E();
    pt_2 = tau2.Pt();
    phi_2 = tau2.Phi();
    eta_2 = tau2.Eta();
    mt_2 = tree->tMtToPfMet_type1;
    dZ_2 = tree->tPVDZ;
    d0_2=tree->tPVDXY;
    iso_2=tree->tByIsolationMVArun2v1DBoldDMwLTraw;
    q_2 = tree->tCharge;
    trackpt_2=tree->tLeadTrackPt;
    charged_signalCone_2=tree->tNChrgHadrSignalCands;
    charged_isoCone_2=tree->tNChrgHadrIsolationCands;
    chargedIso_2=tree->tChargedIsoPtSum;
    neutralIso_2=tree->tNeutralIsoPtSum;
    puIso_2=tree->tPuCorrPtSum;
    photonIso_2=tree->tPhotonPtSumOutsideSignalCone;
    numGenJets=tree->numGenJets;
    jetPt_2=tree->tJetPt;


    againstMuonTight3_2 = tree->tAgainstMuonTight3;
    againstMuonLoose3_2 = tree->tAgainstMuonLoose3;
    againstElectronVLooseMVA6_2 = tree->tAgainstElectronVLooseMVA6;
    againstElectronLooseMVA6_2 = tree->tAgainstElectronLooseMVA6;
    againstElectronMediumMVA6_2 = tree->tAgainstElectronMediumMVA6;
    againstElectronTightMVA6_2 = tree->tAgainstElectronTightMVA6;
    againstElectronVTightMVA6_2 = tree->tAgainstElectronVTightMVA6;
    byLooseCombinedIsolationDeltaBetaCorr3Hits_2 = tree->tByLooseCombinedIsolationDeltaBetaCorr3Hits;
    byMediumCombinedIsolationDeltaBetaCorr3Hits_2 = tree->tByMediumCombinedIsolationDeltaBetaCorr3Hits;
    byTightCombinedIsolationDeltaBetaCorr3Hits_2 = tree->tByTightCombinedIsolationDeltaBetaCorr3Hits;
    //byLooseCombinedIsolationDeltaBetaCorr3HitsdR03_2 = tree->tByLooseCombinedIsolationDeltaBetaCorr3HitsdR03;
    //byMediumCombinedIsolationDeltaBetaCorr3HitsdR03_2 = tree->tByMediumCombinedIsolationDeltaBetaCorr3HitsdR03;
    //byTightCombinedIsolationDeltaBetaCorr3HitsdR03_2 = tree->tByTightCombinedIsolationDeltaBetaCorr3HitsdR03;
    byVLooseIsolationMVArun2v1DBdR03oldDMwLT_2 = tree->tByVLooseIsolationMVArun2v1DBdR03oldDMwLT;
    byVLooseIsolationMVArun2v1DBnewDMwLT_2 = tree->tByVLooseIsolationMVArun2v1DBnewDMwLT;
    byVLooseIsolationMVArun2v1DBoldDMwLT_2 = tree->tByVLooseIsolationMVArun2v1DBoldDMwLT;
    byLooseIsolationMVArun2v1DBdR03oldDMwLT_2 = tree->tByLooseIsolationMVArun2v1DBdR03oldDMwLT;
    byLooseIsolationMVArun2v1DBnewDMwLT_2 = tree->tByLooseIsolationMVArun2v1DBnewDMwLT;
    byLooseIsolationMVArun2v1DBoldDMwLT_2 = tree->tByLooseIsolationMVArun2v1DBoldDMwLT;
    byMediumIsolationMVArun2v1DBdR03oldDMwLT_2 = tree->tByMediumIsolationMVArun2v1DBdR03oldDMwLT;
    byMediumIsolationMVArun2v1DBnewDMwLT_2 = tree->tByMediumIsolationMVArun2v1DBnewDMwLT;
    byMediumIsolationMVArun2v1DBoldDMwLT_2 = tree->tByMediumIsolationMVArun2v1DBoldDMwLT;
    byTightIsolationMVArun2v1DBdR03oldDMwLT_2 = tree->tByTightIsolationMVArun2v1DBdR03oldDMwLT;
    byTightIsolationMVArun2v1DBnewDMwLT_2 = tree->tByTightIsolationMVArun2v1DBnewDMwLT;
    byTightIsolationMVArun2v1DBoldDMwLT_2 = tree->tByTightIsolationMVArun2v1DBoldDMwLT;
    byVTightIsolationMVArun2v1DBdR03oldDMwLT_2 = tree->tByVTightIsolationMVArun2v1DBdR03oldDMwLT;
    byVTightIsolationMVArun2v1DBnewDMwLT_2 = tree->tByVTightIsolationMVArun2v1DBnewDMwLT;
    byVTightIsolationMVArun2v1DBoldDMwLT_2 = tree->tByVTightIsolationMVArun2v1DBoldDMwLT;
    byVVTightIsolationMVArun2v1DBdR03oldDMwLT_2 = tree->tByVVTightIsolationMVArun2v1DBdR03oldDMwLT;
    byVVTightIsolationMVArun2v1DBnewDMwLT_2 = tree->tByVVTightIsolationMVArun2v1DBnewDMwLT;
    byVVTightIsolationMVArun2v1DBoldDMwLT_2 = tree->tByVVTightIsolationMVArun2v1DBoldDMwLT;
    byCombinedIsolationDeltaBetaCorrRaw3Hits_2=tree->tByCombinedIsolationDeltaBetaCorrRaw3Hits;
    byIsolationMVA3oldDMwoLTraw_2=tree->tByIsolationMVArun2v1DBoldDMwLTraw;
    byIsolationMVA3newDMwoLTraw_2=tree->tByIsolationMVArun2v1DBnewDMwLTraw;
    byIsolationMVA3newDMwLTraw_2=tree->tByIsolationMVArun2v1DBnewDMwLTraw;
    byVLooseIsolationRerunMVArun2v1DBoldDMwLT_2 = tree->tRerunMVArun2v1DBoldDMwLTVLoose;
    byLooseIsolationRerunMVArun2v1DBoldDMwLT_2 = tree->tRerunMVArun2v1DBoldDMwLTLoose;
    byMediumIsolationRerunMVArun2v1DBoldDMwLT_2 = tree->tRerunMVArun2v1DBoldDMwLTMedium;
    byTightIsolationRerunMVArun2v1DBoldDMwLT_2 = tree->tRerunMVArun2v1DBoldDMwLTTight;
    byVTightIsolationRerunMVArun2v1DBoldDMwLT_2 = tree->tRerunMVArun2v1DBoldDMwLTVTight;
    byVVTightIsolationRerunMVArun2v1DBoldDMwLT_2 = tree->tRerunMVArun2v1DBoldDMwLTVVTight;
    byIsolationRerunMVA3oldDMwLTraw_2=tree->tRerunMVArun2v1DBoldDMwLTraw;
    neutralIsoPtSum_2=tree->tNeutralIsoPtSum;
    chargedIsoPtSum_2=tree->tChargedIsoPtSum;
    puCorrPtSum_2=tree->tPuCorrPtSum;
    decayModeFinding_2=tree->tDecayModeFinding;
    decayModeFindingNewDMs_2=tree->tDecayModeFindingNewDMs;
    
    jpt_1=tree->j1pt;
    jpt_2=tree->j2pt;
    jeta_1=tree->j1eta;
    jeta_2=tree->j2eta;
    jphi_1=tree->j1phi;
    jphi_2=tree->j2phi;
    jcsv_1=tree->j1csv;
    jcsv_2=tree->j2csv;

    bpt_1=tree->jb1pt;
    bpt_2=tree->jb2pt;
    beta_1=tree->jb1eta;
    beta_2=tree->jb2eta;
    bphi_1=tree->jb1phi;
    bphi_2=tree->jb2phi;
    bcsv_1=tree->jb1csv;
    bcsv_2=tree->jb2csv;
   
  /*ptvis=h.Pt();

  float norm_zeta=norm_F(tau1.Px()/tau1.Pt()+tau2.Px()/tau2.Pt(),tau1.Py()/tau1.Pt()+tau2.Py()/tau2.Pt());
  float x_zeta= (tau1.Px()/tau1.Pt()+tau2.Px()/tau2.Pt())/norm_zeta;
  float y_zeta= (tau1.Py()/tau1.Pt()+tau2.Py()/tau2.Pt())/norm_zeta;
  pzetamiss=ETM.Px()*x_zeta+ETM.Py()*y_zeta;
  pzetavis=(tau1.Px()+tau2.Px())*x_zeta+(tau1.Py()+tau2.Py())*y_zeta;*/

   TLorentzVector h=tau1+tau2;
   TLorentzVector jet1;
   if (njetspt20 > 0 && jpt_1>0)
      jet1.SetPtEtaPhiM(jpt_1,jeta_1,jphi_1,0);
   TLorentzVector jet2;
   if (njetspt20 > 1 && jpt_2>0)
      jet2.SetPtEtaPhiM(jpt_2,jeta_2,jphi_2,0);
   TLorentzVector dijet=jet1+jet2;
   if (njetspt20 > 1){
      jdeta=tree->vbfDeta;
      jdphi=tree->vbfDphi;
      dijetphi=dijet.Phi();
      hdijetphi=h.DeltaPhi(dijet);
      visjeteta=h.Eta()-dijet.Eta();
      mjj=tree->vbfMass;
      njetingap20=tree->vbfJetVeto20;
      njetingap=tree->vbfJetVeto30;
   }
   else{
      jdphi=-10000;
      jdeta=-10000;
      dijetpt=-10000;
      dijetphi=-10000;
      hdijetphi=-10000;
      visjeteta=-10000;
      mjj=-10000;
      njetingap20=-10000;
      njetingap=-100000;
   }
   if (njetspt20_JESUp > 1){
      njetingap20_JESUp=tree->vbfJetVeto20_JetEnUp;
      njetingap_JESUp=tree->vbfJetVeto30_JetEnUp;
      mjj_JESUp=tree->vbfMass_JetEnUp;
      jdeta_JESUp=tree->vbfDeta_JetEnUp;
   }
   else{
      jdeta_JESUp=-10000;
      mjj_JESUp=-10000;
      njetingap20_JESUp=-10000;
      njetingap_JESUp=-100000;
   }
   if (njetspt20_JESDown > 1){
      njetingap20_JESDown=tree->vbfJetVeto20_JetEnDown;
      njetingap_JESDown=tree->vbfJetVeto30_JetEnDown;
      mjj_JESDown=tree->vbfMass_JetEnDown;
      jdeta_JESDown=tree->vbfDeta_JetEnDown;
   }
   else{
      jdeta_JESDown=-10000;
      mjj_JESDown=-10000;
      njetingap20_JESDown=-10000;
      njetingap_JESDown=-100000;
   }

  NUP=tree->NUP;
  //pt_tt=(tau1+tau2+ETM).Pt();
  npu=tree->nTruePU;
  npv=tree->nvtx;
  rho=tree->rho;

  extratau_veto=tree->tauVetoPt20Loose3HitsVtx;
  isZmt=tree->isZtautau && fabs(tree->mGenPdgId)==13;
  isZtt=tree->isZtautau;
  Run_Tree->Fill();
}

#endif


