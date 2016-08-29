require_relative 'child.rb'

# вспомогательный метод для первода состояния "послушный" в текст
def obedient_to_s(obedient)
  if obedient
    "послушный"
  else
    "не послушный"
  end
end

# вспомогательный метод определения родителя
def whose(prnt)
  if prnt
    "Мой родитель: #{prnt.name}"
  else
    "Я - сирота"
  end
end

# Создаём экземпляры родителя и ребёнка. Читаем их свойства послушности.
prnt = Parent.new('Миша')
child1 = Child.new('Олег', prnt)
child2 = Child.new('Данил')

[prnt, child1, child2].each do |x|
  case x.class.to_s
    when 'Parent' then puts "Я - родитель. Меня зовут #{x.name}. Я - #{obedient_to_s(x.obedient?)}"
    when 'Child' then puts "Я - ребёнок. Меня зовут #{x.name}. Я - #{obedient_to_s(x.obedient?)}. #{whose(x.parent)}"
  end
end