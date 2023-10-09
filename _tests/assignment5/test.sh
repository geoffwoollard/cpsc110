hdir=$(pwd)
for zipped in $(ls *_ASSIGN4_CPSC110.zip); do
    echo '----------------------------------------'
    echo 'testing' $zipped
    unzip $zipped
    cd $(basename -s .zip $zipped)
    for fname in test_easy.py test_insert.py test_stats.py; do
        cp ../$fname .
        python3 $fname
    done
    cd $hdir
done