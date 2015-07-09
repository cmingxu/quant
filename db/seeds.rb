
%w(xcm@qq.com markqiu@qq.com).each do |a|
  Staff.create :name => a, :password => a, :login => a
end


{
  "0" => "深圳",
  "1" => "上海",
  "2" => "B转H", 
  "3" => "沪港通",
  "6" => "股转(新三版)"
}.each do |k, v|
  Market.create :name => v, :code => k
end
