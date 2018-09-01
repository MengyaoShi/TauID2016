if __name__ == "__main__":

    import ROOT
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--input')
    parser.add_argument('--plotname')
    parser.add_argument('--filename')
    parser.add_argument('--pdfname')
    parser.add_argument('--dirname')
    options = parser.parse_args()

    replacements = {'$PLOTNAME':options.plotname, '$FILENAME':options.filename, '$PDFNAME':options.pdfname, '$DIRNAME': options.dirname}
    print options


    with open(options.input, 'r') as infile, open("submit.py",'w') as outfile:
       for line in infile:
           print line
           for src, target in replacements.iteritems():
               line = line.replace(src, target)
           outfile.write(line)

