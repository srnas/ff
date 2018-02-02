
GMXLIB=../ ./evaluate.gromacs traj.gro > energies.gromacs


echo -n "bond "
paste energies.gromacs energies.desmond | awk '{x=$1-$8;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'
echo -n "angle "
paste energies.gromacs energies.desmond | awk '{x=$2-$9;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'
echo -n "dihedral "
paste energies.gromacs energies.desmond | awk '{x=$3-$10;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'
echo -n "LJ-14 "
paste energies.gromacs energies.desmond | awk '{x=$4-$11;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'
echo -n "Coulomb-14 "
paste energies.gromacs energies.desmond | awk '{x=$5-$12;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'
echo -n "LJ "
paste energies.gromacs energies.desmond | awk '{x=$6-$13;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'
echo -n "Coulomb "
paste energies.gromacs energies.desmond | awk '{x=$7-$14;a2+=x*x;a+=x;}END{print sqrt(a2/NR-(a/NR)**2)}'



