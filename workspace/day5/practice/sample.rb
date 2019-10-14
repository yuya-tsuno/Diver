puts("じゃんけん、、、")

class Player
  def hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
    puts("数字を入力してください。\n0: グー\n1: チョキ\n2: パー")
    player_hand = gets.to_i
    return player_hand
  end
end

class Enemy
  def hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
    enemy_hand = rand(3)
    return enemy_hand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    # プレイヤーが打ち込んだ値と、Enemyがランダムに出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # その際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる
    if player_hand >= 0 && player_hand <= 2
      jankens = ["グー","チョキ","パー"]
      puts("あなたの手は#{jankens[player_hand]}で、敵の出した手は#{jankens[enemy_hand]}です。")

      judge = (player_hand - enemy_hand + 3) % 3
      if judge == 0
        puts("あいこで、、、")
        return true
      elsif judge == 2
        puts("You win! やるやん！明日は俺にリベンジさせて。")
        return false
      else
        puts("You lose! 俺の勝ち！なんで負けたか,明日まで考えといてください。")
        return false
      end

    else
      puts("0,1,2以外はルール違反やで。やり直してください。")
      return true
    end


  end
end


player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
next_game = true
while next_game do
  next_game = janken.pon(player.hand, enemy.hand)
end

# ここに書かれているRubyの記述はあくまでヒントとして用意された雛形なので、書かれている記述に従わずに実装したいという場合は、自分の好きに実装して構わない。課題要件を満たし、コードの品質が一定の水準にあると判定されればどのような実装で
