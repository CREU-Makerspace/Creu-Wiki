---
equipment: "{{Equipment Name}}"
category: "{{Category}}"
room: Engineering Central B005
status: draft
page: splash
updated: "{{YYYY-MM-DD}}"
shortname: "{{ShortName}}" # e.g. PillarDrill ScrollSaw
---

<!--
USAGE
1) Duplicate this file into the equipment's folder and rename it:
   e.g., "BandSaw_Splash.md"
2) Replace ALL {{PLACEHOLDER}} tokens.
3) Delete the "Authoring helper" callout at the bottom before publishing.
4) Link to files in resources will be added manually
5) Do not change or reword section headings, emojis, or tables — only replace {{PLACEHOLDER}} content.
6) Set `shortname` in the frontmatter (e.g., PillarDrill, ScrollSaw) and use it for all internal links: [[{{shortname}}_Splash]], [[{{shortname}}_Quickstart]], [[{{shortname}}_Safety]], [[{{shortname}}_Troubleshooting]].

-->

<div class="page-banner">
  <img src="../images/creu_logo.png" alt="CREU Logo">
  <h1>CREU – The Manufactory</h1>
</div>

[[CREU - The Manufactory - Homepage|← Makerspace Homepage]]

> [!warning] Requires Training
> Book an [[GettingStartedAndInduction|induction]] or speak to a <span class="red-apron">Supervisor</span>.  

# {{Equipment Name}} — Overview

![[Images/Equipment_{{EquipmentName}}.jpg|400]]

> **Purpose:** {{Short one-line purpose: what this tool is for and typical materials/uses}}.

---

## 📍 Location
- Engineering Central B005

---

## 🧩 At a Glance
- Capacity / envelope: **{{e.g., max thickness / size}}**
- Key capability: **{{e.g., variable speed / tilt / bed size}}**
- Typical use cases: **{{e.g., intricate cuts, prototypes, fixtures}}**

*(For key features, essential safety reminders, and step-by-step startup, see the [[{{shortname}}_Quickstart|Quickstart Guide]].)*

---

## 🎓 Access & Training
- **Training required** before use  
- Induction arranged via [[GettingStartedAndInduction|Equipment Induction Guidance]]  

| Apron Role                                  | Access                                 |
| ------------------------------------------- | -------------------------------------- |
| <span class="green-apron">Basic User</span> | ❌ No use                               |
| <span class="blue-apron">Maker-Pro</span>   | ✅ Independent use (after induction)    |
| <span class="red-apron">Supervisor</span>   | ✅ May supervise & adjust speeds        |
| <span class="black-apron">Staff</span>      | ✅ Full access, maintenance & servicing |
**Trainer Badge:**  
Once training is complete, students must remember to request their **initialled {{equipment}} badge file** from the supervisor. **Print this file as proof of your tool clearance and add it to your collection for future access clearance.**

*(For full safety guidance and procedures, see [[{{shortname}}_Safety_Operation|Safety & Operation]].)*

---

## ⚠️ Key Hazards
- {{Hazard 1}}  
- {{Hazard 2}}  
- {{Hazard 3}}  

**Emergency Information:**  
- First aid kit: **next to the rear entrance** of B005  
- First aiders: available **behind reception**  
- All students must have the **SafeZone app installed on their phone** for emergencies

*(Detailed hazard controls: see [[{{shortname}}_Safety_Operation|Safety & Operation]].)*

---

## 📋 Checklists

### 🟢 Before Use
- Confirm training complete  
- Inspect {{Equipment}} for correct setup (**{{setup check}}**)  
- Ensure {{safety guard or interlock}} is in place  
- Ensure work area is clear and clean  

### 🛡️ Health & Safety
- Wear PPE as required (**{{tool-specific PPE}}**)  
- Tie back long hair  
- Avoid loose clothing/jewellery  
- {{Tool-specific safety rule}}  

### 🧹 After Use
- Switch off and unplug (**{{shutdown method}}**)  
- Wait for moving parts to stop fully  
- Return {{toolbits, consumables, or accessories}} to storage  
- Clean the workstation (**{{cleaning method}}**)  

---

## 🧰 Maintenance & Troubleshooting
Routine care and fault diagnosis must be **performed by or confirmed with a <span class="red-apron">Supervisor</span>**.  
See [[{{shortname}}_Troubleshooting|Troubleshooting & Maintenance]] for an overview of common troubleshooting tips, maintenance tasks, and fault advice.

---

## 🛠️ Fault Reporting
All faults must be logged through the **CREU Digital Toolkit**.  

Report anything that **stops safe use**, including:  
- Damaged cables, excessive vibration, unusual noises  
- Missing or cracked guards  
- Electrical issues or any safety concern

Submit a report: [[ReportAFault|Fault Reporting Guidance]]

---

## 📚 Resources
- Manufacturer manual: {{Link/file path}}  
- SOP: {{Link/file path}}  
- Risk Assessment: {{Link/file path}}

---

> [!tip]- 🧠 Authoring helper (delete before publishing)
> Use this block to draft content yourself or ask the assistant to fill sections from your sources.
>
> **Mini-checklist to gather from manual/SOP:**
> - One-line purpose (what/why)  
> - 3 “At a Glance” bullets (capacity, capability, typical use)  
> - 3 key hazards (tool-specific)  
> - Any special access/training nuances (e.g., advanced user, badges)  
> - Links/paths for SOP, manual, RA
>
> **Prompt you can paste to the assistant:**
> “Using the attached {{Manufacturer Manual}} and {{SOP}} for **{{Equipment Name}}**, fill these sections of my Splash Page template:  
> - Purpose (1 line)  
> - At a Glance (3 bullets)  
> - Key Hazards (3 bullets)  
> Keep wording concise and student-friendly, match my emoji scheme and style.”
