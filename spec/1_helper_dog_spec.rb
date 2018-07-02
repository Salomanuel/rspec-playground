class Dog
  attr_reader :good_dog, :has_been_walked

  def initialize(good_or_not)
    @good_dog = good_or_not
    @has_been_walked = false
  end

  def walk_dog
    @has_been_walked = true
  end
end

describe Dog do
  it 'should be able to create and walk a good dog' do
    dog = Dog.new(true)
    dog.walk_dog

    expect(dog.good_dog).to be true
    expect(dog.has_been_walked).to be true
  end

  it 'should be able to create and walk a bad dog' do
    dog = Dog.new(false)
    dog.walk_dog

    expect(dog.good_dog).to be false
    expect(dog.has_been_walked).to be true
  end
end
