#! /bin/bash

export GMXLIB="$PWD/../:$GMXLIB"

for dir in AAA CCC GGG UUU
do

cd $dir

for p in gromacs amber
do

for((i=0;i<=500;i+=10)); do
  ../evaluate.$p traj$i.pdb
done > $p.ene

done



echo "RMSD in kj/mol for set $dir"
echo "Bond str    angles      dihedral       LJ-14        coulomb-14   LJ          coulomb"
for((i=1;i<=7;i++)); do
echo -n $(paste amber.ene gromacs.ene | awk '{i='$i'; print $i-$(i+7)}' | awk '{
  x+=$1
  x2+=$1*$1
  c++
}END{
  printf(" %20f",sqrt(x2/c-(x/c)**2))
}'
) "    "
done
echo 

cd ../

done
