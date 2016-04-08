SPECIES=Homo_sapiens
GENOME_BUILD=hg38

if [[ ! -e hg38.fa.gz ]]; then
wget -O hg38.fa.gz ftp://ftp.ensembl.org/pub/release-84/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
fi

OPATH=$PREFIX/share/ggd/$SPECIES/${GENOME_BUILD}-reference/
mkdir -p $OPATH
perl -pe 's/^>chr([^\s]+).*/>$1/' <(zcat hg38.fa.gz) > $OPATH/hg38.fa
