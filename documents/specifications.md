## Conventions for avoiding ambiguity
Those points were considered when designing the controlled vocabulary for the prescription model:

- Careful use of decimal points to avoid ambiguity:
    - Avoiding unnecessary decimal points and trailing zeros, e.g. 5 mL rather than 5.0 mL, 0.5 rather than .50 or 0.50, to avoid possible misinterpretation as 50.
    - Always using leading zeros on decimal numbers less than 1: e.g. 0.5 rather than .5 to avoid misinterpretation as 5.
- Directions written out in full in English (although some common Latin abbreviations are listed below).
- Quantities given directly or implied by the frequency and duration of the directions.
- Where the directions are "as needed", the quantity should always be specified.
- Where possible, usage directions should specify times (7 am, 3 pm, 11 pm) rather than simply frequency (three times a day) and especially relationship to meals for orally consumed medication.
- Writing out numbers as words and numerals ("dispense #30 (thirty)") as in a bank draft or cheque.

## Definitions
- **Prescription**: A health-care program implemented by a physician or other qualified health care practitioner in the form of instructions that govern the plan of care for an individual patient. It should be presented in the following format:
    - `quantity` `dosage form` of `medicine` every `frequency` for `duration`.
    - Example: 1 tablet of Aspirin 100 mg orally every 6 hours for 7 days.
- **Quantity**: The amount of medication to be taken. Should be written in numbers.
- **Dosage form**: The form in which the medication is presented. In this controlled vocabulary, it is accepted one of the following:
    - `tablet`, `drop`, `pill`
- **Medicine**: The name of the medication and its strength.
    - Example: Aspirin 100 mg, Zofran 4 mg, Vasotec 5 mg, Timoptic 0.5 mg
    - The `strength` should be written in numbers followed by the unit of measurement.
    - Currently, the medicines being accepted in the development phase are:
        - `Aspirin`, `Zofran`, `Vasotec`, `Timoptic`
    - The `unit of measurement`should be one of the following values:
        - `mg`, `g`
- **Frequency**: How often the medication should be taken. Should be written in numbers followed by the unit of time.
    - Example: every 6 hours, every 12 hours.
- **Duration**: The period of time the medication should be taken. Should be written in numbers followed by the unit of time.
    - Example: for 7 days, for 3 days, for 30 days.

## Controlled Vocabulary
TODO

## Examples
**WARNING!** The following examples are not real prescriptions. They are just examples to illustrate the controlled vocabulary.

- 1 tablet of Aspirin 100 mg every 6 hours for 7 days.
- 2 tablets of Zofran 4 mg every 6 hours for 3 days.
- 1 tablet of Vasotec 5 mg every 12 hours for 30 days.
- 1 drop of Timoptic 1 g every 12 hours for 30 days.


## References
- [Wikipedia: Medical prescription](https://en.wikipedia.org/wiki/Medical_prescription)
- [Medical School HQ - Prescription Writing 101](https://medicalschoolhq.net/prescription-writing-101/)
- [University of Minnesota Duluth](https://www.d.umn.edu/medweb/Modules/Prescription/Practice.html)