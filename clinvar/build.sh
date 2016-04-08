echo $PREFIX
mkdir -p $PREFIX/usr/share/ggd/clinvar/

vt decompose -s clinvar_20160203.vcf.gz \
    | vt normalize -r $PREFIX/usr/share/reference/hg38.fa - \
    |  bgzip -c > $PREFIX/clinvar.20160203.tidy.vcf.gz 

tabix $PREFIX/clinvar.20160203.tidy.vcf.gz 
