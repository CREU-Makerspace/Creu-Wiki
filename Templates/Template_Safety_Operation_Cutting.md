---
equipment: "{{Equipment Name}}"
category: "{{Category}}"
room: Engineering Central B005
status: draft
page: safety
updated: "{{YYYY-MM-DD}}"
shortname: "{{ShortName}}" # e.g. PillarDrill, ScrollSaw, BandSaw
---
<!--
USAGE
1) This template is for cutting/drilling machines
2) Duplicate this file into the equipment's folder and rename it:
   e.g., "BandSaw_Safety_Operation.md"
3) Replace ALL {{PLACEHOLDER}} tokens.
4) Include approved materials and consumables here (NOT in Quickstart).
5) Delete the "Authoring helper" callout at the bottom before publishing.
6) Link to files in resources will be added manually
7) Do not change or reword section headings, emojis, or tables — only replace {{PLACEHOLDER}} content.
8) Set `shortname` in the frontmatter (e.g., PillarDrill, ScrollSaw) and use it for all internal links: [[{{shortname}}_Splash]], [[{{shortname}}_Quickstart]], [[{{shortname}}_Safety]], [[{{shortname}}_Troubleshooting]].
-->

[[{{shortname}}_Splash|← Equipment Splash Page]]

# Safety & Operation – {{Equipment Name}}

This page provides detailed safety requirements and step-by-step operating guidance.  
All users must complete training before using this tool.

---

## ⚠️ Safety Guidelines

### General Safety
- Only trained individuals may operate this machine  
- **Ask a <span class="red-apron">Supervisor</span> or <span class="blue-apron">Maker-Pro</span> for help if unsure**  
- Maintain a **clean, dry, well-lit workspace**  
- Do not operate in **wet or damp environments**  
- Keep **unauthorised persons** away  

### Personal Protective Equipment (PPE)
- Wear **safety goggles**  
- Avoid **loose clothing or jewellery** near moving parts  
- Tie back long hair  
- Wear **non-slip footwear**  
- Additional PPE: {{ear defenders / dust mask if applicable}}  

### Electrical Safety
- Use only with {{power supply requirements, e.g., 230 V / 50 Hz, 16 A fuse}}  
- **Check power cables for damage before use**  
- **Do not use damaged cables**  
- **Disconnect the machine from power before blade/tool changes or maintenance**  

### {{Tool-Specific}} Safety
- {{Rule 1}}  
- {{Rule 2}}  
- {{Rule 3}}  
- {{Rule 4}}  
- {{Rule 5}}  
- {{Rule 6}}  

---

## ▶️ Operation

### Starting the Machine
- Ensure the {{tooling/blade/bit}} is correctly installed, oriented, and secure  
- Check the {{table/fixture}} is aligned, level, and locked  
- Confirm all required guards, shields, or interlocks are in place and functional  

### Procedure
- Feed the workpiece steadily — do not force  
- Operate only when the {{tooling}} is in the correct motion/stroke  
- For hard or thick material: {{reduce speed / adjust feed rate / apply lubrication if required}}  
- Follow {{material-specific guidance}} for best results  

### Internal Cuts / Special Operations (if applicable)
- {{Steps for internal cuts, angled drilling, or other specific processes}}  

### 🔴 Shutdown Procedure
1. Switch off the machine using the OFF control  
2. Unplug from mains socket (if applicable)  
3. Remove the workpiece and tooling/bit if required  
4. Wait until all moving parts stop fully  
5. Clean down the work area (see [[{{shortname}}_Splash|After Use checklist]])  

---

## 🔩 Consumables & Approved Materials

- **Approved Materials**  
  - {{Material type 1}}  
  - {{Material type 2}}  
  - Maximum thickness/size: {{limit}}  
  - Do not cut/work on materials outside these limits  

- **Consumables**  
  - {{Consumable 1}}  
  - {{Consumable 2}}  
  - {{Consumable 3}}  

---

## 🔗 Related Pages
- [[{{shortname}}_Splash|Equipment Splash Page]] – overview and hazards  
- [[{{shortname}}_Quickstart|Quickstart Guide]] – setup and essentials  
- [[{{shortname}}_Troubleshooting|Troubleshooting & Maintenance]] – upkeep and fault advice  


