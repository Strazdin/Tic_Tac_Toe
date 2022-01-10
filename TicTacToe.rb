#Tic-Tac-Toe
class TicTacToe
			@@victories1=0;@@victories2=0
		attr_accessor :name, :marker, :move
	def player01 name, marker, move
		@@name1=name
		@@marker1=marker
		@@move1=move
	end
	def player02 name, marker, move
		@@name2=name
		@@marker2=marker
		@@move2=move
	end
	def self.greeting#заставка
		90.times {puts " "}; File.readlines("greeting.txt").each{|line| puts "#{line}"};sleep 2; 2.times {puts " "}; @@zz = 0;@@seyva=0;@@perehod=0;@@zapret=0;@@lvl=0;@@errors=0
		print "                 Enter \"start\" to start the game \n                 Enter \"load\" to load the game \n                 Enter \"training\" for training \n: "
		a=gets.strip; send a if a =="start"; send a if a == "load";send a if a == "training"; exit if a == "exit"
	end
	def self.training#обучение. показать доску 3х3 и номера ячеек. Объяснить как ходить на определенную ячейку.
		90.times {puts " "};print"                 The game board has coordinates of numbers from 1 to 9\n";File.readlines("training.txt").each{|line| puts "\t\t\t#{line}"};print "\n"
		print "                 Enter \"next\" to next the training\n                 Enter \"menu\" to open the start menu\n: "
		traing=gets.strip
		if traing=="next"
			loop do
			90.times {puts " "};print "                 Enter a number from this range (1-9)\n";File.readlines("3x3.txt").each{|line| puts "\t\t\t\t#{line}"};print "\n: "
			number=gets.to_i
				if number>0 && number<10
					90.times {puts " "}
					board=[[],[],[],[],[],[],[],[],[],[]]
					x=0;randomark=rand(1..2)
					marker="o" if randomark == 1
					marker="*" if randomark == 2
					File.readlines("3x3.txt").each{|line| board[x]=line if x>0;x+=1};x=0
					if number==1
						board[3][3]=marker
					elsif number==2
						board[3][7]=marker
					elsif number==3
						board[3][11]=marker
					elsif number==4
						board[6][3]=marker
					elsif number==5
						board[6][7]=marker
					elsif number==6
						board[6][11]=marker
					elsif number==7
						board[9][3]=marker
					elsif number==8
						board[9][7]=marker
					else number==9
						board[9][11]=marker
					end
					xz=0;pz=0;cvb=""
					File.readlines("training.txt").each{|line| board.each {|i| cvb=i if pz == xz;xz+=1}; puts "\t\t#{cvb.rstrip}\t\t#{line.rstrip}" if pz>0 ;pz+=1;xz=0};print "\n"
					print "                 Excellent! Coordinate #{number} is marked - \"#{marker}\"\n                 Press \"enter\" to finish the tutorial\n: "
					traing=gets.strip
					break
				else

				end
			end
			TicTacToe.greeting
		else
			TicTacToe.greeting
		end
	end
	def self.start#выбираем игру против компьютера или игру с реальным игроком. Выбор крестика и нолика. #game_mode
		print "                 Who will be your appponent\n                 player / computer\n: "#1х1, 1хbot?
		$a=gets.strip#переход на "поле" с кодом
	end
	def self.select_level#ЕСЛИ ПРОТИВ КОМПЬЮТЕРА.Уровень сложности
		loop do
		print "                 Select level:\n                 1 - easy\n                 2 - medium\n                 3 - hard\n: "
		@@lvl=gets.strip.to_i
			if @@lvl>0 && @@lvl<=3
				@@level="easy" if @@lvl==1
				@@level="medium" if @@lvl==2
				@@level="hard" if @@lvl==3
				break
			else

			end
		end
	end
	def self.image_load
		@@movesplayer_1=[]#для записи ходов игрока_1
		@@movesplayer_2=[]#для записи ходов игрока_2
		@@metka=[]
		@@hody=0;@@xx=0
		@@number=0#ввод номера хода
		@@board=[[],[],[],[],[],[],[],[],[],[]]
		x=0
		if @@victories1 >= 1 || @@victories2 >= 1
							90.times {puts " "}
		puts "                 Show info";print "\n"
		print "Player_1:\n    Name:\t #{@@name1}\n    Marker:\t \"#{@@marker1}\"\n    Move:\t #{@@move1}\n"
		print "Player_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    Move:\t #{@@move2}\n"
		5.times {puts " "}
		end
		File.readlines("3x3.txt").each{|line| @@board[x]=line if x>0;x+=1}# | 1 | 2 | 3 |
		@@board.each {|i| puts i}
		@@x=1 if @@move1 =="first";
		@@x=2 if @@move2 =="first";
		TicTacToe.player_1 if $a=="player" || $a=="computer"
	end
	def self.show_info0
				90.times {puts " "}
		puts "                 Show info";print "\n"
		print "Player_1:\n    Name:\t #{@@name1}\n    Marker:\t \"#{@@marker1}\"\n    Move:\t #{@@move1}\n"
		print "Player_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    Move:\t #{@@move2}\n"
		5.times {puts " "}
		TicTacToe.image 
	end
		def self.show_info01
			if @@zz == 0
				90.times {puts " "}
			end
		puts "                 Show info";print "\n"
		print "Player_1:\n    Name:\t #{@@name1}\n    Marker:\t \"#{@@marker1}\"\n    Move:\t #{@@move1}\n"
		print "Player_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    Move:\t #{@@move2}\n"
		5.times {puts " "}
	end
	def self.image
		#hash = {'@@board[3][3]'=>1,'@@board[3][7]'=>2,'@@board[3][11]'=>3,'@@board[6][3]'=>4,'@@board[6][7]'=>5,'@@board[6][11]'=>6,'@@board[9][3]'=>7,'@@board[9][7]'=>8,'@@board[9][11]'=>9}
		#hash.each {|k,v| k = @@mark1 if @@number == v} if @@x==1
		#hash.each {|k,v| k = @@mark2 if @@number == v} if @@x==2
		if @@perehod==0
		if @@number==1		#h["a"] = 9
			@@board[3][3]=@@marker1 if @@x==1
			@@board[3][3]=@@marker2 if @@x==2
		elsif @@number==2
			@@board[3][7]=@@marker1 if @@x==1
			@@board[3][7]=@@marker2 if @@x==2
		elsif @@number==3
			@@board[3][11]=@@marker1 if @@x==1
			@@board[3][11]=@@marker2 if @@x==2
		elsif @@number==4
			@@board[6][3]=@@marker1 if @@x==1
			@@board[6][3]=@@marker2 if @@x==2
		elsif @@number==5
			@@board[6][7]=@@marker1 if @@x==1
			@@board[6][7]=@@marker2 if @@x==2
		elsif @@number==6
			@@board[6][11]=@@marker1 if @@x==1
			@@board[6][11]=@@marker2 if @@x==2
		elsif @@number==7
			@@board[9][3]=@@marker1 if @@x==1
			@@board[9][3]=@@marker2 if @@x==2
		elsif @@number==8
			@@board[9][7]=@@marker1 if @@x==1
			@@board[9][7]=@@marker2 if @@x==2
		else @@number==9
			@@board[9][11]=@@marker1 if @@x==1
			@@board[9][11]=@@marker2 if @@x==2
		end
	end
			puts "                 Jump back" if @@perehod==1
			print "\n"
			File.open("history.txt", "a+") {|history| history.puts("Player: #{@@name1}")} if @@x==1
			File.open("history.txt", "a+") {|history| history.puts("Player: #{@@name2}")} if @@x==2
			if @@perehod==0
				if @@x==1
					@@x=2
				else
					@@x=1
				end
			end
		File.open("history.txt", "a+") {|history| history.puts(@@board.each {|i| puts i})}
		TicTacToe.winner
	end
	def self.player_1
		if $a=="computer"
			if @@x==1

			end
			if @@x==2
				xxbot=0
				while xxbot==0
					@@number=rand(1..9).to_i
					if @@lvl==2
						xodbotwin=[]; xodbot=[]
						winu=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[7,5,3],[1,5,9]]
						winu.each_with_index do |comb,i|
							x=0;y=0
							comb.each_index do |n|
								x+=1 if @@movesplayer_2.include?(comb[n])#player_1
								y+=1 if @@movesplayer_1.include?(comb[n])
							end
							xodbotwin<<(comb-@@movesplayer_2) if x>=2
							xodbot<<(comb-@@movesplayer_1) if y>=2
						end
						xodbotwin = xodbotwin.flatten.uniq#player_1
						xodbot = xodbot.flatten.uniq##player_2
						loop do
							if @@movesplayer_2.include?(xodbot[0])
								xodbot.shift
							else
								unless xodbot.empty?
									@@number=xodbot[0] 
									break
								else
									break
								end
							end
						end
						loop do #удаляет ходы игрока до тех пор пока не найдет оригинальный и присваивает ход боту если его варианты ходов не были пусты. если пусты то не присваивает и проверяет свои ходы пока не найдет оригинальный и переприсвает ХОД бота (этот ход будет выигрышым) если варианты ходов не были пусти. если пусты выходит из цикла и остается ход рандомным
							if @@movesplayer_1.include?(xodbotwin[0])
								xodbotwin.shift
							else
								unless xodbotwin.empty?
									@@number=xodbotwin[0]
									break
								else
									break
								end
							end
						end
					end
					unless @@movesplayer_1.include?(@@number) || @@movesplayer_2.include?(@@number)#проверяет на сповпадения ходов рандома
						@@movesplayer_2<<@@number
							if @@zapret==0########cчет ходов
								if @@perehod==0
									@@xx+=1 if @@seyva==0;@@seyva=0
									if @@xx>=2
										@@xx=0;@@hody+=1
									end
								end
							end
						xxbot=1
						TicTacToe.show_info0
					else
						xxbot=0
					end
				end
			end
		end
		File.open("history.txt", "a+") {|history| history.puts(@@board.each {|i| i})} if @@xx==0 && @@hody==0#сохранение пустого поля
		if @@zapret==0
				if @@perehod==0
				@@xx+=1 if @@seyva==0;@@seyva=0
				if @@xx>=2
					@@xx=0;@@hody+=1
				end
			end
		end
		numbers=[1,2,3,4,5,6,7,8,9]
		3.times {puts " "}
				loop do
		print "#{@@name1}, Enter your move number 1-9\n: " if @@x==1
		print "#{@@name2}, Enter your move number 1-9\n: " if @@x==2
		@@number=gets.strip

			exit if @@number=="exit"#выход из игры
			if @@number=="save"#СОХРАНЕНИЕ
				loop do
				print "                 Enter file name to save\n                 \"exit\" - cancel\n: "
							nextgames=gets.strip
								break if nextgames=="exit"
								if File.file?("saves./#{nextgames}.txt")
									puts "                 The file \"#{nextgames}\" already exists. Overwrite?\n                 Y/N\n: "
									yesno=gets.strip.capitalize
										if yesno=="Y"
											File.delete("saves./#{nextgames}.txt") if File.file?("saves./#{nextgames}.txt")
											File.open("saves./#{nextgames}.txt","a+") {|history| history.puts("#{@@movesplayer_1}\n#{@@movesplayer_2}\n#{@@name1}\n#{@@marker1}\n#{@@move1}\n#{@@name2}\n#{@@marker2}\n#{@@move2}\n#{@@x}\n#{@@hody}\n#{@@xx}\n#{$a}\n#{@@lvl}")}
											File.open("saves./#{nextgames}.txt","a+") {|history| history.puts(File.readlines("history.txt", "a+").each { |line| "#{line}"})}
											print "                 \"#{nextgames}\" file saved successfully!\n                 Press \"enter\"/\"exit\"\n: "
											nextgames=gets.strip.upcase
											exit if nextgames == "EXIT"
											break
										else

										end
									else
											File.open("saves./#{nextgames}.txt","a+") {|history| history.puts("#{@@movesplayer_1}\n#{@@movesplayer_2}\n#{@@name1}\n#{@@marker1}\n#{@@move1}\n#{@@name2}\n#{@@marker2}\n#{@@move2}\n#{@@x}\n#{@@hody}\n#{@@xx}\n#{$a}\n#{@@lvl}")}
											File.open("saves./#{nextgames}.txt","a+") {|history| history.puts(File.readlines("history.txt", "a+").each { |line| "#{line}"})}
											print "                 \"#{nextgames}\" file saved successfully!\n                 Press \"enter\"/\"exit\"\n: "
											nextgames=gets.strip.upcase
											exit if nextgames == "EXIT"
											break
								end
							end
					else
						break
					end
				end
			@@number=@@number.to_i
			if @@number==0# && @@zapret==0
				if $a=="player"
					if @@x==1
						@@x=2
					else
						@@x=1
					end
				last=@@movesplayer_1.pop if @@x==1#удаляем последний элемент массива с ходами
				last=@@movesplayer_2.pop if @@x==2
				unless @@movesplayer_1.empty? == true && @@movesplayer_2.empty? == true
					if last==1
						@@board[3][3]=" " 
					elsif last==2
						@@board[3][7]=" "
					elsif last==3
							@@board[3][11]=" "
					elsif last==4
							@@board[6][3]=" "
					elsif last==5
							@@board[6][7]=" "
					elsif last==6
							@@board[6][11]=" "
					elsif last==7
							@@board[9][3]=" "
					elsif last==8
							@@board[9][7]=" "
					else last==9
							@@board[9][11]=" "
					end
					if @@xx==1
						@@xx=0
					else
						@@hody-=1
						@@xx=1
					end
					@@perehod=1;@@errors=0
					TicTacToe.show_info0
				else
					@@zapret=1#КОГДА ПОЛНОСТЬЮ ОЧИЩЕНЫ ХОДЫ
					puts "Eror"
					@@errors+=1
					exit if @@errors>1
					TicTacToe.player_1
				end
				else
					puts "You cannot go in computer mode"
					TicTacToe.player_1
				end
			end
		if numbers.include?(@@number)#чтобы игрок ввел только 1-9
			unless @@movesplayer_1.include?(@@number) || @@movesplayer_2.include?(@@number)##чтобы игрок_1 не ходил в одно и тоже место
				@@movesplayer_1<<@@number if @@x==1#Записали номер введеного хода в массив игрока 1,который хранит все номера ходов
				@@movesplayer_2<<@@number if @@x==2#Записали номер введеного хода в массив игрока 2,который хранит все номера ходов
				@@zapret=0
				@@perehod=0
				TicTacToe.show_info0
			else
			print "Error.Это место занято\n"
			TicTacToe.player_1
			end
		else
			print "Error\n"
			TicTacToe.player_1
		end
	end
	def self.winner#сравнение
		winu=[[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[7,5,3],[1,5,9]]#выигрышные комбинации
		winmassiveus=[nil]; winmassivebot=[nil]#массивы для сравнения ходов с выигрышными комбинациями
		winuss=0;winbott=0;#переменные для определения победителя и подсчета количества ходов
		winu.each do |limdex|
			if winu.include?(winmassiveus = limdex & @@movesplayer_1)
				winuss=1
			end
			#####сравнение выигрышных комбинаций с комбой компьютера/игрока_2
			if winu.include?(winmassivebot = limdex & @@movesplayer_2)
				winbott=1
			end
		end
		if (winbott==0 && winuss==0) && (@@hody>=4 && @@xx==1)
			90.times {puts " "};puts "\tNO WIN!"
			File.open("history.txt", "a+") {|history| history.puts("\tNO WIN")}
			@@board.each {|i| puts i}
			TicTacToe.show_info
		end
		if winuss == 1
			@@victories1+=1
			90.times {puts " "};puts "\t#{@@name1} WINNER!"
			File.open("history.txt", "a+") {|history| history.puts("\t#{@@name1} WINNER!")}
			@@board.each {|i| puts i}
			TicTacToe.show_info
		end
		if winbott == 1
			@@victories2+=1#считает кол-во побед
			90.times {puts " "};puts "\t#{@@name2} WINNER!"
			File.open("history.txt", "a+") {|history| history.puts("\t#{@@name2} WINNER!")}
			@@board.each {|i| puts i}
			TicTacToe.show_info
		else
			TicTacToe.player_1
		end
	end
	def self.show_info
		5.times {puts " "}
		puts "                 Show info";print "\n"
		print "Player_1:\n    Name:\t #{@@name1}\n    Marker:\t \"#{@@marker1}\"\n    victories:\t #{@@victories1}\n"
		print "Player_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    victories:\t #{@@victories2}\n" if $a=="player"
		print "Player_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    victories:\t #{@@victories2}\n    Lvl:\t #{@@level}\n" if $a=="computer"
		@@movesplayer_1=0;@@movesplayer_2=0;sleep 3
		File.open("history.txt", "a+") {|history| history.puts("\n                 Info\nPlayer_1:\n    Name:\t #{@@name1}\n    Marker:\t \"#{@@marker1}\"\n    Move:\t #{@@move1}\nPlayer_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    Move:\t #{@@move2}\n")} if $a=="player"
				File.open("history.txt", "a+") {|history| history.puts("\n                 Info\nPlayer_1:\n    Name:\t #{@@name1}\n    Marker:\t \"#{@@marker1}\"\n    Move:\t #{@@move1}\nPlayer_2:\n    Name:\t #{@@name2}\n    Marker:\t \"#{@@marker2}\"\n    Move:\t #{@@move2}\n    Lvl:\t #{@@level}\n")} if $a=="computer"
		5.times {puts " "}
		loop do
			print "                 Start the next game or show story?\n                 Y/N/story\n: "
			@@nextgame = gets.strip.capitalize
				if @@nextgame=="Story"
					File.readlines("history.txt", "a+").each { |line| puts "#{line}"};3.times {puts " "}#показывать историю
					print "                 save history?\n                 Y/N\n: "
					nextgames=gets.strip.capitalize
						if nextgames == "Y"
							print "                 Enter file name:\n "
							nextgames=gets.strip
							File.open("store./#{nextgames}.txt","a+") {|history| history.puts(File.readlines("history.txt", "a+").each { |line| "#{line}"})}
							print "                 \"#{nextgames}\" file saved successfully!\n                 Press \"enter\"\n: "
							nextgames=gets.strip
						end
				else
					break
				end
			end
		File.delete("history.txt")
		if @@nextgame=="Y"
			print "                 Поменяться правом первого хода?\n                 Y/N\n: "
			nextgame = gets.strip.capitalize
			if nextgame=="Y"
				if @@move1 == "second"
					@@move2 = "second"
					@@move1 = "first"
				else
					@@move2 = "first"
					@@move1 = "second"
				end
			90.times {puts " "}
			TicTacToe.image_load
			else
			90.times {puts " "}
			TicTacToe.image_load
		end
		else
			exit
		end
	end
	def self.load
		loop do
			@@zz=0
		print "                 Enter file name to upload:\n"
			xs=[]
			xxx=Dir.entries("saves./")
			xxx.each_with_index do |d| 
 				if d.include?(".txt")
 					xs<<d.chars.slice(0..d.chars.size-5).join("")
				end
			end
		print "                 #{xs}\n: "
		nextgames=gets.strip
			if File.file?("saves./#{nextgames}.txt")
				z=0;@@mas=[]; @@movesplayer_1=[]; @@movesplayer_2=[]
				File.readlines("saves./#{nextgames}.txt").each {|line| @@mas<<line if z<13;z+=1}#считывает переменные
				z=0
				numbers=[1,2,3,4,5,6,7,8,9]
				@@name1=@@mas[2].strip; @@marker1=@@mas[3].strip; @@move1=@@mas[4].strip; @@name2=@@mas[5].strip; @@marker2=@@mas[6].strip; @@move2=@@mas[7].strip; @@x=@@mas[8].strip;@@hody=@@mas[9].strip;@@xx=@@mas[10].strip;$a=@@mas[11].strip;@@lvl=@@mas[12].strip
				@@mas[0].each_char do |s|
					if numbers.include?(s.strip.to_i)
						@@movesplayer_1<<s.to_i
					end
				end
				@@mas[1].each_char do |s|
					if numbers.include?(s.strip.to_i)
						@@movesplayer_2<<s.to_i
					end
				end 
				@@x=@@x.to_i;@@hody=@@hody.to_i;@@xx=@@xx.to_i;@@lvl=@@lvl.to_i
				@@metka=[]
				@@level="easy" if @@lvl==1
				@@level="medium" if @@lvl==2
				@@level="hard" if @@lvl==3
				@@number=0#ввод номера хода
				@@board=[[],[],[],[],[],[],[],[],[],[]]
				x=0
				@@zz=1
				2.times {puts " "}
				File.readlines("saves./#{nextgames}.txt").each {|line| puts "#{line}" if z>12;z+=1}#считывает все ходы
				z=0
				File.open("history.txt", "a+") {|history| history.puts(File.readlines("saves./#{nextgames}.txt").each {|line| "#{line}" if z>12;z+=1})}#записывает все ходы в историю
				z=0
				2.times {puts " "}; TicTacToe.show_info01
				File.readlines("saves./#{nextgames}.txt").each {|line| z+=1}#12
				z1=z-12;
				x=0;z=0
				File.readlines("saves./#{nextgames}.txt").each {|line| @@board[x]=line if x>0 ;x+=1 if z>z1; z+=1}#считывает последний ход
				puts "Player: #{@@name1}" if @@x==1
				puts "Player: #{@@name2}" if @@x==2
				@@board.each {|i| puts i}
				z1=0;z=0;x=0;@@seyva=1
				break
			else
				print "                 File not found\n                 Would you like to try again?\n                 Y/N\n: "
				nextgames=gets.strip.capitalize
				if nextgames=="Y"
					90.times {puts " "}
				else
					break
				end
			end
		end
		if @@zz==0
			TicTacToe.greeting
		elsif @@zz==1
		TicTacToe.player_1
	else
		TicTacToe.greeting
	end
	end
end
#=====================================================================================================
File.delete("history.txt") if File.file?("history.txt")
TicTacToe.greeting
		if $a=="player" || $a=="computer"
			print "                 Player_1 Enter your name\n: "if $a=="player"
			print "                 Enter your name\n: "if $a=="computer"
			name = gets.to_s.strip.capitalize#имя игрока_1
			print "                 #{name}, your marker cross or zero or random?\n                 cross/zero/random\n: "
			marker = gets.to_s.strip
			random = rand(1..2) if marker == "random" || marker == "r"
			marker = "cross" if random == 1
			marker = "zero" if random == 2
			marker = "*" if marker == "cross" || marker == "c"
			marker = "o" if marker == "zero" || marker == "z" #*/o
			print "                 Will your move be the first/second/random?\n                 first/second/random\n: "
			move = gets.to_s.strip
			move = "first" if move == "f"
			move = "second" if move == "s"
			random=0
			random = rand(1..2) if move == "random" || move == "r"
			move = "first" if random == 1 
			move = "second" if random == 2#чей ход первый
			player1 = TicTacToe.new 
			player1.player01 name,marker,move
			if $a=="player"
				print "Player_2 Enter your name\n: "
				name = gets.to_s.strip.capitalize#имя игрока_2
				if marker == "o"
					marker = "*"
				else
					marker = "o"
				end
				if move == "second"
					move = "first"
				else
					move = "second"
				end
			player2 = TicTacToe.new
			player2.player02 name,marker,move
			90.times {puts " "} if $a=="player"
			end
			if $a=="computer"
				name="Computer"
				if marker == "o"
					marker = "*"
				else
					marker = "o"
				end
				if move == "second"
					move = "first"
				else
					move = "second"
				end
				player2 = TicTacToe.new
				player2.player02 name,marker,move
				#90.times {puts " "}
			end
		end
TicTacToe.select_level if $a=="computer"
TicTacToe.show_info01 if $a=="player"
TicTacToe.image_load





