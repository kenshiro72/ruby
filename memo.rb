require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

while true
puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています
# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
    if memo_type == 1
        puts "ファイル名を入力して下さい。"
        file_name = gets.chomp
        puts "メモしたい内容を記入してください。"
        puts "完了したらCtrl+Dを押してください。"
        input_memo=$stdin.read
        memo = input_memo.chomp        
        CSV.open("#{file_name}.csv","w") do |content|
        content << ["#{memo}"]
        end
        puts "#{file_name}.csvを作成しました。"
        break
    elsif memo_type==2
        puts "編集したいファイル名を拡張子を除いて入力してください。"
        file_name = gets.chomp
        puts "メモしたい内容を記入してください。"
        puts "完了したらCtrl+Dを押してください。"
        input_memo=$stdin.read
        memo = input_memo.chomp  
        CSV.open("#{file_name}.csv","a") do |content|
        content << ["#{memo}"]
        end
        puts "#{file_name}.csvを編集しました。"
        break
    else
    puts "1または2を入力してください。 "
    end
end