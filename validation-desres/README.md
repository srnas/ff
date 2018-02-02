Validation against a trajectory kindly provided by Stefano Piana.

- traj.gro: trajectory converted to .gro format with many digits, contributed by Stefano Piana and converted by Giovanni Bussi.
- energies.desmond: energy components for every snapshot, contributed by Stefano Piana.
- evaluate.gromacs: script that computes energies on the provided trajectory using gromacs. Might need adjustments depending
  on your exact gromacs version.
- check.sh: script that runs ./evaluate.gromacs on the whole trajectory and performs the comparison.

If everything is setup correctly, use the command `bash check.sh` to obtain RMSE in kcal/mol for individual energy components.
