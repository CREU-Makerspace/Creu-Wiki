# Maintainer Guide – CREU Makerspace Wiki

This file is for maintainers only. It should not be published as part of student-facing pages.

---

## 📖 Maintainer Docs Overview
There are multiple core maintainer documents in this folder:

- **README.md** → Structure and workflow for creating new equipment pages  
- **Theme_Setup.md** → CSS theme and emoji standards  
- **Project_Management.md** → How to use ChatGPT Projects for ongoing maintenance  
- **VERSION.md** → Current baseline version, date, and summary notes  
- **CHANGELOG.md** → Append-only record of all baseline versions and changes  

Always keep these five documents included in every version ZIP.

---

## 🚀 First-run (2 minutes)

1. Unzip into your Obsidian vault (or create a new vault).  
2. Enable the CSS: **Settings → Appearance → CSS snippets → turn on `creu-theme.css`**.  
3. Open `CREU-TheManufactory_Homepage.md` and click a few links to confirm navigation works.  
4. Read `Maintainer/Project_Management.md` before starting new work.  

---

## 🎨 CSS Theme Setup

The custom theme is stored in `creu-theme.css`.  
It must be placed in the **hidden `.obsidian/snippets/` folder** inside your vault.

- On macOS/Linux, `.obsidian` is a hidden folder — you may need to enable hidden files in Finder or use **Obsidian Settings → Appearance → CSS snippets → Open snippets folder**.  
- On Windows, `.obsidian` is visible inside your vault folder.  
- After placing `creu-theme.css` into `.obsidian/snippets/`, go to **Settings → Appearance → CSS snippets** and toggle it on.  

Once enabled, the banner header and apron role colours will appear on all pages.
- **Logo asset** → Place your logo at `images/creu_logo.png` (recommended height ≈ 60px, transparent background).

---

## 🔢 Versioning Policy

All baselines use the format:

MAJOR.MINOR

Examples: `1.0`, `1.1`, `2.0`

### 🟡 Minor Versions (X.Y)
Increment the **MINOR** number for incremental changes that don’t alter the overall structure of the wiki.  
Examples:
- Adding a new equipment set (e.g., Pillar Drill, Band Saw)
- Filling in blank guide pages (e.g., Fault Reporting Guidance)
- CSS theme updates (colours, emojis, print rules)
- Maintenance fixes or content updates to existing pages

### 🔴 Major Versions (X.0)
Increment the **MAJOR** number when making structural or breaking changes.  
Examples:
- Reorganising the homepage or navigation categories
- Redesigning the 4-page equipment template structure
- Introducing a new dependency (e.g., Dataview plugin for auto-listing)
- Migrating to a new publishing platform (e.g., MkDocs, GitBook)

---

### Example Timeline
- **1.0** – Initial baseline with Scroll Saw 4-page set, templates, CSS theme, maintainer docs  
- **1.1** – Added content to Fault Reporting Guidance page  
- **1.2** – Added Pillar Drill equipment set  
- **1.3** – Updated theme with print CSS and accessibility improvements  
- **2.0** – Restructured homepage with new categories and Dataview auto-listing

---

## 📦 Packaging a Baseline

A helper script is provided at `Maintainer/package.sh` to create a clean baseline ZIP.  
It ensures the right files are included and excludes hidden/system files.

### 🖥️ macOS / Linux
1. Open a terminal.  
2. Navigate into the `Maintainer/` folder of your vault.  
    ```cd path/to/ObsidianVault/CreuWikiPages/Maintainer```
3. Make the script executable (only needed once):
    ```chmod +x package.sh```
4. Run the script (defaults to v1.0, today’s date):
    ```./package.sh```
    Or specify a version:
    ```./package.sh 2025-09-05 v1.1```

🪟 Windows
Option A: Git Bash / WSL (recommended)
- Install Git Bash or enable WSL.
- Follow the same steps as macOS/Linux.

Option B: Manual zipping
- Right-click the `CreuWikiPages` folder → Compress / Send to ZIP.
- Rename the file manually using the format:
	`CreuWikiPages_Baseline_YYYY-MM-DD_vX.X.zip`

✅ The script always names the file in the format:
	`CreuWikiPages_Baseline_YYYY-MM-DD_vX.X.zip`

This way, maintainers on any system have a clear path. 

---

## 📂 Folder Layout
- **Root**
  - `CREU-TheManufactory_Homepage.md` → main homepage
  - `creu-theme.css` → custom theme for banner + apron colours
- **Scroll Saw/** → folder for each tool (one folder per equipment)
  - `ScrollSaw_Splash.md` → overview + links to other pages
  - `ScrollSaw_Quickstart.md` → setup and essentials
  - `ScrollSaw_Safety_Operation.md` → detailed safety and operation steps
  - `ScrollSaw_Troubleshooting.md` → troubleshooting, maintenance, and fault reporting
- **Guides/** → general guidance
  - `Equipment_Induction_Guidance.md`
  - `Fault_Reporting_Guidance.md`
  - `General_Safety.md`
- **Maintainer/** → internal documentation
  - `README.md` (this file)
  - `Theme_Setup.md`

---

## 📑 Equipment Page Structure Standards
Each tool folder should contain four pages:
1. **Splash Page** → overview, hazards, access, checklists, resources  
2. **Quickstart Guide** → key features, essentials, startup steps, blade/tool changes  
3. **Safety & Operation** → detailed safety guidance + operating instructions  
4. **Troubleshooting & Maintenance** → common issues, Maker-Pro vs Supervisor tasks, fault reporting  

---

## 🔧 Notes for Maintainers
- Do not duplicate content across pages; keep Splash as the hub.  
- Always use **wikilinks** (`[[PageName]]`) for internal references.  
- Keep guides minimal until formal policy docs are ready.  
- CSS theme + emoji standards are described in `Theme_Setup.md`.  

---

## 🛠️ Workflow for New Equipment

Follow this process whenever adding a new machine to the wiki.

### 1. Create the Folder
Inside `CreuWikiPages/`, make a new folder:

`CreuWikiPages/<Equipment Name>/`

Example: `CreuWikiPages/Band Saw/`

---
### 2. Copy Templates
From `Templates/`, duplicate these four files into the new equipment folder:
- `Template_Splash.md` → rename → `<EquipmentName>_Splash.md`
- `Template_Quickstart.md` → rename → `<EquipmentName>_Quickstart.md`
- `Template_Safety.md` → rename → `<EquipmentName>_Safety_Operation.md`
- `Template_Troubleshooting.md` → rename → `<EquipmentName>_Troubleshooting.md`
#### 🔧 Choosing the Correct Safety & Operation Template

When creating a new equipment set, select the appropriate **Safety & Operation template flavour** from the `Templates/` folder:

- **Cutting/Drilling (manual feed)** → use `Template_Safety_Operation_Cutting.md`  
  Examples: pillar drill, scroll saw, band saw, hand drills, disc/belt sanders.  
  Includes a **Special Operations** section (e.g., internal cuts) and a standardised shutdown checklist.

- **Heat-based forming/joining** → use `Template_Safety_Operation_Heat.md`  
  Examples: soldering iron, vacuum former, hot wire cutter, heat press.  
  Emphasises heat handling, PPE, and cool-down in shutdown.

- **CNC / Automated** → use `Template_Safety_Operation_CNC.md`  
  Examples: laser cutter, CNC router, 3D printer.  
  Includes program/file loading, monitoring jobs, and interlocks.

⚠️ Do **not** mix these flavours — always start from the correct template to avoid missing critical safety content.


---

### 3. Fill in Content
- Replace **all `{{PLACEHOLDER}}` tokens** with equipment-specific info.
- Use the **Authoring helper** callouts in each template to know what details you need (manual/SOP is usually enough).
- Delete the helper callout before publishing.
#### 🔒 Template Integrity Rules
- Templates are the **single source of truth** for structure and style.  
- Do **not** reword or rename section headings.  
- Do **not** change or invent emojis.  
- Do **not** add or remove tables, lists, or callouts.  
- Only replace `{{PLACEHOLDER}}` tokens with equipment-specific content.  
- If information is missing, leave the placeholder in place.  
- Always open the actual template file; do not reconstruct layouts from memory.

---
### 4. Check Navigation Links
- Ensure wikilinks point correctly:
  - `[[CREU-TheManufactory_Homepage|← Makerspace Homepage]]`
  - Internal links between the four pages (Splash → Quickstart → Safety → Troubleshooting).

---
### 5. Apply CSS Theme
- Banner + apron colours are automatically applied from `creu-theme.css`.
- To add a new apron colour or role, edit `Maintainer/Theme_Setup.md` and `creu-theme.css`.

---
### 6. Final Checks
- ✅ Splash Page: overview, hazards, training, checklists  
- ✅ Quickstart: key features, essentials, startup steps, tooling changes  
- ✅ Safety & Operation: detailed safety rules, procedures, consumables/materials  
- ✅ Troubleshooting: common issues, routine maintenance split (Maker-Pro vs Supervisor), fault reporting  

---
### 7. Update Homepage
- Add the new equipment under the correct category in **CREU-TheManufactory_Homepage.md**.  
- Link to the new *Splash Page* only (Quickstart, Safety, and Troubleshooting are linked from there).  

---
## ✅ Pre-release QA Checklist

Before creating a new version ZIP, run through this checklist:

- [ ] All internal links are **wikilinks** and resolve correctly  
- [ ] Breadcrumbs present (Homepage ↔ Splash; Splash ↔ other equipment pages)  
- [ ] CSS snippet enabled and banner/logo displays  
- [ ] Apron colours render correctly and text is readable  
- [ ] Fault Reporting link goes to **Guides/Fault_Reporting_Guidance.md**  
- [ ] All images have **alt text**  
- [ ] Front-matter metadata present & correct on all pages  
- [ ] Homepage directory updated with any new equipment  
- [ ] ZIP filename uses **YYYY-MM-DD** and **version**  

