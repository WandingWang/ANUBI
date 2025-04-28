# ANUBI

## **Overview**
This pipeline is designed for **Antibody design**. 
### **The whole process includes**  
**1. The initial MD：Make topolofy, Buid box, Add water and ions, Energy minimization, NVT and NTP;**   
**2. The production MD;**  
**3. Binding free energy calculation: gmx_MMPBSA;**  
**4. Sequence Sampling using Monte Carlo methods: We have two different modes PEPTIDE MODE and ANTIBODY MODE, for PEPTIDE MODE, we randomly perform one of the following four operations after every five single-point mutation in the CDR part:** 
- **Add an ALA residue to the end of the peptide** 
- **Add an ALA residue to the beginning of the peptide** 
- **Remove the last residue of the peptide** 
- **Remove the first residue of the peptide** 
It automates the process from input preparation to result generation.

---

## **Installation**
### **Dependencies**
- **VMD** (WITHOUT GUI, and I might use pymol to replace vmd in the future)
- **GROMACS** (GPU version)
- **gmx_MMPBSA**: https://valdes-tresanco-ms.github.io/gmx_MMPBSA/dev/installation/  (**MPI error: gmx_mpi and mpirun(MMPBSA) conflict, check MMPBSA version**.)  
- **Modeller**: https://salilab.org/modeller/download_installation.html  
- **Other dependencies**: Pandas, Numpy, pyyaml, biopython if you don't have them, please use conda to install (or other ways you prefer) 
   ```bash
   conda install xxxx (like pandas)  

### **Installation Steps**
1. Clone the repository:
   ```bash
   git clone https://github.com/WandingWang/antibody_test.git
   cd antibody_test
2. Make sure you have all dependencies: check conda, python, vmd, gromacs, gmx_mmpbsa and modeller;
3. Open the input file **[input.yaml]**, change parameters: **input setting, IMPORTANT Basic setting, gmx_mmpbsa, Modeller and run**, You need to set the input file path, different mode (peptide or antibdoy), conda activation path, etc., as well as the number of chains, mutation locations, etc., based on your own requirements.
4. When you make sure that all dependencies and setting are ok, run main script:
   ```bash
   python AutoBindingMD.py
   
