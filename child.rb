require_relative 'parent.rb'

# Класс ребёнок. Он не послушный.
# Для усиления: добавлен параметр parent в инициализатор,
# для явной связи между экземплярами
class Child < Parent
  def initialize(name, parent = nil)
    super(name)

    @parent = parent
  end

  def obedient?
    false
  end

  def parent
    @parent
  end
end