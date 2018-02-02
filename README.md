Force-field ports 
=================

Port of DESRES RNA force field from [Tan et al, PNAS 2018](http://10.1073/pnas.1713027115).

***Notice that this branch is experimental, since I am still making some test. I will later add this FF on master branch side by side with Chi-OL3 force field. - GB***

This is an experimental port containing:

- AMBER99SB-ildn-star (ff99sb-star-ildn.tgz from gromacs force-field repository).
- Parmbsc0 corrections for DNA and RNA [(Perez et al, 2007)](http://dx.doi.org/10.1529/biophysj.106.097782), merged from amber99sb_parmbsc0.ff.tgz taken from gromacs force-field repository. Gromacs port by [Guy et al (2012)](http://dx.doi.org/10.1016/j.bpj.2012.08.012).
- Some ions from CHARMM22, [MacKerell et al](http://doi.org/10.1021/jp973084f) (Cl, Na, K, Cs, MG) (charmm22star.ff.tgz from gromacs force-field repository).
- Other ions from [Joung and Cheatam (2008)](http://doi.org/10.1021/jp8001614) (Br, F, I, Rb, Li), implemented locally.
- Phosphate oxygens from [Steinbrecher et al (2012)](http://doi.org/10.1021/ct300613v), implemented locally.
- TIP4PD water from [Piana et al (2015)](http://doi.org/10.1021/jp508971m), implemented locally based on TIP4P and double checked
  against [Robert Best's repository](https://github.com/bestlab/force_fields/tree/master/gromacs_format/amber99sbws.ff).
- RNA charge, LJ, and dihedrals introduced by [Tan et al (2018)](http://10.1073/pnas.1713027115), implemented locally.

Local ports and validations by Giovanni Bussi, with the help of Stefano Piana and Sandro Bottaro. [This directory](./validation-desres) reports a comparison of energy components for a trajectory provided by Stefano Piana.

USE AT YOUR OWN RISK!!

