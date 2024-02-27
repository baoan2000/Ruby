def show_table(a)
  table = " #{a[0]} | #{a[1]} | #{a[2]} \n"+"-----------\n"+" #{a[3]} | #{a[4]} | #{a[5]} \n"+"-----------\n"+" #{a[6]} | #{a[7]} | #{a[8]} "
  return table
end

$a=[" "," "," "," "," "," "," "," "," "]
win_row = [
  [1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]
          ]
win_x =[]
win_o =[]
puts show_table($a)
$finish=false
usera=true
def check_win(win,win_row)
  win_check=false
  for i in 0..win_row.length-1
    count_win=0
    for j in 0..win_row[i].length-1
      if win.include?(win_row[i][j])==true
        count_win+=1
      end
    end
    if count_win==3
      win_check=true
      break
    end
  end
  return win_check
end
def process_win(user,word_input,user_input,win,win_row)
  $a[user_input.to_i-1]=word_input
  puts show_table($a)
  if win.length>=3
    if check_win(win,win_row)==true
      $finish=true
      puts " Winer is "+user
    end
  end
end

while $finish==false
  if usera
      puts "User A"
  else puts "User B"
  end
  puts "Key in from 1 to 9"
  user_input = gets.chomp
  duplicate=false
  if (win_o.include?(user_input.to_i)) ||(win_x.include?(user_input.to_i))
    puts "Duplicated"
    duplicate=true
  end
  if user_input.to_i>=1 and user_input.to_i<=9 and !duplicate
    if usera
      win_x.push(user_input.to_i)
      process_win("user A","X",user_input,win_x,win_row)

    else
      win_o.push(user_input.to_i)
      process_win("user B","O",user_input,win_o,win_row)
    end
    usera=!usera
  else puts "Please Key in again"
  end
end

