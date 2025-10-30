# Quick Start Guide

This guide helps you get the Advaita Vedanta formalization running on your system.

## Prerequisites

Install Lean 4.16.0 following the instructions at https://leanprover.github.io/lean4/doc/setup.html

The recommended installation method uses elan, the Lean version manager:

```bash
curl https://raw.githubusercontent.com/leanprover/elan/master/elan-init.sh -sSf | sh
```

After installation, verify Lean is available:

```bash
lean --version
```

Expected output: Lean (version 4.16.0, ...)

## Getting the Formalization

Clone the repository:

```bash
git clone https://github.com/[username]/advaita-vedanta-lean.git
cd advaita-vedanta-lean
```

## Building the Project

The project uses Lake (Lean's build system). To build all files and verify all proofs:

```bash
lake build
```

This compiles all Lean files in the AdvaitaVedanta directory and verifies that all axioms and theorem proofs are correct. Compilation may take a few minutes on first build.

Expected output: Successful compilation with no errors. If compilation fails, check that you have Lean 4.16.0 installed (other versions may have compatibility issues).

## Running the Main Executable

After building, run the main program:

```bash
lake exe advaita
```

Expected output:

```
Advaita Vedanta Formal Axiomatization v4.5
==========================================

Status: All axioms and theorems type-checked ✓
Axioms: ~114
Theorems proven: 40+

Master Theorem (Tat Tvam Asi): VERIFIED

This formalization proves the logical consistency
of Advaita Vedanta non-dual metaphysics.
```

This confirms that all verifications have completed successfully.

## Exploring the Code

The formalization is organized into thematic modules in the AdvaitaVedanta directory:

Signature.lean: Core types and predicates. Start here to understand the basic ontology.

CoreAxioms.lean: Fundamental axioms about the absolute, grounding, and identity. These establish the basic metaphysical framework.

LevelAxioms.lean: The three-tier reality structure. These axioms formalize paramarthika, vyavaharika, and pratibhasika levels.

Theorems.lean: Proven theorems including the master theorem. Read this to see what follows from the axioms.

Open these files in your preferred editor with Lean support. VS Code with the Lean 4 extension provides the best experience, with interactive proof exploration and goal visualization.

## Understanding the Formalization

To understand the philosophical content:

1. Read README.md for overview and motivation
2. Consult docs/METHODOLOGY.md for the formalization approach
3. Study docs/AXIOMS.md for complete axiom listings with interpretations
4. Examine docs/THEOREMS.md for proven results and their significance

To understand the technical implementation:

1. Open AdvaitaVedanta/Signature.lean to see type definitions
2. Study AdvaitaVedanta/CoreAxioms.lean to see fundamental principles
3. Examine AdvaitaVedanta/Theorems.lean to see proof techniques
4. Consult Lean 4 documentation for syntax and tactics

## Common Issues

Issue: "lake: command not found"
Solution: Ensure elan is installed and your PATH includes the Lean binaries. Run `source ~/.profile` or restart your terminal.

Issue: "version mismatch" errors during build
Solution: The project requires Lean 4.16.0 specifically. Check your version with `lean --version` and install the correct version if needed.

Issue: Compilation errors in axiom files
Solution: Ensure you have the exact version of Lean specified in lean-toolchain. Different Lean versions may have incompatible syntax or library changes.

## Next Steps

After successfully building the project:

Study specific modules: Examine axiom groups that interest you (e.g., Maya, consciousness, levels of reality).

Explore proofs: Open Theorems.lean and step through proofs interactively to understand how theorems are derived.

Extend the formalization: Consider proving additional theorems or formalizing related doctrines. See CONTRIBUTING.md for guidelines.

Compare with texts: Read classical Advaita texts alongside the formalization to see how traditional doctrine translates to formal logic.

## Getting Help

For technical issues with Lean or Lake, consult the Lean community forum: https://leanprover.zulipchat.com/

For questions about the formalization's philosophical approach, open an issue on the GitHub repository.

For discussion of Advaita doctrine itself, consult scholarly resources or traditional teaching lineages rather than the formalization alone.
