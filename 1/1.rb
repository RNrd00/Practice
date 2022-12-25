n=1
puts n.to_f
puts n.to_f/2
#.to_fメソッドは整数を少数に変化させる

n1=2**3
puts n1
#アスタリスクは二回使うと冪乗になる

n2=0.1*3.0

puts n2==0.3
#0.1*3.0しても0.3にならず、Rubyでは誤差が発生してしまう。これを丸め誤差と言う。irbを使うとわかりやすい。原因は2進数を利用しているから。

n3 = 0.1r*3.0r
puts n3 == 0.3
puts n3
#r(Rational)をつけることで有理数になり、期待通りの数値を獲得できる。上の計算結果は10分の3になる。

t1=true
f1=false
puts t1&f1
puts !(t1&f1)
#!をつけると真偽が反転する。

point=7
day=1
point*=5 if day ==1
puts point
#if文は上の様に修飾子としても使える。

