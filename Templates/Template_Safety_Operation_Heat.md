---
equipment: "{{Equipment Name}}"
category: "{{Category}}"
room: Engineering Central B005
status: draft
page: safety
updated: "{{YYYY-MM-DD}}"
shortname: "{{ShortName}}" # e.g. SolderIron, VacuumFormer
---
<!--
USAGE
1) This template is for heat based machines
2) Duplicate this file into the equipment's folder and rename it:
   e.g., "SolderIron_Safety_Operation.md"
3) Replace ALL {{PLACEHOLDER}} tokens.
4) Include approved materials and consumables here (NOT in Quickstart).
5) Delete the "Authoring helper" callout at the bottom before publishing.
6) Link to files in resources will be added manually
7) Do not change or reword section headings, emojis, or tables — only replace {{PLACEHOLDER}} content.
8) Set `shortname` in the frontmatter (e.g., SolderIron, VacuumFormer) and use it for all internal links: [[{{shortname}}_Splash]], [[{{shortname}}_Quickstart]], [[{{shortname}}_Safety]], [[{{shortname}}_Troubleshooting]].
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
- Avoid **loose clothing or jewellery** near hot surfaces  
- Tie back long hair  
- Wear **non-slip footwear**  
- Additional PPE: {{heat-resistant gloves / mask if applicable}}  

### Electrical Safety
- Use only with {{power supply requirements, e.g., 230 V / 50 Hz, 16 A fuse}}  
- **Check power cables for damage before use**  
- **Do not use damaged cables**  
- **Disconnect the machine from power before maintenance**  

### {{Tool-Specific}} Safety
- {{Rule 1}}  
- {{Rule 2}}  
- {{Rule 3}}  
- {{Rule 4 (if needed)}}  
- {{Rule 5 (if needed)}}  
- {{Rule 6 (if needed)}}  

---

## ▶️ Operation

### Starting the Machine
- Pre-heat {{tool/bed/surface}} to correct temperature  
- Confirm {{material/consumable}} is loaded and secured  

### Procedure
- Apply heat/work steadily and avoid prolonged contact in one area  
- Use only approved materials (plastics, solder types, etc.)  
- Keep hands/tools clear of hot elements  

### 🔴 Shutdown Procedure
1. Switch off and unplug  
2. Allow all heated parts to cool fully before handling  
3. Remove the workpiece and consumables safely  
4. Clean residues, return consumables to storage  

---

## 🔩 Consumables & Approved Materials

- **Approved Materials**  
  - {{Material type 1}}  
  - {{Material type 2}}  
  - Maximum thickness/size: {{limit}}  
  - Do not use materials outside these limits  

- **Consumables**  
  - {{Consumable 1}}  
  - {{Consumable 2}}  

---

## 🔗 Related Pages
- [[{{shortname}}_Splash|Equipment Splash Page]] – overview and hazards  
- [[{{shortname}}_Quickstart|Quickstart Guide]] – setup and essentials  
- [[{{shortname}}_Troubleshooting|Troubleshooting & Maintenance]] – upkeep and fault advice  

---

> [!tip]- 🧠 Authoring helper (delete before publishing)
> To fill this page, gather:
> - General + PPE + electrical safety rules
> - Tool-specific safety (3–4 bullet points)
> - Startup sequence and cutting/operating procedure
> - Shutdown procedure (5 steps)
> - Approved materials (limits, thickness, hardness)
> - Consumables (blades, bits, accessories)