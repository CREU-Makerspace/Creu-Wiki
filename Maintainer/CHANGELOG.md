# CHANGELOG
## 📦 Release Note – CREU Makerspace Wiki v1.3
**Date:** 2025-09-01  
**Version:** 1.3  

### Added
- New guides: **Fault Reporting (Student)** and **Supervisor Fault Log**.  
- New **General Guide Template** – homepage link, audience block, logo path, callout + FAQ guidance.  

### Updated
- **Equipment Splash Pages** – added warning block to highlight training requirement.  
- **Student Guide** – reordered steps, added severity levels, examples, MS Teams resources, Expected Online FAQ.  
- **Supervisor Guide** – shift check rule, Expected Online duties, example resolutions, escalation clarity, overdue FAQ.  

### Notes
- Formalises the **fault reporting workflow** across students and supervisors.  
- New guide template ensures consistent structure for future process guides.  
- Splash pages strengthened with explicit training requirement warning.


---

## 📦 Release Note – CREU Makerspace Wiki v1.2
**Date:** 2025-08-30 
**Version:** 1.2

### Added
- New equipment: **Sealey SD008 Solder Station** (full 4-page set: Splash, Quickstart, Safety & Operation, Troubleshooting).
- New equipment: **Hylka 858D Solder Rework Station** (full 4-page set: Splash, Quickstart, Safety & Operation, Troubleshooting).
- Confirmed new **Safety & Operation template flavours** (Cutting/Drilling, Heat, CNC) are in use for new pages.

### Updated
- Heat-based Safety & Operation template now actively used for soldering equipment and extractor workflows.
- Content harmonised across SOP/manuals and templates, ensuring consistent hazard/PPE/operation sections.
- All new pages linked with correct `shortname` and baseline template structure (headings + emojis frozen).

### Notes
- This baseline expands coverage beyond cutting/drilling into **electronics equipment** (soldering irons, rework stations, extractors).
- Extractor pages to be generated once SOP draft is finalised with extracted manual content.
- Represents the first release where **two full equipment sets** have been created in parallel under the heat template.

---

## 📦 Release Note – CREU Makerspace Wiki v1.1
**Date:** 2025-08-29 
**Version:** 1.1

### Added
- New equipment: **Axminster AP340PD Pillar Drill** (full 4-page set: Splash, Quickstart, Safety & Operation, Troubleshooting).
- New **Safety & Operation template flavours**:
  - Cutting/Drilling (with Special Operations & shutdown list)
  - Heat-based (soldering iron, vacuum former, etc.)
  - CNC/Automated (laser cutter, router, 3D printer).
- Expanded **USAGE blocks** across templates with stricter rules (headings/emojis frozen, placeholders only).
- Introduced `shortname` field in YAML to enforce consistent internal links.

### Updated
- Scroll Saw equipment pages regenerated with new templates.
- Troubleshooting template refined (symptom → cause/quick fix, apron-role maintenance split).

### Notes
- This baseline represents the first multi-equipment release (Scroll Saw + Pillar Drill).
- Future baselines should continue to extend using the three Safety template flavours.

---

## 📦 Release Note – CREU Makerspace Wiki v1.0
**Date:** 2025-08-28  
**Version:** 1.0
### 🆕 What’s included

- **Equipment Pages (Scroll Saw)**
    
    - Splash Page – overview, hazards, checklists, training info
    - Quickstart Guide – essentials, setup, key features
    - Safety & Operation – detailed procedures, consumables, shutdown steps
    - Troubleshooting & Maintenance – common issues, Maker-Pro vs Supervisor tasks, fault reporting link
        
- **Homepage** (`CREU-TheManufactory_Homepage.md`)
    
    - Equipment directory
    - Guidance pages section
    - Key People (apron colours)
    - Emergencies + rules
        
- **Guides (placeholders)**
    
    - Equipment Induction Guidance
    - Fault Reporting Guidance
    - General Safety
        
- **Templates** (for new equipment)
    
    - Splash, Quickstart, Safety & Operation, Troubleshooting
        
- **Theme**
    
    - `creu-theme.css` for banner header + apron role colours
    - Print-friendly header/logo hidden (on-screen only)
        
- **Maintainer Docs**
    
    - `README.md` – structure, workflow, QA checklist, versioning, packaging instructions
    - `Theme_Setup.md` – CSS setup, emoji standards
    - `Project_Management.md` – ChatGPT workflow, metadata standards
    - `VERSION.md` – baseline version info
    - `CHANGELOG.md` – release history
### ✅ Notes

- All internal links converted to **wikilinks** for Obsidian compatibility
- Front-matter metadata standardised across all pages + templates
- `.obsidian/snippets/` reminder included for theme setup
- QA checklist ensures quality before packaging future baselines




