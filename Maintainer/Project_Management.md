# Project Management Guide – CREU Makerspace Wiki

This document explains how maintainers and contributors use **ChatGPT Projects** together with **GitHub** to maintain and extend the Makerspace Wiki.  
It replaces the previous ZIP-based baseline workflow with a **Git branch + commit + tag** system, while retaining all metadata and documentation standards.

---

## 🎯 Purpose

The Project Management framework defines how ChatGPT is used to support, document, and automate wiki maintenance.  
GitHub is now the **authoritative record** for all versions; ChatGPT provides the **structured environment** for content generation and refinement.

---

## ⚙️ Repository Overview

| Component | Function |
|------------|-----------|
| **GitHub Repository** | Canonical source for all wiki content and history |
| **Obsidian Vault** | Local editing environment (mirrors the repo) |
| **ChatGPT Project** | Managed workspace for multi-chat task handling |
| **GitHub Desktop** | Visual tool for branch, commit, and merge management |

Each device holds its own local clone.  
Commits and pull requests maintain a transparent history of all changes.

---

## 🧩 Project Setup in ChatGPT

### 1️⃣ Create a ChatGPT Project
1. Click **New Project** in ChatGPT.  
2. Name it: `CREU Makerspace Wiki`.  
3. Pin key files (if not already in the repository):  
   - `Maintainer/README.md`  
   - `Maintainer/Theme_Setup.md`  
   - `Maintainer/Project_Management.md` (this file)  
4. Create **separate task chats** for each discrete job or document set.

---

### 2️⃣ Start Task Chats

Each new item of work (e.g., *Laser Cutter SOP updates*, *New guide creation*, *Theme tweaks*) gets its own chat.

At the start of each new chat, paste the following preamble:

---

This chat contributes to the **CREU Makerspace Wiki Project**.

- The GitHub repository (`CREU-Makerspace/creu-wiki`) is the source of truth.  
- All content updates are stored in a feature branch (e.g., `feature/laser-cutter-update`).  
- ChatGPT edits Markdown and metadata according to wiki templates.  
- Template headings and emoji structure must not be altered.  
- All pages must contain valid YAML metadata (see standard field templates).

---

When ChatGPT produces Markdown, copy the files into your local clone, **commit**, and **push** to the associated branch.

> ℹ️ *If you prefer a running log inside ChatGPT, you may keep a separate “Project Notes” chat, but this is optional.  
> GitHub (commits, tags, and changelogs) is now the authoritative record.*

---

## 🧱 Working in GitHub

| Action | Tool | Description |
|--------|------|-------------|
| Create branch | GitHub Desktop | `Branch → New Branch from main` |
| Edit files | Obsidian | Add or update Markdown pages |
| Commit | GitHub Desktop | Save with a clear message |
| Push | GitHub Desktop | Upload branch changes |
| Submit PR | GitHub (web) | Maintainer reviews and merges |
| Tag release | GitHub (web) | Marks a new milestone |

Pull requests are required for all contributor edits so the maintainer can preview and approve changes before merge.

---

## 🧭 Roles and Responsibilities

| Role | Description |
|------|--------------|
| **Maintainer (you)** | Owns the repository, reviews and merges PRs, tags releases |
| **Contributors (students)** | Create or edit content on branches, submit PRs |
| **ChatGPT** | Generates or refines Markdown and metadata |

---

## 🧩 Version Control Workflow

### Git as the Source of Truth
- **Commits** record each change.  
- **Branches** isolate work safely.  
- **Pull Requests** allow controlled merging.  
- **Tags / Releases** record stable milestones.  
- **CHANGELOG.md** provides human-readable summaries.

### Minor Updates
Additions or corrections that don’t affect structure:
- New equipment pages  
- Guide edits  
- CSS tweaks or accessibility fixes

### Major Updates
Structural or functional changes:
- Template redesign  
- Navigation restructuring  
- Theme overhaul or dependency updates

---

### Creating a New Release
1. Merge all completed PRs into `main`.  
2. In GitHub → **Create Tag / Release** (e.g., `v2.4`).  
3. Add a short summary.  
4. Update both `VERSION.md` and `CHANGELOG.md`.

---

## 🏷️ Metadata (Front-Matter) Standards

Every Markdown page **must begin** with a YAML metadata block.  
This block sits at the top of the file — before any headings, callouts, or comments.

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
```
# Scheppach SD1600f Scroll Saw


Why this matters
- Enables future Dataview queries and audits
- Enforces uniform formatting across pages
- Keeps the wiki portable to other systems (MkDocs, GitBook, etc.)
- Hides automatically in Obsidian preview and Publish view

### Standard Field Templates

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

Rules:

- Always update updated: on edits.
- No content may precede the opening ---.
- Maintain lowercase field names.
- Remove unused keys only if the entire field type is irrelevant.
- Check YAML validity before commit (e.g., no tabs, use spaces).
- These templates are the single source of truth for page metadata.

### 🧱 File Naming and Organisation
| Folder           | Purpose                                     |
| ---------------- | ------------------------------------------- |
| `/Templates`     | Canonical page templates (4-page structure) |
| `/CreuWikiPages` | All active equipment sets                   |
| `/Guides`        | General instructional documentation         |
| `/Maintainer`    | Internal documents (this folder)            |
| `/images`        | Shared assets and diagrams                  |

**Naming rules**

- Use `EquipmentName_PageType.md` (capitalised, underscores only).
- Avoid spaces or special characters.
- All filenames must be unique within the repo.

---

## 📊 Tracking Work Across Chats (Optional)

If you want an at-a-glance log inside ChatGPT (separate from Git history), you can keep a simple “index” message pinned in your Project describing:

- Open task chats and their purpose
- The Git branch each task uses
- Links to PRs or tags when available

Example snippet to pin:

```
Active Chats → Branches
- Laser Cutter Update → feature/laser-cutter-update
- Theme Refresh → feature/theme-refresh
- Induction Guide tweaks → feature/induction-guide-tweaks
```

This is optional. GitHub (commits/tags/PRs) plus CHANGELOG.md and VERSION.md remain authoritative.

### 🧠 Scaling the Workflow
|Phase|Repository Scale|Adaptation|
|---|---|---|
|**Short Term (v2.x)**|<15 tools|Single repo with ChatGPT Project for all tasks|
|**Medium Term (v3.x)**|15–25 tools|Group folders by type (Cutting, CNC, Heat)|
|**Long Term (v4.x)**|25+ tools|Split into multiple repos or migrate to MkDocs / GitBook|

Keep CHANGELOG.md and VERSION.md centralised for continuity.

#### 🔮 Future Automation Concepts
- Dataview-generated equipment indexes
- GitHub Actions for metadata validation
- Automated link integrity checks
- Branch-based theme preview builds

#### ✅ Summary Workflow

[ChatGPT Project]
   ↓ generates or edits Markdown
[Local Git Branch in Obsidian]
   ↓ commit + push
[GitHub Repository]
   ↓ pull request + merge
[Main Branch → Tagged Release]

---

Version: v2.4 – October 2025
Maintainer: CREU Makerspace Owner
Last Reviewed: 2025-10-15
