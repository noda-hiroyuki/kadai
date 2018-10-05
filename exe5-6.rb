class People
  def self.test
    p "test"
  end
end

class SuperPeople < People #問題５(exe5)のプログラム
  def self.greet           #問題６(exe6)のプログラム
    p "私は目からビームが出せます"
  end
end

SuperPeople.greet  #SuperPeopleクラスで定義したgreetメソッドの出力
SuperPeople.test   #Peopleクラスから継承されたtestメソッドの出力
