# Maintainer Guide – CREU Makerspace Wiki


> **Maintainer Use Only**  
> This file defines the repository structure, theme standards, and maintainer workflow for the Makerspace Wiki.  
> It replaces the legacy “baseline ZIP” workflow with a **GitHub-based system** for version control, collaboration, and version tagging.

---

## 📖 Maintainer Docs Overview

These files in the `Maintainer/` folder define the complete technical management system for the wiki:

| File | Purpose |
|------|----------|
| **README.md** | Structure and workflow for adding or editing content |
| **Theme_Setup.md** | CSS theme and emoji standards |
| **Project_Management.md** | How to use ChatGPT Projects for maintenance |
| **VERSION.md** | Current baseline version, date, and summary notes |
| **CHANGELOG.md** | Append-only record of all major/minor version updates |

All five must remain in the repository at all times.

---

## 🚀 Initial Setup (2 Minutes)

1. **Clone this repository** into your Obsidian vault:  
   - Open **GitHub Desktop → File → Clone repository** → choose `CREU-Makerspace/creu-wiki`.  
2. **Enable the CSS theme** (see below).  
3. **Confirm navigation:** open `CREU-TheManufactory_Homepage.md` and test links.  
4. **Review `Maintainer/Project_Management.md`** before starting structured tasks.

---

## 🎨 CSS Theme Setup

The wiki uses a custom CSS theme (`creu-theme.css`) providing:

- Banner header with logo + title  
- Coloured apron roles (Staff, Supervisor, Maker-Pro, Green Apron)  
- Emoji and section consistency  
- Hidden filename title bars (banner replaces Obsidian’s default heading)

Full reference: [[Theme_Setup.md]]

---

### 📁 File Location
<Your Vault>/.obsidian/snippets/creu-theme.css


---

### 🍎 macOS – Show the Hidden `.obsidian` Folder
1. Open your vault folder in **Finder**.  
2. Press **⌘ + Shift + . (period)** to toggle hidden files.  
3. Navigate to `.obsidian/snippets/`.  
4. If `snippets/` doesn’t exist, create it (lowercase).  
5. Copy `creu-theme.css` into this folder.  

**Alternative (recommended):**  
Obsidian → **Settings → Appearance → CSS snippets → Open snippets folder**  
This opens the correct path automatically.

---

### 🪟 Windows
1. Navigate to `.obsidian\snippets\` inside your vault folder.  
2. If missing, create it manually.  
3. Place `creu-theme.css` inside that folder.

---

### 🧩 Enable or Update the Theme
1. Obsidian → **Settings → Appearance → CSS snippets**  
2. Toggle **`creu-theme.css` ON**  
3. Disable older versions to prevent duplication  
4. Click **Refresh snippets** or restart Obsidian if needed

---

### 🖼️ Logo Asset
Store at `images/creu_logo.png`  
- Height ≈ 60 px  
- Transparent background (PNG preferred)

---

### 🧰 Troubleshooting

| Issue | Likely Cause | Fix |
|-------|---------------|-----|
| Snippet not listed | Wrong path or file extension | Verify `.obsidian/snippets/creu-theme.css`, refresh snippets |
| Theme doesn’t apply | Not enabled / duplicate snippets | Disable duplicates, toggle OFF → ON |
| No `.obsidian` folder | Vault not opened yet | Open vault once; Obsidian will create it |
| Banner missing | CSS not loaded or overridden | Confirm file placement and name |

---

## 🔢 Version Control and Releases

GitHub is the **official system of record** for all versions of the Makerspace Wiki.

- **Commits** record every change.  
- **Branches** hold active work.  
- **Pull Requests (PRs)** handle contribution reviews.  
- **Tags /Releases** mark stable milestones.

`VERSION.md` and `CHANGELOG.md` remain as **human-readable summaries** of significant updates.

### 🟡 Minor Versions (X.Y)
Use for non-breaking improvements:  
– Add or revise equipment sets  
– Expand or correct guides  
– CSS theme or emoji tweaks  
– Routine content maintenance

### 🔴 Major Versions (X.0)
Use for structural or breaking updates:  
– Reorganised homepage or categories  
– Template redesign  
– New plugin dependencies (e.g., Dataview)  
– Changed publishing architecture

### 🧭 Tagging a Release
1. Commit all final edits.  
2. In GitHub → **Create Tag / Release** (e.g., `v2.2`).  
3. Summarise new or updated content.  
4. Update `VERSION.md` and append to `CHANGELOG.md`.

---

## 📂 Folder Layout

| Folder | Contents |
|---------|-----------|
| **Root** | Homepage (`CREU-TheManufactory_Homepage.md`), theme file |
| **Equipment Folders** | One per tool, each with four pages |
| **Guides/** | Induction, Fault-Reporting, General Safety, etc. |
| **Maintainer/** | Internal documentation |
| **Templates/** | Canonical 4-page structures |
| **images/** | Logos, diagrams, shared assets |

---

## 📑 Equipment Page Structure

Each equipment folder must contain:

1. **Splash Page** – overview, hazards, access, checklists, resources  
2. **Quickstart Guide** – key features, setup, tooling changes  
3. **Safety & Operation** – detailed safety and operating steps  
4. **Troubleshooting & Maintenance** – issues, maintenance roles, fault reporting

---

## 🧱 Template Integrity Rules

| Element | Requirement |
|----------|--------------|
| Section headings | Must match templates exactly |
| Emojis | Use set defined in [[Theme_Setup.md]] |
| Lists / Tables | Do not remove or alter |
| Placeholders | Replace only `{{PLACEHOLDER}}` |
| Missing info | Leave placeholder visible |
| Links | Always use `[[Wikilinks]]` |
| Metadata | YAML block at top of file |

---

## 🛠️ Adding New Equipment

### 1️⃣ Create the Folder
CreuWikiPages/<Equipment Name>/

markdown
Copy code
Example: `CreuWikiPages/Band Saw/`

### 2️⃣ Copy Templates
Duplicate from `Templates/`:
- `Template_Splash.md` → `<Name>_Splash.md`  
- `Template_Quickstart.md` → `<Name>_Quickstart.md`  
- Correct Safety template → `<Name>_Safety_Operation.md`  
- `Template_Troubleshooting.md` → `<Name>_Troubleshooting.md`

#### 🔧 Safety Template Selection
| Category | Template | Examples |
|-----------|-----------|-----------|
| Cutting / Drilling | `Template_Safety_Operation_Cutting.md` | Pillar Drill, Scroll Saw, Band Saw |
| Heat-Based | `Template_Safety_Operation_Heat.md` | Soldering Iron, Hot Wire Cutter |
| CNC / Automated | `Template_Safety_Operation_CNC.md` | Laser Cutter, 3D Printer |

⚠️ Never mix categories – each contains unique safety content.

### 3️⃣ Replace Placeholders
Insert equipment-specific data; delete authoring callouts before commit.

### 4️⃣ Verify Navigation
Ensure all backlinks work:  
Homepage ↔ Splash ↔ Quickstart ↔ Safety ↔ Troubleshooting.

### 5️⃣ Apply the Theme
`creu-theme.css` handles banner + apron colours automatically.  
Add new apron classes if required (document in `Theme_Setup.md`).

### 6️⃣ Pre-Commit Checks
- ✅ All wikilinks resolve  
- ✅ Breadcrumbs consistent  
- ✅ Theme + logo render correctly  
- ✅ Apron colours accessible  
- ✅ Fault Reporting link → `[[Guides/Fault_Reporting_Guidance.md]]`  
- ✅ Images have alt text  
- ✅ Metadata (YAML) valid & updated  
- ✅ Homepage updated  

### 7️⃣ Commit & Push
1. Stage files in GitHub Desktop.  
2. Commit – e.g. “Added Pillar Drill 4-page set.”  
3. Push origin.  
4. Open a PR if the change comes from a student or contributor.

---

## 🧩 Homepage Updates
After adding new equipment:
- Edit `CREU-TheManufactory_Homepage.md`.  
- Add a link to the new **Splash Page** under the right category.  
- Sub-pages link only from the Splash Page.

---

## 🧠 Maintenance & Best Practices

- Always **Fetch + Pull** before editing.  
- Keep commits focused and well-named.  
- Use **Pull Requests (PRs)** for all **student or contributor submissions**.  
  These allow the maintainer to preview, test, and merge changes safely.  
- The maintainer may optionally use a PR for large personal edits to preview diffs before merge.  
- Direct commits to `main` are fine for small corrections or formatting.  
- Store images and assets in `images/` or relevant tool folders.  
- Avoid editing `.obsidian/` files except snippets.  
- Regularly sync local and remote copies.

---

## 🛡️ Quality Assurance Checklist

| Check | Description |
|--------|-------------|
| 🔗 Wikilinks | All internal links resolve |
| 🧭 Breadcrumbs | Homepage ↔ Splash ↔ Subpages |
| 🎨 CSS | Snippet enabled + banner visible |
| 🧵 Apron Colours | Correct + readable |
| ⚠️ Fault Reporting | Link works |
| 🖼️ Images | Include alt text |
| 🏷️ Metadata | YAML block valid |
| 🧾 Docs | Homepage updated |
| 🔢 Version | GitHub tag + CHANGELOG entry created |

---

## 📎 Related Maintainer Docs

- [[Theme_Setup.md]] – detailed CSS and emoji standards  
- [[Project_Management.md]] – ChatGPT Project integration + Git workflow  
- [[VERSION.md]] – current version info  
- [[CHANGELOG.md]] – historical log of releases  

---

**Version:** v2 – October 2025  
**Maintainer:** Ben Morgan
**Last Reviewed:** 14/10/2025
