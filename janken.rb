while true
    puts "ジャンケン…"
    while true
        puts "0（グー）,1（チョキ）,2（パー）"
        my_hand = gets.to_i
        enemy_hand = rand(3).to_i
        if my_hand == 0 && enemy_hand == 0
            puts "ポン！"
            puts "あなたの手：グー"
            puts "相手の手：グー"
            puts "あいこで…（0（グー）,1（チョキ）,2（パー））"
        elsif my_hand == 0 && enemy_hand == 1
            puts "ポン！"
            puts "あなたの手：グー"
            puts "相手の手：チョキ"
            puts "勝ち！"
            situation_number=1
            break    
        elsif my_hand == 0 && enemy_hand == 2
            puts "ポン！"
            puts "あなたの手：グー"
            puts "相手の手：パー"
            puts "負け…"
            situation_number=0
            break
        elsif my_hand == 1 && enemy_hand == 0
            puts "ポン！"
            puts "あなたの手：チョキ"
            puts "相手の手：グー"
            puts "負け…"
            situation_number=0
            break    
        elsif my_hand == 1 && enemy_hand == 1
            puts "ポン！"
            puts "あなたの手：チョキ"
            puts "相手の手：チョキ"
            puts "あいこで…（0（グー）,1（チョキ）,2（パー））"
        elsif my_hand == 1 && enemy_hand == 2
            puts "ポン！"
            puts "あなたの手：チョキ"
            puts "相手の手：パー"
            puts "勝ち！"
            situation_number=1
            break
        elsif my_hand == 2 && enemy_hand == 0
            puts "ポン！"
            puts "あなたの手：パー"
            puts "相手の手：グー"
            puts "勝ち！"
            situation_number=1
            break    
        elsif my_hand == 2 && enemy_hand == 1
            puts "ポン！"
            puts "あなたの手：パー"
            puts "相手の手：チョキ"
            puts "負け…"
            situation_number=0
            break
        elsif my_hand == 2 && enemy_hand == 2
            puts "ポン！"
            puts "あなたの手：パー"
            puts "相手の手：パー"
            puts "あいこで…（0（グー）,1（チョキ）,2（パー））"              
        else
            puts "0,1,2を入力してください。" 
        end
    end

    puts "あっち向いて…"
    while true
        puts "0（上）,1（右）,2（下）,3（左）"
        my_direction = gets.to_i
        if my_direction == 0 || my_direction == 1 || my_direction == 2 || my_direction == 3
            break
        else
            puts "0,1,2,3を入力してください。" 
        end
    end
    enemy_direction = rand(4).to_i
    if my_direction == 0 && enemy_direction == 0 && situation_number==0
        puts "ホイ！"
        puts "あなたの方向：上"
        puts "相手の方向：上"
        puts "負け…"
        break 
    elsif my_direction == 0 && enemy_direction == 0 && situation_number==1
        puts "ホイ！"
        puts "あなたの方向：上"
        puts "相手の方向：上"
        puts "勝ち！"
        break 
    elsif my_direction == 0 && enemy_direction == 1
        puts "ホイ！"
        puts "あなたの方向：上"
        puts "相手の方向：右"
        puts "もう一回！"
    elsif my_direction == 0 && enemy_direction == 2
        puts "ホイ！"
        puts "あなたの方向：上"
        puts "相手の方向：下"
        puts "もう一回！"
    elsif my_direction == 0 && enemy_direction == 3
        puts "ホイ！"
        puts "あなたの方向：上"
        puts "相手の方向：左"
        puts "もう一回！"
    elsif my_direction == 1 && enemy_direction == 0
        puts "ホイ！"
        puts "あなたの方向：右"
        puts "相手の方向：上"
        puts "もう一回！" 
    elsif my_direction == 1 && enemy_direction == 1 && situation_number==0
        puts "ホイ！"
        puts "あなたの方向：右"
        puts "相手の方向：右"
        puts "負け…"
        break 
    elsif my_direction == 1 && enemy_direction == 1 && situation_number==1
        puts "ホイ！"
        puts "あなたの方向：右"
        puts "相手の方向：右"
        puts "勝ち！"
        break 
    elsif my_direction == 1 && enemy_direction == 2
        puts "ホイ！"
        puts "あなたの方向：右"
        puts "相手の方向：下"
        puts "もう一回！"
    elsif my_direction == 1 && enemy_direction == 3
        puts "ホイ！"
        puts "あなたの方向：右"
        puts "相手の方向：左"
        puts "もう一回！"
    elsif my_direction == 2 && enemy_direction == 0
        puts "ホイ！"
        puts "あなたの方向：下"
        puts "相手の方向：上"
        puts "もう一回！"
    elsif my_direction == 2 && enemy_direction == 1
        puts "ホイ！"
        puts "あなたの方向：下"
        puts "相手の方向：右"
        puts "もう一回！"
    elsif my_direction == 2 && enemy_direction == 2 && situation_number==0
        puts "ホイ！"
        puts "あなたの方向：下"
        puts "相手の方向：下"
        puts "負け…"    
        break
    elsif my_direction == 2 && enemy_direction == 2 && situation_number==1
        puts "ホイ！"
        puts "あなたの方向：下"
        puts "相手の方向：下"
        puts "勝ち！"    
        break         
    elsif my_direction == 2 && enemy_direction == 3
        puts "ホイ！"
        puts "あなたの方向：下"
        puts "相手の方向：左"
        puts "もう一回！"   
    elsif my_direction == 3 && enemy_direction == 0
        puts "ホイ！"
        puts "あなたの方向：左"
        puts "相手の方向：上"
        puts "もう一回！"
    elsif my_direction == 3 && enemy_direction == 1
        puts "ホイ！"
        puts "あなたの方向：左"
        puts "相手の方向：右"
        puts "もう一回！"
    elsif my_direction == 3 && enemy_direction == 2
        puts "ホイ！"
        puts "あなたの方向：左"
        puts "相手の方向：下"
        puts "もう一回！"        
    elsif my_direction == 3 && enemy_direction == 3 && situation_number==0
        puts "ホイ！"
        puts "あなたの方向：左"
        puts "相手の方向：左"
        puts "負け…"   
        break 
    elsif my_direction == 3 && enemy_direction == 3 && situation_number==1
        puts "ホイ！"
        puts "あなたの方向：左"
        puts "相手の方向：左"
        puts "勝ち！"   
        break 
    end
end