# PrivateMCProductions: TkAlCosmics0T

```
cmsrel CMSSW_10_2_0
cd CMSSW_10_2_0/src
git clone git@github.com:mmusich/PrivateMCProductions.git
cd PrivateMCProductions/TkAlCosmics0T/
mkdir outfiles
./submitAllSeeds.sh
```

this will create 250M events (250 jobs for 1M cosmics events each): N.B. efficiency is not 100% so you'll see many less reconstruction-level events.
