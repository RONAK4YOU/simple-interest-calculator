# Simple Interest Calculator

A small Bash command-line program that calculates simple interest from a principal, annual interest rate, and time period.

## Formula

`simple interest = principal × annual rate × time in years ÷ 100`

The result is the interest only. The total amount is principal plus interest.

## Run

On Linux, macOS, or Windows with WSL/Git Bash:

```bash
chmod +x simple-interest.sh
./simple-interest.sh
```

Enter a non-negative principal, an annual rate from 0 to 100, and a positive number of years. The script validates input and prints interest and total amount to two decimal places.

Example: principal `1000`, rate `5`, time `2` gives interest `100.00` and total `1100.00`.

## Project files

- `simple-interest.sh` — calculator script
- `LICENSE` — Apache License 2.0
- `CODE_OF_CONDUCT.md` — contributor expectations and enforcement
- `CONTRIBUTING.md` — contribution guidance
- `submission-notes/` — honest templates for recording your own GitHub and terminal evidence

## Publish to GitHub

Create a **public** repository on GitHub named `simple-interest-calculator` (leave it empty; do not add a README or license there). Then, from this directory, run:

```bash
git init -b main
git add README.md LICENSE CODE_OF_CONDUCT.md CONTRIBUTING.md simple-interest.sh submission-notes
git commit -m "Build simple interest calculator project"
git remote add origin https://github.com/YOUR-GITHUB-USERNAME/simple-interest-calculator.git
git push -u origin main
```

Replace `YOUR-GITHUB-USERNAME` with your own username. Your file URLs will then be:

```text
https://github.com/YOUR-GITHUB-USERNAME/simple-interest-calculator/blob/main/README.md
https://github.com/YOUR-GITHUB-USERNAME/simple-interest-calculator/blob/main/LICENSE
https://github.com/YOUR-GITHUB-USERNAME/simple-interest-calculator/blob/main/CODE_OF_CONDUCT.md
https://github.com/YOUR-GITHUB-USERNAME/simple-interest-calculator/blob/main/CONTRIBUTING.md
https://github.com/YOUR-GITHUB-USERNAME/simple-interest-calculator/blob/main/simple-interest.sh
```

These URLs only work after you publish the repository. A public fork, pull request, and their command output must be generated from your own GitHub account; use the notes in `submission-notes/` to record the real output after doing those steps. Never submit example output as if it came from your account.
