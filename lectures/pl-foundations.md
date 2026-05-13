# Programming Language Foundations (in Lean 4)

**Main Proposed Course: Mechanized Metatheory**

This course teaches students how to formalize programming languages and prove their properties using the **Lean 4** proof assistant. We follow the "Programming Language Foundations in Agda" (PLFA) methodology but adapt it to Lean's modern tactic-driven environment.

## The Lambda Cube Roadmap
The core objective is to implement the **Lambda Cube**—a framework for classifying 8 prominent type systems. By the end of the course, students will have mechanized proofs for the following systems:

1.  **$\lambda \to$**: Simply Typed Lambda Calculus (STLC).
2.  **$\lambda 2$**: Polymorphic Lambda Calculus (System F).
3.  **$\lambda \underline{\omega}$**: Higher-order Lambda Calculus (Operator polymorphism).
4.  **$\lambda P$**: Dependent Types (Logical Framework).
5.  **$\lambda \omega$**: Calculus of Constructions (The basis for Lean/Coq).
6.  *... and the intermediate systems $\lambda P2$, $\lambda P\underline{\omega}$.*

---

## Technical Syllabus (Spring 2026)

| Phase | Milestone | Topics |
| :--- | :--- | :--- |
| **I: Logic** | **Foundations** | Inductive types, recursion, and propositional logic in Lean. Proving commutativity of addition and list properties. |
| **II: $\lambda \to$** | **The Base Case** | Syntax, Big-step vs Small-step semantics. Proving **Progress** and **Preservation** (Type Safety). |
| **III: Variables** | **Mechanization** | De Bruijn indices, substitution theorems, and capture-avoiding substitution proofs. |
| **IV: Advanced STLC** | **Extensions** | Products, Sums, Unit, Empty types, and μ-recursion. Proving termination via Logical Relations. |
| **V: Inference** | **Automation** | Bidirectional type inference algorithms and their correctness proofs. |
| **VI: $\lambda 2$ & $\lambda P$** | **The Cube** | Parametric Polymorphism (System F) and Dependent Types. Formalizing the link between types and proofs. |
| **VII: Semantics** | **Equality** | Denotational semantics, adequacy, and soundness. Bisimulation between different execution models. |
| **VIII: Safety** | **Security** | Information-flow control, noninterference, and gradual typing guarantees. |

---

## Schedule

| Month    | Day | Topic    | Notes |
| -------- | --- | -------- | ---- |
| -        |  -  | [Naturals](https://plfa.github.io/Naturals/) & [Induction](https://plfa.github.io/Induction/) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Naturals-Induction.lagda.md) |
|          |  -  | [Relations](https://plfa.github.io/Relations/) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Relations.lagda.md) |
|          |  -  | [Equality](https://plfa.github.io/Equality/) & [Isomorphism](https://plfa.github.io/Isomorphism/) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Equality.lagda.md) |
| 	       |  -  | [Connectives](https://plfa.github.io/Connectives/) & [Negation](https://plfa.github.io/Negation/) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Connectives.lagda.md) |
|	         |  -  | [Quantifiers](https://plfa.github.io/Quantifiers/) & [Decidable](https://plfa.github.io/Decidable/) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Quantifiers.lagda.md)
|          |  -  | [Lists](https://plfa.github.io/Lists/) and higher-order functions | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Lists.lagda.md)
| -        |  -  | [Lambda](https://plfa.github.io/Lambda/) the Simply Typed Lambda Calculus | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Lambda.lagda.md)
|          |  -  | [Properties](https://plfa.github.io/Properties/) such as type safety | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Lambda.lagda.md#progress) |
|          |  -  | [DeBruijn](https://plfa.github.io/DeBruijn/) representation of variables | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-DeBruijn-rev.lagda.md) |
|          |  -  | [Substitution](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Substitution.lagda.md) Theorems | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Substitution.lagda.md)
|          |  -  | [STLC Termination via Logical Relations](https://jsiek.github.io/PLFA-Spring-2026/STLC-Termination.lagda.md) | [link](https://jsiek.github.io/PLFA-Spring-2026/STLC-Termination.lagda.md)
|          |  -  | [More](https://plfa.github.io/More/) constructs: numbers, let, products (pairs), sums, unit, empty, lists | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-More.lagda.md)
|          |  -  | [Inference](https://plfa.github.io/Inference/) bidirectional type inference | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Bidirectional.lagda.md)
|          |  -  | [Subtyping and Records](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Subtyping.lagda.md) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Subtyping.lagda.md)
|  -       |  -  | [Bisimulation](https://plfa.github.io/Bisimulation/) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-Bisimulation.lagda.md) |
|          |  -  | [Untyped](https://plfa.github.io/Untyped/) Lambda Calculus and [BigStep](https://plfa.github.io/BigStep/) (CBN) | [link](https://github.com/jsiek/PLFA-Spring-2026/tree/main/lambda)
|          |  -  | [Confluence](https://plfa.github.io/Confluence/) of the Lambda Calculus | [link](https://jsiek.github.io/PLFA-Spring-2026/lambda/FullBetaConfluence.agda)
|          |  -  | Confluence continued |
|          |  -  | Spring Break, no class |
|          |  -  | Spring Break, no class |
|          |  -  | [SystemF, Universal Types](https://jsiek.github.io/PLFA-Spring-2026/SystemFIntrinsic.lagda.md) (aka. parametric polymorphism), [Recording](https://iu.mediaspace.kaltura.com/media/Lecture+April+29A+System+F+%26+Parametric+Polymorphism/1_3warcwd3) | [link](https://jsiek.github.io/PLFA-Spring-2026/SystemFIntrinsic.lagda.md) [old notes (ABT)](https://jsiek.github.io/PLFA-Spring-2026/SystemF.lagda.md) |
|          |  -  | [Gradual Typing](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-GradualTypingCoercions.lagda.md), [Recording](https://iu.mediaspace.kaltura.com/media/Lecture+April+27A+Gradual+Typing/1_r6ockrxd)|  [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-GradualTypingCoercions.lagda.md) [old notes (ABT)](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-GradualTyping.lagda.md) |
|          |  -  | [Gradual Guarantee for GTLC](https://jsiek.github.io/PLFA-Spring-2026/gradual-guarantee.md) |
|          |  -  | [Gradual Guarantee for GTLC](https://jsiek.github.io/PLFA-Spring-2026/gradual-guarantee.md), cont'd |
| -        |  -  | [Information-flow Control and Noninterference](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-IFC.lagda.md) | [link](https://jsiek.github.io/PLFA-Spring-2026/lecture-notes-IFC.lagda.md) |
|          |  -  | System F, Proof of Parametricity |
|          |  -  | [Denotational](https://plfa.github.io/Denotational/) semantics of the Lambda Calculus, [Recording](https://iu.mediaspace.kaltura.com/media/Lecture+March+30%2C+Denotational+Semantics/1_da4xq013)  |
|          |  -  | [Compositional](https://plfa.github.io/Compositional/)  |
|          |  -  | [Soundness](https://plfa.github.io/Soundness/), [Recording](https://iu.mediaspace.kaltura.com/media/Lecture+April+6%2C+Soundness+of+reduction+with+respect+to+denotational+semantics/1_o5gwttt7) |
|          |  -  | [Adequacy](https://plfa.github.io/Adequacy/), [Recording](https://iu.mediaspace.kaltura.com/media/Lecture+April+8%2C+Adequacy+of+Denotational+Semantics+with+respect+to+Operational+Semantics/1_1eoqorgy) |
|          |  -  | Final Project Presentations  |
|          |  -  | Final Project Presentations  |

## Course Methodology
- **Mechanized Proofs:** Every theorem must be verified by the Lean kernel.
- **Tactic Programming:** Students will learn to write custom Lean tactics to automate repetitive proofs.
- **Project-Based:** The final grade is based on formalizing a non-trivial language feature (e.g., exceptions, continuations, or lazy evaluation).

---

### Instructor
**Serhii Khoma**
*Software Engineer / PhD Student from Tallinn Technological university*
[srghma@gmail.com](mailto:srghma@gmail.com)
