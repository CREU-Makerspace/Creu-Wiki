# Theme Setup Guide (Maintainer Only)

---

## 🎨 CSS Theme Setup

The custom theme is stored in `creu-theme.css`.  
It must be placed in the **hidden `.obsidian/snippets/` folder** inside your vault.

- On macOS/Linux, `.obsidian` is a hidden folder — you may need to enable hidden files in Finder or use **Obsidian Settings → Appearance → CSS snippets → Open snippets folder**.  
- On Windows, `.obsidian` is visible inside your vault folder.  
- After placing `creu-theme.css` into `.obsidian/snippets/`, go to:
     **Settings → Appearance → CSS snippets** and toggle it on.  

Once enabled, the banner header and apron role colours will appear on all pages.

---

## 🖌️ CSS Theme: `creu-theme.css`
The custom theme provides:
- **Banner header** with logo + title at the top of each page  
- **Coloured apron roles** for Staff, Supervisors, Maker-Pros, and Green apron roles  
- **Optional badge mode** (uncomment to show colour tags as badges instead of coloured text)  
- **Filename title bars hidden** so the banner is the only page header  

### 🎨 Editing
- To change colours → adjust hex codes in `.black-apron`, `.red-apron`, `.blue-apron`, `.green-apron`.  
- To adjust banner style → edit the `.page-banner` block (background, spacing, etc.).  

---

## 🧭 Emoji Standards (Consistency Guide)

Use the following standard emojis across all equipment pages:

- **Key Features**: 📐  
- **Checklists section**: 📋 (container heading on splash pages)  
  - **Before Use**: 🟢  
  - **After Use**: 🧹  
  - **Health & Safety**: 🛡️  
- **Operation**: ▶️  
- **Troubleshooting**: 🔎  
- **Routine Maintenance**: 🧰  
- **Fault Reporting / Report Immediately**: ⚠️  
- **Resources / Documents**: 📚  

This avoids clashes (e.g., don't use 🔧 for both features and maintenance).

---

## 📊 Emoji Reference Table

| Context             | Section / Use           | Emoji |
| ------------------- | ----------------------- | ----- |
| **Homepage**        | Wiki Title              | 📘    |
|                     | How to Use This Wiki    | ℹ️    |
|                     | Location                | 📍    |
|                     | Guidance Pages          | 📖    |
|                     | Equipment Directory     | 🗂️   |
|                     | Key People              | 🧑‍🏫 |
|                     | Emergencies             | 🚨    |
|                     | Rules of the Makerspace | 📜    |
| **Equipment Pages** | Key Features            | 📐    |
|                     | Checklists (container)  | 📋    |
|                     | Before Use              | 🟢    |
|                     | Health & Safety         | 🛡️   |
|                     | After Use               | 🧹    |
|                     | Operation               | ▶️    |
|                     | Troubleshooting         | 🔎    |
|                     | Routine Maintenance     | 🧰    |
|                     | Fault Reporting         | ⚠️    |
|                     | Resources / Documents   | 📚    |

This table helps maintain consistency and prevents emoji clashes between homepage and equipment pages.

---

## 🛠️ Workflow for Theme Updates

Follow this process whenever making changes to the makerspace theme.

### 1. Locate the Theme
- File: `creu-theme.css`
- Stored in the vault root (`CreuWikiPages/`).

---

### 2. Make a Copy Before Editing
- Duplicate the current `creu-theme.css` file and rename it with today’s date, e.g.:  
  `creu-theme_backup_2025-08-28.css`  
- This ensures you can roll back if something breaks.

---

### 3. Edit Carefully
- **Banner changes** → modify `.page-banner` styles (background, alignment, spacing, fonts).  
- **Apron colours** → update hex codes in `.black-apron`, `.red-apron`, `.blue-apron`, `.green-apron`.  
- **New apron roles** → create a new CSS class (e.g., `.yellow-apron`) and add guidance in this file.  
- **Filename headers** → hidden via `.view-header-title` and `.inline-title`. Remove these lines if you want Obsidian to show the default page titles again.

---

### 4. Test in Obsidian
- Place the updated `creu-theme.css` into `.obsidian/snippets/`.  
- Open **Settings → Appearance → CSS snippets**.  
- Enable the new version.  
- Refresh pages to check changes render correctly.

---

### 5. Update Documentation
- If you add a new apron role, update:
  - This file (`Theme_Setup.md`) with the new role and colour  
  - `Maintainer/README.md` → **Key People** section if relevant  
  - Any affected templates (if they reference apron roles)

---

### 6. Baseline Reminder
- Once a new theme version is stable, include it in the next **baseline ZIP**.  
- Delete old backups after confirming the theme works across all pages.
