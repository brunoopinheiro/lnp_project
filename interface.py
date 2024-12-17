import pgf
from enum import Enum
from prescriptor import Prescriptor


class MenuOptions(Enum):
    CHECK = 1
    COMPOSE = 2
    SUMMARY = 3
    NAME = 4
    EXIT = 5


class Interface:

    menu_options = {
        MenuOptions.CHECK: 'prescription_check_mode',
        MenuOptions.COMPOSE: 'prescription_compose_mode',
        MenuOptions.SUMMARY: 'show_summary',
        MenuOptions.NAME: 'rename_doctor',
        MenuOptions.EXIT: lambda: None,
    }

    def __init__(
        self,
        grammar,
        language,
        username: str = 'Doctor',
    ):
        self.grammar = grammar
        self.language = language
        self.username = username
        self.prescriptor = Prescriptor()
        self.prescriptions_list = list()

    def greetings_function(self):
        print(f'Hello, {self.username}!')
        print('Welcome to SCRIPTONITE')
        print('Script Organizer, Totally Intelligent, Notably Efficient')
        print()
        print('What can I help you with today?')
        print()

    def rename_doctor(self):
        print('Okay, how do you want me to call you?')
        name = input('>> ')
        self.username = name

    def prescription_check_mode(self):
        print('''Alright! Let's make a prescription and I can help you
                if anything is missing!''')
        exit_flag = False
        while exit_flag is False:
            print('Write your prescription to be checked. Leave blank to exit.')  # noqa
            input_sentence = input('>> ')

            if input_sentence == '':
                exit_flag = True
            else:
                try:
                    i = self.language.parse(input_sentence)
                    _, e = i.__next__()

                    prescription = self.language.linearize(e)
                    print(f'Prescription: {prescription}')
                    print('Everything seems to be fine.')
                    print()
                    self.prescriptions_list.append(prescription)
                except pgf.ParseError as err:
                    print('This does not seem to be a valid prescription.')
                    print(f'ERROR: {err}')
                    print()

    def prescription_compose_mode(self):
        exit_flag = False
        while exit_flag is False:
            structure = self.prescriptor.compose_prescription()
            try:
                expr = pgf.readExpr(structure)
                linearized = self.language.linearize(expr)
                print(f'Prescription: {linearized}')
                self.prescriptions_list.append(linearized)
            except pgf.ParseError as err:
                print(f'Error: {err}')
            exit_ = input('Exit? [y/n] ')
            if exit_[0].lower() == 'y':
                exit_flag = True

    def __get_callable(self, callable_name: str) -> callable:
        clb = getattr(self, callable_name)
        return clb

    def get_menu_opt(self):
        print('Type the number corresponding to the option you want.')
        for i, opt in enumerate(self.menu_options.items()):
            print(f'[{i + 1}] - {opt[0].name.capitalize()}')
        print()
        opt = MenuOptions(int(input('>> ')))
        print()

        return opt, self.menu_options[opt]

    def show_summary(self):
        report = f'''
            Doctor: {self.username}
            Register Nº: 123-321-123
            Patient: John Doe

                Prescriptions:\n'''
        for prs in self.prescriptions_list:
            report += f'{prs}\n'
        if len(self.prescriptions_list) == 0:
            report = "There doesn't seem to be any prescription. Let's add one?"  # noqa
        print(report)

    def run(self):
        exit_program = False
        self.greetings_function()
        while exit_program is False:
            opt, callable_name = self.get_menu_opt()
            if opt == MenuOptions.EXIT:
                exit_program = True
            else:
                function = self.__get_callable(callable_name)
                function()
                print()
