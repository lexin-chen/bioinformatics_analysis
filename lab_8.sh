java -jar ~/Notung-2.9.1.2/Notung-2.9.1.2.jar -g ~/lab7/allhomologs.aligned.r50.fa.midpoint.tre -s ~/lab7/speciestree.tre --speciestag prefix --reconcile --savepng --treestats --events --homologtabletabs --root

python ~/recPhyloXML/python/NOTUNGtoRecPhyloXML.py -g allhomologs.aligned.r50.fa.midpoint.treefile.rooting.0 --include.species

java -jar ~/Notung-2.9.1.2/Notung-2.9.1.2.jar -g allhomologs.aligned.r50.fa.midpoint.bs.tre.rooting.0 --savepng --treestats --events --homologtabletabs --rearrange --threshold 90

python ~/recPhyloXML/python/NOTUNGtoRecPhyloXML.py -g allhomologs.aligned.r50.fa.midpoint.tre.rooting.0.rearrange.0 --include.species

---

#how to use jstree 1) go to http://lh3lh3.users.sourceforge.net/jstree.shtml 2) copy content of allhomologs.aligned.r50.fa.midpoint.tre on top box 3) click second box draw tree. 4) move and create alternative tree by click move option 5) copy file to a separate doc on 


iqtree  -s allhomologs.aligned.r50.fa -z twohyps.tre -n 0 -zb 1000
#allhomologs.aligned.r50.fa.log to see p value
#unconstrain (optimal tree)

iqtree  -s allhomologs.aligned.r50.fa -asr -m WAG
#write ancestral sequences
#look at state file

grep -i Node16 allhomologs.aligned.r50.fa.state > Node16.stuff
