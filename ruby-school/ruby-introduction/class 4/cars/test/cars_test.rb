require "test_helper"

class CarsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Cars::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def test_string_has_titlelize_method
  	assert "motor cuatro cilindros".titlelize == "Motor Cuatro Cilindros"
  end

  def test_parse_float
  	assert 35.5.format_Price == "$35.50"
  end

  def test_true_to_s_verdadero
  	assert true.to_s == "verdadero"
  end

  def test_false_to_s_falso
  	assert false.to_s == "falso"
  end

  def test_car_attributes
  	car = Car.new
  	car.engine_info = "2.4L"
  	car.engine_price = 500.00
  	car.wheel_info = "Michelline"
  	car.wheel_price = 200.00
  	assert car.engine_info == "2.4L"
  	assert car.engine_price == 500.00
  	assert car.wheel_info == "Michelline"
  	assert car.wheel_price == 200.00
  	#asser car.engine_info_and_price == "2.4L-500.00"
  end
end
