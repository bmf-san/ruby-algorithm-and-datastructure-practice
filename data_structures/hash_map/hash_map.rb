class HashMap
  def initialize
    @data = {}
  end

  def hash(key)
    key % 5
  end

  def put(key, value)
    @data[hash(key)] = value
  end

  def get(key)
    @data[hash(key)]
  end
end
