# Introduction to Category Theory

**Proposed Course based on Bartosz Milewski's "Category Theory for Programmers"**

This course introduces the fundamental concepts of Category Theory, emphasizing its applications in functional programming and software architecture. Instead of just learning syntax, students will learn to reason about composition, mapping, and the universal properties that define robust software systems.

## Syllabus & Materials

| Part | Topic | Description | Materials |
| :--- | :--- | :--- | :--- |
| **01** | **Motivation & Philosophy** | Why category theory? The problem of composition and the limits of cognitive load. | [Blog 1.1](https://bartoszmilewski.com/2014/10/28/category-theory-for-programmers-the-preface/) |
| **02** | **What is a category?** | Objects, Morphisms, Identity, and the core law of Composition. | [Blog 1.2](https://bartoszmilewski.com/2014/11/04/category-the-essence-of-composition/) |
| **03** | **Functions & Epimorphisms** | Set-theoretic view vs Categorical view. Mapping and Surjectivity. | [Blog 2.1](https://bartoszmilewski.com/2014/11/24/types-and-functions/) |
| **04** | **Monomorphisms & Types** | Injectivity, simple types as objects, and functions as morphisms. | [Blog 2.2](https://bartoszmilewski.com/2014/11/24/types-and-functions/) |
| **05** | **Examples & Monoids** | Orders, Pre-orders, and Monoids as single-object categories. | [Blog 3.1](https://bartoszmilewski.com/2014/12/05/categories-great-and-small/) |
| **06** | **Kleisli Category** | Modeling side effects through composition of "embellished" functions. | [Blog 3.2](https://bartoszmilewski.com/2014/12/23/kleisli-categories/) |
| **07** | **Terminal & Initial Objects** | Universal properties defined by incoming and outgoing unique morphisms. | [Blog 4.1](https://bartoszmilewski.com/2015/01/07/products-and-coproducts/) |
| **08** | **Products** | Defining the 'pair' construct through its universal projection properties. | [Blog 4.2](https://bartoszmilewski.com/2015/01/07/products-and-coproducts/) |
| **09** | **Coproducts & Sums** | The duality of products. Algebraic 'Sum Types' (Either/Variants). | [Blog 5.1](https://bartoszmilewski.com/2015/01/13/simple-algebraic-data-types/) |
| **10** | **Algebraic Data Types** | Building complex structures using Sums ($\times$) and Products ($+$). | [Blog 5.2](https://bartoszmilewski.com/2015/01/13/simple-algebraic-data-types/) |
| **11** | **Functors** | Mapping categories. Preserving structure and composition. | [Blog 6.1](https://bartoszmilewski.com/2015/01/20/functors/) |
| **12** | **Functors in Code** | Implementation in Haskell/Rust and the laws of `fmap`. | [Blog 6.2](https://bartoszmilewski.com/2015/01/20/functors/) |
| **13** | **Functoriality** | Naturality and the ability to transform contained data. | [Blog 7.1](https://bartoszmilewski.com/2015/02/02/functoriality/) |
| **14** | **Monoidal Categories** | Categories equipped with a tensor product and unit object. | [Blog 7.2](https://bartoszmilewski.com/2015/03/26/monoidal-categories/) |
| **15** | **Function Objects** | Treating functions (morphisms) as objects within a category. | [Blog 8.1](https://bartoszmilewski.com/2015/03/13/function-types/) |
| **16** | **Curry-Howard-Lambek** | The deep link between Logic, Type Theory, and Category Theory. | [Blog 8.2](https://bartoszmilewski.com/2015/03/13/function-types/) |
| **17** | **Natural Transformations** | Morphisms between functors. Decoupling structure from data. | [Blog 9.1](https://bartoszmilewski.com/2015/04/07/natural-transformations/) |
| **18** | **Bicategories** | Introduction to 2-categories and higher-dimensional composition. | [Blog 9.2](https://bartoszmilewski.com/2016/11/02/bicategories/) |
| **19** | **Monads** | Endofunctors with specific join/return natural transformations. | [Blog 10.1](https://bartoszmilewski.com/2016/04/18/monads-monoids-and-categories/) |
| **20** | **Monoid of Endofunctors** | The final abstract view: A monad is just a monoid in the category of endofunctors. | [Blog 10.2](https://bartoszmilewski.com/2016/04/18/monads-monoids-and-categories/) |

---

### Supplemental Materials
- **The Book:** [Category Theory for Programmers (PDF)](https://github.com/hmemcpy/milewski-ctfp-pdf)
- **Video Lectures:** [YouTube Playlist - Bartosz Milewski](https://www.youtube.com/playlist?list=PLbgaMIhjbmEnaH_LTkxLI7FMa2HsnawM_)
- **Interactive Exercises:** Implemented in Rust and Haskell.

---

### Instructor
**Serhii Khoma**
*Software Engineer / PhD Student from Tallinn Technological university*
[srghma@gmail.com](mailto:srghma@gmail.com)
