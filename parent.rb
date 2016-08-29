# Базовый класс родитель. Можно задать имя, прочитать его и
# родитель всегда послушен.
class Parent
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def obedient?
    true
  end
end