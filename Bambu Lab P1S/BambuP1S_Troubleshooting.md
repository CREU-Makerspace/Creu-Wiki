---
equipment: "Bambu Lab P1S"
category: "3D Printing"
room: Engineering Central B005
status: draft
page: troubleshooting
updated: "2025-10-15"
shortname: "BambuP1S" # e.g. PillarDrill ScrollSaw
---
[[BambuP1S_Splash|← Equipment Splash Page]]

# Troubleshooting & Maintenance – Bambu Lab P1S

*This page provides guidance for <span class="blue-apron">Maker-Pros</span> and <span class="red-apron">Supervisors</span>.  
Students should not attempt repairs beyond routine checks.* 

---

## 🔎 Troubleshooting

**Print not sticking to bed / poor first layer** 
- Build plate is dirty or has fingerprints. Clean with warm soapy water, then Isopropyl Alcohol (IPA).
- Build plate type is incorrect for the material. For ABS/ASA, the Engineering Plate with glue stick is often required.

**Filament grinding or not extruding (clog)** 
- Nozzle is clogged. Follow the official Bambu Lab wiki guide for clearing P1S clogs. If unsure, report to a Supervisor.
- Moisture in filament. Brittle filament may snap in the AMS or extruder. Report it for drying.

**Layer shifting (misaligned layers)** 
- Print speed/acceleration is too high. Reduce speeds in the slicer and re-run calibration.
- Belts on the CoreXY system may be loose. Report to a supervisor for a belt tensioning procedure.

**AMS fails to load or unload filament** 
- Filament tip is not cleanly cut. Trim the filament to a point before loading.
- Resistance in the PTFE tube path from the AMS to the toolhead. Check for kinks or sharp bends.
- Cardboard spools are binding in the AMS. Only use plastic spools or print spool adapters.

**Warping or layer splitting on large ABS/ASA prints** 
- The enclosure door was opened mid-print, causing a temperature drop. Keep the door closed at all times.
- Bed temperature is too low, or there is insufficient adhesion. Clean the plate and use a glue stick.
- The chamber was not allowed to pre-heat sufficiently. Let the bed heat up for 10-15 minutes before starting the print.

*(Add more cases based on manual/SOP; keep concise and practical.)*

---

## 🧰 Routine Maintenance

**<span class="blue-apron">Maker-Pro</span> checks** - Clean the build plate with IPA before each print.
- Clean the carbon rods with a dry microfibre cloth as needed.
- Clean any filament debris from inside the enclosure.

**<span class="red-apron">Supervisor</span>-only** - Lubricate Z-axis lead screws and X/Y rods according to the manufacturer's schedule.
- Replace the complete hotend assembly when a nozzle is worn or terminally clogged.
- Tension the CoreXY belts if print quality degrades.

---

## ⚠️ Report Immediately
All faults must be logged through the **CREU Digital Toolkit**.  

Report anything that **stops safe use**, including:  
- Damaged cables or loose parts  
- Excessive vibration or unusual grinding noises  
- Electrical faults or error codes on the screen that cannot be cleared
- Missing or cracked panels/guards  

Submit a report here: [[FaultReporting|Fault Reporting Guidance]]

---

## 🔗 Related Pages
- [[BambuP1S_Splash|Equipment Splash Page]] – overview and hazards  
- [[BambuP1S_Quickstart|Quickstart Guide]] – setup and essentials  
- [[BambuP1S_Safety_Operation|Safety & Operation]] – detailed safety and procedures