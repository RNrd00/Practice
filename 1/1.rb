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

    country = 'itary'
    if country == 'Japan' then 'こんにちは'
    elsif country == 'us' then 'Hello'
    elsif country == 'italy' then 'Ciao'
    else '???'
    end
    puts country
#thenを用いて修飾子の作成も可

def greet(country2)
    return 'countryを入力して' if country2.nil?
     if country2 == 'Japan'
         'こんにちは'
     else
         'Hello'
     end
end
puts greet(nil)
puts greet('Japan')
puts greet('a')
#nilを含むかどうかを条件式に含むことができる。尚、if文やメソッドを出すときはES6と違ってputsをつけないといけない点に注意。

puts 'abc'.class
#classメソッドでクラス名を確認できる

puts %q!He said, "Don't speak."!
# %q!と!で文を囲むとシングルクォーテーションで囲んだのと同じになる。

something="Hello."
puts %Q!He said, "#{something}"!
# %Q!と!で文を囲むとダブルクォーテーションで囲んだのと同じになる。

puts %!He said, "#{something}"!
#%!と!で囲むのは%Q!と!と同じ効果。

puts %q?He said, "Don't speak."?
#!の部分は任意の記号で書き換えられる。?,^,<,{,(,[等。

puts "Line 1,
Line2"
#こんな形で改行ができる。51page。

aTEXT = <<TEXT
これはヒアドキュメント。
複数行に渡って長い文字列をかける。
TEXT
puts aTEXT

aHTML = <<HTML
<div>
 <img src="sample.jpg">
</div>
HTML
puts aHTML
#ヒアドキュメントは別の識別子を付けられる。

def some_method
    <<-TEXT
これはヒアドキュメントです。
を使うと最後の識別子をインデントさせることができます。
    TEXT
end

puts some_method 
#上のような定義も可

def some_method2
    <<~TEXT
これはヒアドキュメントです。
を使うと最後の識別子をインデントさせることができます。
    TEXT
end

puts some_method2
#同上

def some_method3
    <<~TEXT
 \ これはヒアドキュメントです。
 \ を使うと最後の識別子をインデントさせることができます。
    TEXT
end

puts some_method3
#バックスラッシュで半角スペースを入れられる

nameA = 'Alice2'
a3 = <<TEXT
ようこそ、#{nameA}さん
以下のメッセージを御覧ください。
TEXT
puts a3
#ヒアドキュメントの中では式展開が有効

nameB = 'Alice3'
a4 = <<'TEXT'
ようこそ、#{nameB}さん
以下のメッセージを御覧ください。
TEXT
puts a4

a5 = <<"TEXT"
ようこそ、#{nameB}さん
以下のメッセージを御覧ください。
TEXT
puts a5
#識別子をシングルクォーテーションで囲むと式展開が無効に、ダブルだと有効化する。\nによる文字改行も変化する。

a6 = 'Ruby'
a6.prepend(<<TEXT)
Java
Python
TEXT
puts a6
##prependメソッドは渡された文字列を先頭に追加する。また、ヒアドキュメントは引数に渡すことができる。

a7 = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts a7

a8 = [<<TEXT1,<<TEXT2]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2
puts a8[0]
#配列などにも使用可。

a9 = sprintf('%0.3f',1.2)
puts a9
#sprintfメソッドは指定されたフォーマットの文字列を作成する 55page

a10 = sprintf('%0.3f + %0.3f', 1.2, 0.48)
puts a10
#上のように複数にsprintfを渡せる

a11 = [10,20,30].join
puts a11
#joinメソッドは各配列を連結して一つの文字列にする

a12 = 'Hi' * 10
puts a12
#文字列に数字をかけるとその文だけ文字列を繰り返す

a13 = String.new('Hello')
puts a13
#Stringクラスで文字列を作れる

a14 = 'abc' 'def'
puts a14
#文字列は以下のように定義すると連結される。スペースがなくても同じ

a15 = "\u3042\u3044\u3046"
puts a15
#\uでUnicode形式で文字列を出力する

a16 = "\u0041" "\u{41}"
puts a16
#\uは4桁で書くか式展開を使わないとエラーになる

a17 = ?a
puts a17
#?を使って文字列を作ることも可

a18 = 0b11111111, 0377, 0o377, 0xff
puts a18
#２進数は0b,8進数は0,16進数は0xという基数指示子を使うと10進数以外の記数法で整数値を書ける 57page

a19 = 0d255
puts a19
#0dをつけると10進数化

a20 = sprintf '%#b', (0b1010 & 0b1100)
a21 = sprintf '%#b', (0b1010 | 0b1100)
a22 = sprintf '%#b', (0b1010 ^ 0b1100)
a23 = sprintf '%#b', (0b1010 >> 1)
a24 = sprintf '%#b', (0b1010 << 1)
a25 = sprintf '%#b', ~0b1010
puts a20
puts a21
puts a22
puts a23
puts a24
puts a25

#sprintfメソッドを使うと２進数表示に。また、特定の演算子でビット演算が可能。

a26 = 2e-3
puts a26
#上のように定義すれば指数関数を使える(2x10^-3)

a27 = 10.class, 1.5.class
puts a27

a28 = 2/3r
puts a28
puts a28.class
#classメソッドで数値の種類を確認

r2 = '2/3'.to_r
puts r2
puts r2.class
#文字列から有理数に変換できる

c2 = 0.3-0.5i
puts c2
puts c2.class
#iは複素数リテラルと言い、つけると複素数になる

c3 = '0.3-0.5i'.to_c
puts c3
puts c3.class
#.to_cメソッドは文字列を複素数に変換する

user2 = ('Alice') || ('bob') || ('carol')
puts user2
#Rubyは左から順に式を評価する。これを短絡評価(ショートサーキット)と言う。

t3=true
f3=false
a29=t3 and f3
a30=t3 or f3

puts a29
puts a30
#and、orは他の論理演算子と似た働きをする。違いは優先順位が低いこと 

a31=!f3 || t3
a32= (not f3 || t3)
puts a31,a32
#not使用時は括弧を付けないと使用できないので注意。また、！は||より優先順位が高く、notは||より低いので出力結果が異なる。page61




