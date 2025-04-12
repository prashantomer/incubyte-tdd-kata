# 🧮 String Calculator (TDD in Ruby)

This project is a **step-by-step TDD implementation** of a String Calculator in Ruby using **RSpec**. Each step introduces new functionality and is documented through Git commits.

---

## 📦 Features Implemented

- ✅ Add numbers from a comma-separated string
- ✅ Handle new lines as delimiters
- ✅ Support custom single and multi-character delimiters
- ✅ Allow multiple delimiters
- ✅ Ignore numbers greater than 1000
- ✅ Throw error for negative numbers

---

## 🧪 Development Log (TDD Style)

### 🟢 Initialization

- **`8dab9be`** — 📄 `Readme Init`  
  Initial setup of the README file.

- **`db38865`** — 🧪 `Step 1: TDD - Spec Init for Calculator`  
  Initialized RSpec and the first test for the calculator.

---

### 🥇 Step 1: Basic Parsing

- **`b94bed1`** — ✅ `Create Simple String Calculator: Passing First Example`  
  Returns `0` when given an empty string.

- **`746c24c`** — ➕ `Handle Single Number`  
  Returns the number itself: `add("5")` ➝ `5`.

- **`344d296`** — ➕ `Handle Multiple Numbers with Comma`  
  Supports adding two or more comma-separated numbers.

- **`db7deae`** — ➕ `Handle Semicolon Delimiter`  
  Introduced early support for an alternate delimiter `;`.

---

### 📏 Step 2–3: Newline Handling & Refactoring

- **`6575a76`** — ➕ `Handle New Line Separator`  
  Supports `\n` as a valid delimiter: `add("1\n2,3")` ➝ `6`.

- **`89af922`** — ♻️ `Refactor`  
  Improved parsing logic and cleaned up tests.

---

### 🧩 Step 4: Custom Delimiters

- **`1c2103b`** — 🧩 `Handle Custom Delimiter and Refactor`  
  Introduced custom delimiter syntax:  
  Example: `//;\n1;2` ➝ `3`.

---

### ⚠️ Step 5–6: Validation & Edge Cases

- **`9c873d2`** — 🚫 `Handle Negative Numbers`  
  Throws an exception if negative numbers are present:  
  `add("1,-2")` ➝ Error: `Negatives not allowed: -2`.

- **`2d26d02`** — 🧮 `Ignore Numbers > 1000`  
  Values greater than 1000 are ignored:  
  `add("2,1001")` ➝ `2`.

---

### 🌟 Step 7–9: Advanced Delimiter Support

- **`82b5726`** — 🧩 `Handle Varying and Multiple Delimiters`  
  - Delimiters of any length:  
    `add("//[***]\n1***2***3")` ➝ `6`
  - Multiple delimiters:  
    `add("//[*][%]\n1*2%3")` ➝ `6`
  - Multiple with varying length:  
    `add("//[***][%%]\n1***2%%3")` ➝ `6`

---

## 🧰 Tech Stack

- Ruby
- RSpec (for unit testing)
- Git (with atomic commits for every TDD step)

---

## 🏃‍♂️ Getting Started

```bash
gem install rspec
rspec string_calculator_spec.rb
