Force-field ports 
=================

Port of force fields useful for RNA or RNA/protein complexes.

Presently implements:
- AMBER99SB-ildn-star (ff99sb-star-ildn.tgz from gromacs force-field repository).
- Parmbsc0 corrections for DNA and RNA [(Perez et al, 2007)](http://dx.doi.org/10.1529/biophysj.106.097782), merged from amber99sb_parmbsc0.ff.tgz taken from gromacs force-field repository. Gromacs port by [Guy et al (2012)](http://dx.doi.org/10.1016/j.bpj.2012.08.012).
- Chi-OL3 corrections for RNA [(Zgarbova et al, 2011)](http://dx.doi.org/10.1021/ct200162x), implemented and validated locally against leaprc.ff14SB from amber14.
- Ions from [Joung and Cheatam (2008)](http://dx.doi.org/10.1021/jp8001614), implemented and validated locally against frcmod.ionsjc_tip3p from amber14.
- Mg ions from [Allner et al (2012)](http://dx.doi.org/10.1021/ct3000734), implemented and tested locally.
- OPC water model from [Izadi et al (2014)](http://dx.doi.org/10.1021/jz501780a), implemented locally (NOT TESTED YET). An opc.gro file is
  also provided and can be used as a template for solvation. Notice that this template is just converted from the spc216.gro fril
  provided with Gromacs without any further equilibration.

Local ports and validations by Sandro Bottaro and Giovanni Bussi, with the help of Maria Darvas and Giovanni Pinamonti.

USE AT YOUR OWN RISK!!

