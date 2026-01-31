# GPU Subsystem – Block Level Physical Design

**Cadence Innovus | Timing Closure @ 500 MHz | Signoff Clean**

---

## 📌 Project Overview

This project demonstrates **block-level physical design (PD) implementation of a GPU subsystem**, focusing on industrial best practices used in advanced SoC and GPU development.

The objective was to take a synthesized GPU subsystem block and implement a **clean, timing-closed, power-aware, and signoff-clean physical design**, using a production-style flow similar to those followed at tier-1 semiconductor companies.

This repository emphasizes **methodology, flow ownership, and engineering judgment**, rather than proprietary data or confidential IP.

---

## 🎯 Design Goals

* Achieve **timing closure at 500 MHz**
* Implement a **robust and scalable floorplan**
* Design a **reliable Power Distribution Network (PDN)**
* Ensure **DRC, LVS, and antenna rule cleanliness**
* Follow **industry-standard PD flow discipline**
* Maintain NDA-safe, reproducible structure

---

## 🧰 Tools & Technologies

| Category              | Tool                        |
| --------------------- | --------------------------- |
| Place & Route         | Cadence Innovus             |
| Constraints           | Synopsys SDC                |
| Physical Verification | Calibre DRC / LVS / Antenna |
| Timing Analysis       | Innovus STA                 |
| Scripting             | TCL                         |
| Documentation         | Markdown                    |

---

## 🧩 Design Scope

* **Design Type:** GPU Subsystem (Block-level)
* **Implementation Level:** Physical Design (PnR)
* **Clock Frequency Target:** 500 MHz
* **Focus Areas:**

  * Floorplanning
  * Power planning
  * Placement & optimization
  * Clock Tree Synthesis (CTS)
  * Routing
  * Signoff checks

> ⚠️ Note: All design data is **representative or anonymized**. No foundry PDKs, customer netlists, or proprietary layouts are included.

---

## 🏗️ Physical Design Flow Description

### 1️⃣ Floorplanning

* Defined block dimensions based on:

  * Cell density targets
  * Routing congestion estimation
  * Macro proximity considerations
* IOs were planned to minimize:

  * Long critical paths
  * Clock skew
  * Power routing complexity
* Halo and channel spacing optimized for routability

**Key considerations:**

* Aspect ratio optimization
* Future scalability
* Clock and power integrity

---

### 2️⃣ Power Distribution Network (PDN)

* Designed a hierarchical PDN consisting of:

  * Core power rings
  * Horizontal and vertical power straps
* Power grid aligned with:

  * IR-drop mitigation
  * EM reliability
  * Uniform current distribution

**Strategies applied:**

* Higher metal layers for global power
* Lower layers for local cell power
* Stripe pitch optimized for congestion vs IR tradeoff

---

### 3️⃣ Placement & Optimization

* Standard cell placement performed with:

  * Congestion-driven optimization
  * Timing-driven cell spreading
* Incremental optimization to fix:

  * Early setup violations
  * High fanout nets
* Physical-only cells (buffers, decaps) inserted as needed

---

### 4️⃣ Clock Tree Synthesis (CTS)

* Implemented balanced clock tree architecture
* Achieved:

  * Controlled clock skew
  * Acceptable insertion delay
* Clock buffers and inverters selected based on:

  * Power vs skew tradeoffs
  * Transition constraints

**CTS objectives:**

* Meet setup and hold requirements
* Minimize clock power
* Reduce on-chip variation sensitivity

---

### 5️⃣ Routing & Post-Route Optimization

* Global and detailed routing completed with:

  * DRC-aware routing
  * Timing-aware optimization
* Fixed post-route issues including:

  * Setup violations
  * Transition violations
  * Capacitance issues
* ECO-based refinements used where required

---

### 6️⃣ Timing Closure

* Final timing closed at **500 MHz**
* Achieved:

  * Zero setup violations
  * Hold-safe paths
* Iterative refinement between:

  * Placement
  * CTS
  * Routing

**Timing metrics achieved:**

* WNS ≥ 0
* TNS = 0

---

### 7️⃣ Physical Verification (Signoff)

Performed full signoff verification using Calibre:

#### ✔ DRC (Design Rule Check)

* No spacing, width, or enclosure violations

#### ✔ LVS (Layout vs Schematic)

* Full netlist match confirmed

#### ✔ Antenna Checks

* All antenna violations resolved using:

  * Diode insertion
  * Routing layer adjustments

---

## 📊 Results Summary

| Parameter        | Status          |
| ---------------- | --------------- |
| Target Frequency | 500 MHz         |
| Timing Closure   | ✅ Achieved      |
| Placement        | Congestion-safe |
| Routing          | Clean           |
| DRC              | Clean           |
| LVS              | Matched         |
| Antenna          | Clean           |

---

## 📁 Repository Structure

```
gpu-subsystem-physical-design/
├── README.md
├── docs/
│   ├── floorplan.png
│   ├── pdn_topology.png
│   ├── timing_closure_report.png
│   └── drc_lvs_summary.pdf
├── innovus/
│   ├── scripts/
│   │   ├── floorplan.tcl
│   │   ├── power_plan.tcl
│   │   ├── place_opt.tcl
│   │   ├── cts.tcl
│   │   ├── route_opt.tcl
│   │   └── signoff.tcl
│   └── logs/
├── calibre/
│   ├── drc.runset
│   ├── lvs.runset
│   └── antenna.runset
├── constraints/
│   ├── timing.sdc
│   └── io_constraints.tcl
├── reports/
│   ├── timing/
│   ├── power/
│   └── area/
└── LICENSE
```

---

## 🔐 NDA & Confidentiality Notice

This repository:

* ❌ Does **NOT** include proprietary RTL, GDS, or foundry data
* ✅ Uses anonymized scripts and reports
* ✅ Is intended purely for **educational and portfolio demonstration**

---

## 🧠 What This Project Demonstrates

* End-to-end **ownership of PD flow**
* Strong understanding of:

  * Timing closure
  * Power integrity
  * Physical verification
* Ability to work with **GPU-scale blocks**
* Industry-ready methodology suitable for:

  * GPU Physical Design
  * SoC Physical Design
  * Advanced-node PD roles

---

## 👤 Author

**Bibin N Biji**
ASIC / GPU Physical Design Engineer
Focus Areas:

* GPU / SoC Physical Design
* Timing Closure
* Power Integrity
* Advanced PnR Flows

---

## 🚀 Next Enhancements (Optional)

* Multi-corner multi-mode (MCMM) timing
* IR-drop and EM analysis reports
* Hierarchical PD integration
* Advanced clock mesh implementation

---

