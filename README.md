# SDCC Docker

A Dockerfile for [Small Device C Compiler](https://sdcc.sourceforge.net/).
Installed from the sourceforge [releases](https://sourceforge.net/projects/sdcc/files/).
Includes the non-free components.

Tags in this repository correspond to tags on dockerhub.
Find on dockerhub [here](https://hub.docker.com/repository/docker/matthewtingum/sdcc/general).

## Testing

This test command requires [scuba](https://pypi.org/project/scuba/).

Test the docker image with:
```
$ scuba test
SDCC : mcs51/z80/z180/r2k/r2ka/r3ka/sm83/tlcs90/ez80_z80/z80n/ds390/pic16/pic14/TININative/ds400/hc08/s08/stm8/pdk13/pdk14/pdk15/mos6502 4.2.0 #13081 (Linux)
published under GNU General Public License (GPL)
```
