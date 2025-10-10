# Project Management Guide – CREU Makerspace Wiki

This document explains how to use ChatGPT Projects to maintain and extend the wiki.  
It assumes you are starting with a zipped baseline folder of the wiki content.

---

## 🎯 Why This Matters
- Very large single chats become slow, laggy, or may crash.  
- Splitting work into **Projects** with smaller task chats keeps performance high.  
- Baseline ZIPs ensure the project can be handed over fully to future maintainers.

---

## 1. Unpack the Baseline
- Extract the zipped baseline into your Obsidian vault.  
- Review the `Maintainer/` folder: it contains:
  - `README.md` – structure + workflow for new equipment  
  - `Theme_Setup.md` – CSS + emoji standards  
  - `Project_Management.md` – (this file)  

---

### **2. Create a New ChatGPT Project**

In ChatGPT, click **New Project**.  
Name it: **CREU Makerspace Wiki**.
- You can upload the baseline ZIP into the project for your own reference,
- **But if you want ChatGPT to actually read and edit its contents, upload the ZIP directly into a task chat (see Step 4).**

---

## 3. Set Up “Project Notes”
- Inside the project, create a new chat called **Project Notes**.  
- Use this template:

```
# CREU Makerspace Wiki – Project Notes

This chat is a lightweight log of milestones, baselines, and important decisions.  
Use it as an index across all task chats.

---

## 📌 Baselines
- {{YYYY-MM-DD}} – {{What was included}} ({{ZIP filename}})

---

## 🗂️ Current Tasks
- {{Task 1}}  
- {{Task 2}}  

---

## 📝 Notes
- Every new task should have its own chat inside this Project.  
- Baselines must always include Maintainer docs.  
```
---

## 4. Start Task Chats
For each new piece of work (e.g., Laser Cutter Quickstart), create a **new chat inside the Project**.

At the top of the chat:
1. Upload the current **baseline ZIP** into the chat (paperclip button).
    - This allows ChatGPT to list, extract, and edit the files inside.
    - After edits, ChatGPT will repackage the folder into a new baseline ZIP.
2. Paste this kickoff snippet:

```
This is part of the **CREU Makerspace Wiki Project**.  
Use the **baseline ZIP I provide as the single source of truth**.

- Always open and use the exact template file (e.g. `Template_Splash.md`) before generating a page.  
- Do **not** reword, rename, or add headings.  
- Do **not** change emojis, tables, or section order.  
- Only replace `{{PLACEHOLDER}}` tokens with equipment-specific content.  
- If information is missing, leave the placeholder as-is.  
- Confirm with me using one page (e.g. Splash) before generating the full 4-page set.
```

---

## 5. Maintain Project Notes
- When a task is finished:
  - Mark it *(done)* under **Current Tasks**.  
  - Add a new entry under **Baselines** with the date, what was added, and the new ZIP filename.  

Example:
```
- 2025-09-10 – Laser Cutter 4-page set completed; homepage updated. (CreuWikiPages_Baseline_2025-09-10.zip)
```

---

## 6. Roles in the Workflow
- **Project Notes** = changelog and to-do list.  
- **Task Chats** = clean, focused workspaces.  
- **Baseline ZIPs** = checkpoints that ensure full transferability.  

Think of it like Git:  
- Baselines = commits  
- Project Notes = changelog  
- Task Chats = branches  

---
## 🔮 Future Adaptation of This Workflow

The current workflow (v1.x) is based on **baseline ZIPs** uploaded into task chats.  
This is simple, portable, and ensures that the wiki can be transferred between maintainers without external tools.

As the wiki grows, this process may need to adapt:

### 📦 Short Term (v1.x – up to ~10 tools)
- Continue using ZIPs as baselines.
- Keep one Project for the whole wiki.
- Use task chats for new equipment or guidance pages.
- Update `Project Notes` with baselines and current scope.

### 📂 Medium Term (v2.x – 10–20+ tools, multiple categories)
- Consider splitting into multiple Projects by **category** (e.g., “Cutting & Shaping”, “Digital Fabrication”).
- Use Dataview or similar plugins to **auto-generate equipment lists** on the homepage.
- Expand the `Templates/` folder to cover new page types (e.g., policies, inductions, safety forms).
- Enhance the packaging script to check for:
  - Missing or broken wikilinks
  - Missing front-matter
  - Missing logo images

### 🌐 Long Term (v3.0+ – 20+ tools, multiple maintainers, publishing)
- Migrate from ZIP-based baselines to **Git-based versioning**:
  - Baselines become Git tags/releases instead of ZIPs.
  - Task chats work from a tagged repo state instead of a ZIP.
  - GitHub/MkDocs, Obsidian Publish, or GitBook can serve as the front-end.
- Automate QA with scripts to validate all Markdown files.

---

✅ For now, continue with **ZIP baselines** and task chats.  
Keep this section in mind when the wiki reaches 10–20 tools or when more than one maintainer is contributing actively.

---

## 🏷️ Metadata (Front-Matter) Standards

Each page in the wiki should start with a YAML metadata block.  
This block **must always be the very first thing in the file**, before any comments (`<!-- ... -->`) or headings.  

Example placement:

```
---
equipment: Scheppach SD1600f Scroll Saw
category: Cutting & Shaping
room: Engineering Central B005
status: active
page: splash
updated: 2025-08-28
---

<!-- Optional page comments go here -->

# Scheppach SD1600f Scroll Saw
```

### Why This Matters
- Enables **search and filtering** in Obsidian (especially with the Dataview plugin).  
- Ensures consistency across pages for easier audits.  
- Makes the wiki **portable** to other platforms (MkDocs, GitBook, Jekyll, etc.).  
- Hidden by default in Obsidian Preview and Obsidian Publish (not visible to users).  

### Standard Fields

#### Equipment Pages
```
equipment: {{Equipment Name}}
category: {{Category}}
room: Engineering Central B005
status: active | draft | retired
page: splash | quickstart | safety | troubleshooting
updated: YYYY-MM-DD
```

#### Guide Pages
```
guide: {{Guide Title}}
type: induction | fault-reporting | safety-policy | other
status: active | draft
updated: YYYY-MM-DD
```

#### Homepage
```
homepage: true
title: CREU Makerspace Wiki – The Manufactory
room: Engineering Central B005
status: active
updated: YYYY-MM-DD
```

✅ Always update the `updated:` field when making significant changes.  
✅ Do not place anything (including comments) before the opening `---`.
