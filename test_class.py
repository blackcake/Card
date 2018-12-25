class Student(object):
    """docstring for Student"""
    order = 0
    def __init__(self, arg):
        self.arg = arg
        self.order = Student.order
        Student.order += 1

    def get_name(self):
        print(self.order)


Alias = Student('Alias')
Bob = Student('Bob')
Alias.get_name()
Bob.get_name()
