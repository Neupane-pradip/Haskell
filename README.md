# Haskell and Functional Programming

Weekly functional programming exercises in Haskell, covering list comprehensions, functions, recursion, and custom data types.

## Repository guide

| Folder | Examples |
|---|---|
| [Week 2](Week%202/) | Manhattan-distance points, heart-rate calculation, and strings |
| [week 3](week%203/) | Credits, character pairs, and distance filtering |
| [week4](week4/)–[week7](week7/) | Further weekly function and data-processing exercises |
| [week8](week8/) | Phone-related data types and clustering exercises |

The folders retain their original names and capitalization.

## Try an exercise

Install GHC and its interactive interpreter, GHCi. From the repository root:

```sh
ghci "Week 2/manhattan-distance.hs"
```

At the GHCi prompt:

```haskell
points 1
-- [(-1,0),(0,-1),(0,0),(0,1),(1,0)]
:quit
```

This function returns the integer coordinate pairs whose Manhattan distance from the origin is at most the supplied value.

For the phone-type exercise:

```sh
ghci week8/PhoneType.hs
```

```haskell
Phone PrivateMobile (toCountryCode 358) (toPhoneNo 1234567)
```

## How the repository is organized

Load individual source files to explore their definitions. There is no shared Cabal or Stack project and no repository-wide test runner. Many files define functions without a `main` entry point, so GHCi is the most direct way to use them.

Some compiled `.hi` and `.o` files are included in this historical snapshot. The `.hs` files are the source material.

## Course context

The original course outline follows *Learn You a Haskell for Great Good!* alongside additional functional programming topics. The committed exercises cover a subset of that outline; the repository does not imply that every planned course topic has a completed implementation.
