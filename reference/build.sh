mkdir -p $PREFIX/usr/share/reference/
perl -pe 's/^>chr([^\s]+).*/>$1/' <(zcat hg38.fa.gz) > $PREFIX/usr/share/reference/hg38.fa
echo $PREFIX/usr/share/reference/hg38.fa
ls -lh $PREFIX/usr/share/reference/hg38.fa
