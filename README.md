# TDC2
1. From the IP catalog, select Integrated Logic Analyser
2. From Probe ports tab, create clkProp as probe0 and Btrig as probe1.
3. Follow the steps - https://vhdlwhiz.com/using-ila-and-vio/ to create a debug ILA core.


1. Open Vivado, go to File -> Project -> New
2. Give Project name and specify project location.
3. Select RTL Project(Deselect - Do not specify sources at this time, if selected)
4. Add all '.v' files provided in this repository.
5. Add '.xdc' file provided in this repository.
6. Select Arty A7 board.
7. From IP Catalog, search ILA. In general options -> change number of probes to 2. In Probe_Ports, change only probe0 width to 32.
8. Select Ok and Genrate ILA.
9. From Program and Debug, select Generate Bitstream (top right corner shows the ongoing operation).
10. Once finished, open Hardware Manager -> Open Target -> Auto Connect -> Program Device. It should show Digilent board, select this and program.
11. From ILA's Status window, select Run Trigger for this ILA, it will required generate waveforms. 

