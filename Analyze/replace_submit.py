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
    options = parser.parse_args()

    replacements = {'$PTMIN':options.ptmin, '$PTMAX':options.ptmax, '$ETAMIN':options.etamin, '$ETAMAX':options.etamax, '$NVTXMIN':options.nvtxmin, '$NVTXMAX':options.nvtxmax, '$DM':options.dm, '$DECAYMODEFINDING':options.decaymodefinding, '$ISO':options.iso}

    with open(options.input, 'r') as infile, open("submit.sh",'w') as outfile:
       for line in infile:
           for src, target in replacements.iteritems():
               line = line.replace(src, target)
           outfile.write(line)

