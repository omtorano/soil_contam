# Capstone idea

Investigate relatioship between hevy metal contaminants and environmental factors including anthropogenic (land use, point source), and natural (soil chemical composition, hydrology). Could be expanded to other contaminants (organics, pfas, etc). 


# Data exploration
Data source https://pubs.usgs.gov/ds/801/
1,417kb for 0-5cm top soil
![image](https://user-images.githubusercontent.com/48129653/127204009-90c081a7-3b8e-4205-9805-470eddf65ad9.png)
Grid of soil surface samples collected in 2013 across US
## Arsenic in top soil
Natural levels range from 1-40mg/kg (https://www.who.int/ipcs/publications/ehc/en/224_As_Part_2.pdf?ua=1)

### What do the data look like?
![image](https://user-images.githubusercontent.com/48129653/127204773-83d2a56f-3b02-42c0-bd57-da453547250c.png)
Boxplot of mg/kg Arsenic in surface soil, majority of values fall within natural range 0-40 mg/kg

   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   
  0.600   3.200   5.200   6.515   7.700 830.000      72 
 
Frequency of values above natural range 
![image](https://user-images.githubusercontent.com/48129653/127216930-e24580f6-92bc-456c-b736-208ff2e2edc5.png)
Histogram of values above natural range

Geographic distrubution of values above natural range
![image](https://user-images.githubusercontent.com/48129653/127217077-fde550c0-5647-4f7f-84ea-3638cfeac1c6.png)
Points scaled by value, As mg/kg in top soil

What can we glean from these data about sources and relationships with other environmental variables?

### Relationship with land use

Broad scale land cover
![image](https://user-images.githubusercontent.com/48129653/127217644-be91ec68-2fa0-469a-89a3-fe8cf6903c72.png)
Points scaled by value, As mg/kg in top soil. Land cover shown by color.

Fine scale land cover
![image](https://user-images.githubusercontent.com/48129653/127219566-5b7ab07f-8d97-4671-ae84-4ce2902909c9.png)
Points scaled by value, As mg/kg in top soil. Land cover shown by color.

### Correlation with other metals

Ag, silver; Al, aluminum; As, arsenic, Ba, barium, Be, beryllium, Bi, bismuth; ca, calcium; Cd, cadmium; Ce, cerium; Co, cobalt; Cr, chromium; Cs, cesium; Cu, copper; Fe, iron; Ga, gallium; Hg, mercury; In, indium; K, potassium; La, lanthanum; Li, lithium; Mg, magnesium; Mn, manganese; Mo, molybdenum; Na, sodium;	Nb, niobium; Ni, nickel; P, phosphorus; Pb, lead; Rb, rubidium; S, sulfur; Sb, antimony; Sc, scandium; Se, selenium; Sn, tin; Sr, strontium; Te, tellurium; Th, thorium; Ti, titanium; Tl, thallium; U, uranium; V, vanadium; W, tungsten; Y, yttrium; Zn, zinc



