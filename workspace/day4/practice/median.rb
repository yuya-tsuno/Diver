# biggerは二つの値を比べて、大きい方の値を返すメソッド
def bigger(a, b)
    # if a > b という条件式を使って、「aとbを比べて、aの方が大きかったら if a > b の下に書いてある処理を実行する」という意味になる
    if a > b
        # return a という一文で「変数aの値を、biggerと言うメソッドを使った場所に送る」という意味になる
        return a
    # else という条件式を使って、「if a > b の式が成り立たなかった時、elseの下にある処理を実行する」という意味になる
    else
        # return b という一文で「変数bの値を、biggerと言うメソッドを使った場所に送る」という意味になる
        return b
    end
end

# biggestは最大値を出力するメソッド
def biggest(a, b, c)
    # biggest_number = biggest(a, b, c)という記述（biggestメソッドの呼び出し）により、現在biggestメソッドの中には、a=5,b=7,c=2の値が入っている。

    # 最大値は、まずa,b,cのうちのa,bから大きい方をbigger(a, b)のメソッドを使用して求める。
    # bigger_one = bigger(a, b)という式を書くことで、「bigger(a, b)のメソッドを起動することで得られた値を変数bigger_oneに代入する」という意味になる
    # bigger(a, b)はa=5,b=7,c=2の値のうち、a=5,b=7の値をbiggerに送りますという意味になる。
    bigger_one = bigger(a, b)
    # aの方が大きかったら、次にbiggerのメソッドを使用してaとcを比べる。aとcで大きかった方がa,b,cで一番大きな値となる。
    if bigger_one == a
        # bigger(a, c)はa=5,b=7,c=2の値のうち、a=5,c=2の値をbiggerに送りますという意味になる。
        biggest = bigger(a, c)
    # bの方が大きかったら、次にbiggerのメソッドを使用してbとcを比べる。bとcで大きかった方がa,b,cで一番大きな値となる。
    elsif bigger_one == b
        # bigger(b, c)はa=5,b=7,c=2の値のうち、b=7,c=2の値をbiggerに送りますという意味になる。
        biggest = bigger(b, c)
    end
    # 変数biggestの値（最大値）を返すことで、中央値の出力に利用する
    return biggest
end

# medianは中央値を出力するメソッド
# 中央値は、まず最大値を求め、その次に残った二つの値を求める。
# 残った二つの値のうちで大きい方が中央値（最大でもなく、最小でもない値）になる、という求め方をする。
def median(a, b, c)
    # puts(median(5,7,2))という記述（medianメソッドの呼び出し）により、現在medianメソッドの中には、a=5,b=7,c=2の値が入っている。

    # 最大値を出力するメソッドのbiggest(a, b, c)を使用し、aとbとcの中から最大値を出力し、変数biggest_numberに入れる
    biggest_number = biggest(a, b, c)

    # 最小値をみつけ、最小値でなかった方を返却する
    # a,b,cの中の最大値がaだったら、bとcで大きかった方が中央値になるので、その値を変数median_numberに入れる
    if biggest_number == a
        median_number = bigger(b, c)
    # a,b,cの中の最大値がbだったら、aとcで大きかった方が中央値になるので、その値を変数median_numberに入れる
    elsif biggest_number == b
        median_number = bigger(a, c)
    # a,b,cの中の最大値がcだったら、aとbで大きかった方が中央値になるので、その値を変数median_numberに入れる
    elsif biggest_number == c
        median_number = bigger(a, b)
    end
    # 変数median_numberの値を返すことで、中央値を出力させる
    return median_number
end

# median(5,7,2)という記述で、def medianのメソッドのなかに５と7と2の値を送り込む。
puts(median(5,7,2))
