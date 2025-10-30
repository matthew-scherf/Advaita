# Contributing Guidelines

Contributions to the Advaita Vedanta formalization are welcome. This document provides guidance for potential contributors.

## Types of Contributions

Several categories of contribution would strengthen the formalization:

Additional theorems: Proving new consequences of the existing axiom system, particularly results that connect to specific Upanishadic passages or classical commentaries.

Alternative axiomatizations: Proposing different axiom sets that capture Advaita doctrine, potentially with different primitive concepts or foundational principles.

Formalization extensions: Adding modules for doctrinal elements not yet formalized (e.g., karma theory, rebirth, specific meditation practices).

Comparative formalizations: Formalizing related systems (Vishishtadvaita, Dvaita, Buddhist non-dual schools) to enable formal comparison.

Documentation improvements: Enhancing explanations of axioms, theorems, or methodology, or providing additional commentary on philosophical implications.

Code refactoring: Improving proof clarity, reducing dependencies, or reorganizing module structure without changing mathematical content.

## Submission Process

Before submitting a contribution, please verify that your work meets the following criteria:

Technical correctness: All Lean code must type-check successfully using the specified Lean version (currently 4.16.0). Run `lake build` to verify compilation.

Consistency: New axioms must not contradict existing axioms. The extended system should continue to verify without errors.

Documentation: Include comments explaining the philosophical motivation for new axioms or theorems. Complex proofs should include proof sketches explaining the strategy.

Textual support: New axioms or interpretations should be justified by reference to classical Advaita texts or reputable scholarly sources.

To submit a contribution:

1. Fork the repository and create a new branch for your contribution.
2. Make your changes, ensuring all criteria above are satisfied.
3. Update documentation files if your contribution adds significant functionality.
4. Submit a pull request with a clear description of the contribution and its motivation.
5. Address any feedback from maintainers during the review process.

## Coding Standards

The formalization follows these coding conventions:

Naming: Use descriptive names for axioms (e.g., CoreAxiom1 rather than CA1 in code comments). Use Sanskrit terms where established (e.g., Jiva, Maya) but provide English equivalents in comments.

Module organization: Group related axioms and theorems in thematically coherent modules. Maintain clear import hierarchies with core modules independent of specialized modules.

Proof style: Prefer tactic-mode proofs for complex theorems. Use structured proofs with clear intermediate claims. Avoid overly cryptic one-line proofs unless the inference is obvious.

Comments: Include inline comments explaining non-obvious steps. For axioms, include comments indicating the Sanskrit source term and traditional interpretation.

Type annotations: Provide explicit type annotations for axioms even when Lean can infer them, to enhance readability.

## Philosophical Guidelines

Contributors should observe these philosophical principles:

Fidelity to tradition: Axioms should reflect traditional Advaita doctrine rather than novel metaphysical proposals. Where texts admit multiple interpretations, prefer readings that preserve logical consistency while respecting textual authority.

Neutrality on schools: Where Advaita sub-schools disagree, the formalization should either remain neutral or explicitly note that it follows a particular school's interpretation. Avoid implicit bias toward any one commentarial tradition.

Engagement with scholarship: Consult academic scholarship on Advaita when interpreting technical concepts or resolving ambiguities. Reference relevant scholarly works in documentation.

Clear scope: Distinguish what the formalization claims to achieve from what it does not. Avoid overstating the philosophical implications of formal results.

## Review Criteria

Pull requests will be evaluated according to:

Correctness: Does the code type-check? Are proofs valid? Is the mathematics sound?

Consistency: Does the contribution preserve the consistency of the existing axiom system? Does it introduce any contradictions?

Relevance: Does the contribution advance the goals of the formalization? Does it address a genuine gap or extend functionality in valuable ways?

Quality: Is the code well-structured? Is documentation clear? Do proofs follow established style?

Scholarship: Are philosophical claims well-supported by textual evidence or scholarly consensus? Are interpretations reasonable?

## Community Standards

Contributors are expected to maintain professional and respectful conduct. Discussions should focus on technical and philosophical merits. Disagreements about interpretation should be resolved through reasoned argument and textual evidence rather than appeals to authority or ad hominem criticism.

The formalization serves scholarly and educational purposes. Contributions should advance understanding of Advaita Vedanta through rigorous formal methods. The project does not advocate for or against any religious or metaphysical position but seeks to understand Advaita logic on its own terms.

## Questions and Discussion

For questions about contributing, open an issue on the GitHub repository. For general discussion about the formalization's philosophical approach or technical implementation, use the repository's discussion forum.

## Acknowledgment

Contributors who make substantial additions or improvements will be acknowledged in the repository documentation and in any publications derived from the formalization.
