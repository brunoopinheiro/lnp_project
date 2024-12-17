import pgf
from interface import Interface


GRAMMAR_FILE = 'MedPresc.pgf'


def interface(grammar, lang):
    interface = Interface(grammar, lang)
    interface.run()


if __name__ == '__main__':
    grammar = pgf.readPGF(GRAMMAR_FILE)

    lang = grammar.languages['MedPrescEng']
    interface(grammar, lang)
