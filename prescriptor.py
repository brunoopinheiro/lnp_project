class Prescriptor:

    med_name_list = ['Aspirin', 'Zofran', 'Vasotec', 'Timoptic']
    form_list = ['Tablet', 'Drop', 'Pill']
    unit_list = ['Miligram', 'Gram']

    def get_med_name(self) -> str:
        print('First, what medicine do you want to add?')
        med_name = ''
        for i, v in enumerate(self.med_name_list):
            print(f'[{i + 1}] - {v}')
        opt = int(input('>> '))
        med_name = self.med_name_list[opt - 1]
        return med_name

    def parse_value(self, value) -> str:
        parser = {
            '1': 'One', '2': 'Two', '3': 'Three', '4': 'Four', '5': 'Five',
            '6': 'Six', '7': 'Seven', '8': 'Eight', '9': 'Nine',
        }
        return parser[value]

    def get_dosage(self):
        print('Noted! What is the administration form, and how many of that?')
        for i, v in enumerate(self.form_list):
            print(f'[{i + 1}] - {v}')
        opt = int(input('>> '))
        form_type = self.form_list[opt - 1]
        value = input('How many? >> ')
        value = self.parse_value(value)
        return form_type, value

    def get_med_strength(self):
        print('Now, what is the strength of the medicine?')
        value = self.parse_value(input('>> '))
        unt_meas = 'Milligram'
        is_grams = input('Milligrams / Grams [mg/g]: ')
        if is_grams[0].lower() == 'g':
            unt_meas = 'Gram'
        return value, unt_meas

    def get_med_freq(self):
        hours = input('What is the interval (hours)? ')
        days = input('For how much time (days)? ')
        return self.parse_value(hours), self.parse_value(days)

    def compose_prescription(self):
        med_name = self.get_med_name()
        form_type, dosage_value = self.get_dosage()
        strg_value, unt_meas = self.get_med_strength()
        freq_value, dur_value = self.get_med_freq()
        dosage_form = f'(DosageForm {dosage_value} {form_type})'
        med_strength = f'(MedStrength {strg_value} {unt_meas})'
        comp_medicine = f'(CompMedicine {med_name} {med_strength})'
        med_freq = f'(MedFreq {freq_value} Hour)'
        med_dur = f'(MedDur {dur_value} Day)'
        structure = f'MedicalPrescription {dosage_form} {comp_medicine} {med_freq} {med_dur}'  # noqa
        return structure
