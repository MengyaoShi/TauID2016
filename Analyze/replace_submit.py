if __name__ == "__main__":

    import ROOT
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--input')
    parser.add_argument('--ptmin')
    parser.add_argument('--ptmax')
    parser.add_argument('--etamin')
    parser.add_argument('--etamax')
    parser.add_argument('--iso')
    parser.add_argument('--nvtxmin')
    parser.add_argument('--nvtxmax')
    parser.add_argument('--dm')
    parser.add_argument('--decaymodefinding')
    parser.add_argument('--switch_bins')
    parser.add_argument('--switch_var')
    parser.add_argument('--plotName')
    options = parser.parse_args()

    replacements = {'$PTMIN':options.ptmin, '$PTMAX':options.ptmax, '$ETAMIN':options.etamin, '$ETAMAX':options.etamax, '$NVTXMIN':options.nvtxmin, '$NVTXMAX':options.nvtxmax, '$DM':options.dm, '$DECAYMODEFINDING':options.decaymodefinding, '$ISO':options.iso, '$SWITCHBINS':options.switch_bins, '$SWITCHVAR':options.switch_var, '$NAME':options.plotName}
    print options

    with open(options.input, 'r') as infile, open("submit.sh",'w') as outfile:
       for line in infile:
           print line
           for src, target in replacements.iteritems():
               line = line.replace(src, target)
           outfile.write(line)

