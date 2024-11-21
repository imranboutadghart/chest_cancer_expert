# Chest Cancer Symptom Checker

A Prolog-based interactive tool for assessing chest cancer risk through symptom analysis and personalized advice.

---

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Risk Categories](#risk-categories)
- [Installation](#installation)
- [Usage](#usage)
- [Limitations](#limitations)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)
- [License](#license)
- [Disclaimer](#disclaimer)

---

## Introduction

The Chest Cancer Symptom Checker is a Prolog program that evaluates the risk of chest cancer based on user-reported symptoms. By asking a series of yes/no questions, the tool calculates a risk score and provides tailored advice, encouraging users to seek medical attention if necessary.

---

## Features

- Interactive prompt-based symptom checker.
- Evaluation of multiple symptoms associated with chest cancer.
- Categorization into **High Risk**, **Moderate Risk**, and **Low Risk** based on the user's responses.
- Personalized advice for each risk level.

---

## Installation

### Prerequisites
- Install [SWI-Prolog](https://www.swi-prolog.org/).

### Steps
- Navigate to the project directory:
   ```bash
   cd chest-cancer-symptom-checker
   ```

### Usage
- Launch the program in prolog interpreter
- Start the program by running
	```
	?- go.
	```
- Follow the prompts and answer the questions

### Example run
```
Enter Your Name: Hossam
Hello, Hossam! Let's check for chest cancer symptoms.

Do you have persistent chest pain? (y/n): y
You have persistent chest pain.

Do you have shortness of breath? (y/n): n
You do not have shortness of breath.

...

Thank you for completing the symptom check, Hossam.
High Risk: You have several symptoms associated with chest cancer. Please see a doctor immediately.
```

## Risk categories
Risk Level	Description
High Risk	5 or more symptoms detected. Immediate medical attention is recommended.
Moderate Risk	3–4 symptoms detected. Medical consultation is advisable.
Low Risk	Fewer than 3 symptoms detected. Risk is low, but consult a doctor if concerned.
