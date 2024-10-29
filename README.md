# PIXI testing


## Custom conda servers

Minimal pixi toml

```toml
[project]
name = "pixi-tests"
version = "1.0.0"
description = "A pixi project for testing"
channels = ["https://software.repos.intel.com/python/conda", "conda-forge"]
platforms = ["win-64"]

[dependencies]
ifx_win-64 = "*"

[tasks]
info = {cmd=[ "where", "ifx"]}
```

```shell
(base) C:\Work\code\code-aster-src>pixi run info
  × failed to solve the conda requirements of 'default' 'win-64'
  ╰─▶ Cannot solve the request because of: No candidates were found for ifx_win-64 *.
```

Using mamba

```shell
(base) C:\Work\code\code-aster-src>mamba create -n mambatest -c https://software.repos.intel.com/python/conda -c conda-forge ifx_win-64

Looking for: ['ifx_win-64']

https://software.repos.intel.com/python/conda/no..            No change
https://software.repos.intel.com/python/conda/wi..            No change
conda-forge/noarch                                  17.0MB @  29.5MB/s  0.6s
conda-forge/win-64                                  25.2MB @  32.3MB/s  0.8s
Transaction                                                                                                                                                                      
  Prefix: C:\Work\miniforge3\envs\mambatest

  Updating specs:

   - ifx_win-64


  Package                    Version  Build           Channel                                     Size
--------------------------------------------------------------------------------------------------------
  Install:
--------------------------------------------------------------------------------------------------------

  + compiler_shared         2025.0.0  intel_1162      software.repos.intel.com/python/conda      195MB
  + intel-cmplr-lib-rt      2025.0.0  intel_1162      software.repos.intel.com/python/conda       16MB
  + intel-cmplr-lic-rt      2025.0.0  intel_1162      software.repos.intel.com/python/conda       47kB
  + tcm                        1.2.0  intel_583       software.repos.intel.com/python/conda      332kB
  + umf                        0.9.0  intel_584       software.repos.intel.com/python/conda       63kB
  + intel-cmplr-lib-ur      2025.0.0  intel_1162      software.repos.intel.com/python/conda        1MB
  + intel-openmp            2025.0.0  intel_1162      software.repos.intel.com/python/conda        4MB
  + intel-fortran-rt        2025.0.0  intel_1162      software.repos.intel.com/python/conda        3MB
  + vswhere                    3.1.7  h57928b3_0      conda-forge                                219kB
  + ucrt                10.0.22621.0  h57928b3_1      conda-forge                               Cached
  + vs2022_win-64        19.41.34120  h72b6792_22     conda-forge                                 20kB
  + vc14_runtime         14.40.33810  hcc2c482_22     conda-forge                               Cached
  + vs_win-64                2022.11  h72b6792_22     conda-forge                                 18kB
  + vc                          14.3  h8a93ad2_22     conda-forge                               Cached
  + tbb                     2022.0.0  vc14_intel_396  software.repos.intel.com/python/conda      233kB
  + intel-opencl-rt         2025.0.0  intel_1162      software.repos.intel.com/python/conda      100MB
  + ifx_impl_win-64         2025.0.0  intel_1162      software.repos.intel.com/python/conda       29MB
  + ifx_win-64              2025.0.0  intel_1162      software.repos.intel.com/python/conda       18kB

  Summary:

  Install: 18 packages

  Total download: 348MB

--------------------------------------------------------------------------------------------------------


Confirm changes: [Y/n]
```