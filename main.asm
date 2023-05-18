section .data
welcome db "Welcome to True False Game",10 ;Welcome message
welcomeLen equ $-welcome ;Calculate the length of the message

trueguide db "You have to type 'T' if your guess is True ",10 ; message for game instructions
trueguideLen equ $-trueguide ;Calculate the length of the message

falseguide db "You have to type 'F' if your guess is False ",10 ; message for game instructions
falseguideLen equ $-falseguide ;Calculate the length of the message

lifeinfo db "Each player has only 3 lifes",10 ; message for life available
lifeinfolen equ $-lifeinfo;Calculate the length of the message


correctmsg db "Player 1 : You guess correctly.", 10 ;Message that player 1 guess is correct
correctmsglen equ $-correctmsg ;Calculate the length of the message

correctmsg2 db "Player 2 : You guess correctly.", 10 ;Message that player  guess is correct
correctmsg2len equ $-correctmsg2 ;Calculate the length of the message


wrongmsg db "Player 1 :Your guess is incorrect.", 10 ;Message that player 1  guess is incorrect
wrongmsglen equ $-wrongmsg ;Calculate the length of the message

wrongmsg2 db "Player 2 :Your guess is incorrect.", 10 ;Message that player 2 guess is incorrect
wrongmsg2len equ $-wrongmsg2 ;Calculate the length of the message


bothcmsg db "BOTH OF YOU ARE CORRECT" ; message if both are correct
bothcmsglen equ $-bothcmsg ;Calculate the length of the message

bothwmsg db "BOTH OF YOU ARE WRONG" ; message if both are wrong
bothwmsglen equ $-bothwmsg;Calculate the length of the message

player1scores db "Player 1 Your score is : "; Message to present player 1 score value
player1scoreslen equ $-player1scores;Calculate the length of the message

player2scores db "Player 2 Your score is : "; Message to present player 2 score value
player2scoreslen equ $-player2scores ;Calculate the length of the message


p1life db "Player 1 Life left : " ;message to show player 1 life
p1lifelen equ $-p1life;Calculate the length of the message

p2life db " Player 2 life left :";message to show player 2 life
p2lifelen equ $-p2life;Calculate the length of the message

player1msg db "Player 1 : " ;message for player 1 input
player1msglen  equ $-player1msg ;Calculate the length of the message

player2msg db "Player 2 : ";message for player 2 input
player2msglen equ $-player2msg ;Calculate the length of the message

p1finish db "PLAYER 1 YOU HAVE NO LIFES LEFT ,PLAYER 2 YOU WON", ;player 1 win message
p1finishlen equ $-p1finish ;Calculate the length of the message

p2finish db "PLAYER 2 YOU HAVE NO LIFES LEFT ,PLAYER 1 YOU WON",10 ; player 2 win message
p2finishlen equ $-p2finish ;Calculate the length of the message

bothlostmsg db "BOTH OF YOU HAVE ZERO LIFES LEFT , GAME DRAW ",10 ; draw message
bothlostmsglen equ $-bothlostmsg ;Calculate the length of the message

continuemsg db "DO YOU WANT TO CONTINUE ? ",10; message to ask if player want to continue
continuemsglen equ $-continuemsg ;Calculate the length of the message

continueoption db "TYPE 'Y' TO CONTINUE PLAYING ELSE TYPE 'N' ",10 ; message to ask for continue
continueoptionlen equ $-continueoption ;Calculate the length of the message

uppercasemessage db "YOU HAVE TO GIVE INPUT IN CAPITAL (UPPERCASE) AND ONLY ONE LETTER " ,10
uppercasemessagelen equ $-uppercasemessage 

fivecorrectp1msg db "CONGRATULATIONS PLAYER 1 YOU ANSWERED 5 QUESTIONS CORRECT IN A ROW , YOU WON A PRIZE"
fivecorrectp1msglen equ $- fivecorrectp1msg

fivecorrectp2msg db "CONGRATULATIONS PLAYER 2 YOU ANSWERED 5 QUESTIONS CORRECT IN A ROW , YOU WON A PRIZE "
fivecorrectp2msglen equ $- fivecorrectp2msg
 
outofmsg db "  out of   "
outofmsglen equ $-outofmsg



score1value db 0 ; score for player 1 initialized at 0
score2value db 0 ; score for player 2 initialized at 0

player1life db 3 ; life for player 1 initialized at 3
player2life db 3 ; life for player 2 initialized at 3

player1finish db 0 ; end life for player 1 initialized at 0
player2finish db 0 ; end life for player 2 initialized at 0

questioncountervalue db 0 ; counting question initialized at 0
questioncountervalue1 db 0 ; counting question initialized at 0

player1correctcount db 0
player2correctcount db 0

cr db 10 ; for creating a new line


; QUESTIONS

question1 db "The human brain is the most powerful computer in the world."
question1len equ $-question1

question2 db "The most popular operating system in the world is Linux."
question2len equ $-question2

question3 db "The longest river in the world is the Nile River."
question3len equ $-question3

question4 db "The King of the United Kingdom is also the head of state of 15 other countries."
question4len equ $-question4

question5 db "The first human to walk on the moon was Neil Armstrong, who landed on the moon on July 20, 1969."
question5len equ $-question5

question6 db "The average person has 30 senses."
question6len equ $-question6

question7 db "The sky is blue because of the way sunlight interacts with the atmosphere."
question7len equ $-question7

question8 db "The capital of the United States is New York City."
question8len equ $-question8

question9 db "The operating system provides a user interface, which allows users to interact with the computer. "
question9len equ $-question9

question10 db "The capital of Canada is Toronto. "
question10len equ $-question10

question11 db "The operating system is the most important program on a computer."
question11len equ $-question11

question12 db "The Great Wall of China is visible from space."
question12len equ $-question12

question13 db "The Eiffel Tower is the tallest building in the world."
question13len equ $-question13

question14 db "The human heart beats about 100,000 times per day."
question14len equ $-question14

question15 db "The operating system is responsible for managing memory."
question15len equ $-question15



global listquestions
listquestions:
dq question1
dq question2
dq question3
dq question4
dq question5
dq question6
dq question7
dq question8
dq question9
dq question10
dq question11
dq question12
dq question13
dq question14
dq question15;the pointer to the quotes are stored in 8 bytes






listquestionslen:    
  dq question1len
  dq question2len
  dq question3len
  dq question4len
  dq question5len
  dq question6len
  dq question7len
  dq question8len
  dq question9len
  dq question10len
  dq question11len
  dq question12len
  dq question13len
  dq question14len
  dq question15len; the pointer to the quote lengths are stored in 8 bytes
 


;ARRAY FOR ANSWERS
global listanswers
listanswers:    
  dq 'T' 
  dq 'F'
  dq 'T'
  dq 'T'
  dq 'T'
  dq 'F'
  dq 'T'
  dq 'F'
  dq 'T'
  dq 'F'; the pointer to the quote lengths are stored in 8 bytes
  dq 'T'
  dq 'F'
  dq 'F'
  dq 'T'
  dq 'T'
  
  




letter:
dq 0 ; where we store each of the answers one at a time





section .bss
guess1 resq 1 ; variable to store the player 1  guess
guess2 resq 1 ; variable to store the player 2 guess

clean resq 1 ; variable to store keyboard buffer

score1 resb 1 ; variable to store player 1 score index
score2 resb 1 ; variable to store player 2 score index

life1 resb 1 ; variable to store player 1 life index
life2 resb 1 ; variable to store player 2 life index
askcontinue resb 1 ; variable to store keyboard buffer after asking to continue

questioncounter resb 1 ; variable to store no of question
questioncounter1 resb 1 ; variable to store no of question

p1correct resb 1
p2correct resb 1


section .text
 global _start   ;must be declared for linker (ld)
_start:	
call displayWelcome ;call welcome message
call newLine
call displayguidefortrue ; call intro 
call displayguideforfalse ; call intro
call newLine
call lifeguide  ; function to tell about lifes
call newLine
call capitalinfo ; uppercase input only guide
call newLine
mov  rax,15  ;number of questions and so possible answers
mov  rbx,0      ;RBX will store the answers currently being guessed
mov  rcx,listanswers
mov r8, listquestions ; point to first quote
Mov r9, listquestionslen ; point to the length of first quote  
mov byte [player1life],3
mov byte [player2life],3


;Main function that calls other functions
mainloop:  
  mov  rbx, [rcx] ; put the current letter being guessed in rbx
  mov [letter],rbx ; move rbx into a variable letter that stores the current correct answer
  push rax ; push rax on stack
  push rcx ; push rax on stack
  call newLine
  call displayquestions ; call subroutine to display the question
  call newLine
  call player1input ; call subroutine to get the users guess and compare the guess with t
  call player2input; new line like endl in C++
  call bothfunction ; call to check if both player answers are same 
  call newLine
  call player1index ; call player 1 score index
  call questioncounterfunction;
  call newLine
  call player2index  ; call player 2 score index
  call questioncounterfunction1
  call newLine
  call newLine
  call player1lifeindex ; call player 1 life index
  call player2lifeindex ; call player 2 life index
  call newLine
  call continue ; call function to ask player if they want to continue
  pop rcx ; get back from stack
  pop rax ; get back from stack
  add  r8,8     ;move pointer to next questions.  As 8 bits for each questiobs move on by 8
  add r9,8
  add rcx,8
  dec  rax
  cmp rax,0       ;compare if rax equals 0
  jne mainloop         ;if not 0, then continue looping
  mov rax, 15      ;reset the counter to 15 for questions
  mov rcx, listanswers  ;reset the answer pointer to the beginning
  mov r8, listquestions  ;reset the question pointer to the beginning
  mov r9, listquestionslen  ;reset the question length pointer to the beginning        ;restart the loop from the beginning        ;decrement counter by one so going down 
  jmp  mainloop       ;if counter not 0, then loop again
  call done ; call subroutine to end program


  
  





 ;function to read the player 1 guess and do comparison with the answer
 player1input:
  call playermessage ; player 1 input message
  mov eax, 3 ; read from keyboard
  mov ebx, 2;  stdin
  mov ecx, guess1 ; move player 1  guess into ecx
  mov edx, 1 ;  As single letter using 1 byte
  int 80h	; invoke the kernel to get the player 1 guess
  mov eax, 3 ; read to clear the keyboard buffer
  mov ebx, 2 ;  stdin
  mov ecx, clean ; Clear the key press from the user input so it does not messy up loop
  mov edx, 1 ;  As single character using 1 byte
  int 80h 
  ret ; return to the main section
  
  
  player2input: ; function to get player 2 input 
  call player2message
  mov eax, 3 ; read from keyboard
  mov ebx, 2;  stdin
  mov ecx, guess2 ; move user guess into ecx
  mov edx, 1 ;  As single letter using 1 byte
  int 80h	; invoke the kernel to get the user's guess
  mov eax, 3 ; read to clear the keyboard buffer
  mov ebx, 2 ;  stdin
  mov ecx, clean ; Clear the key press from the user input so it does not messy up loop
  mov edx, 1 ;  As single character using 1 byte
  int 80h	
  ; if the guess is incorrect then go to Notsame function
  call newLine
  

  ret ; return to the main section
  
  ;Function to compare player 1 answer
  compareanswers:
  mov  rax, [guess1] ; move player 1 guess by user into rax
  cmp  rax, [letter]  ; compare correct answer with what in rax
  je   same ; if guess was correct jump to same function
  call Notsame ; if the guess is incorrect then go to Notsame function
  jmp compareanswers2
  ret
  
  ;Function to compare player 2 answers
  compareanswers2:
  mov   rdx, [guess2] ; move guess2 by player2  into rax
  cmp   rdx, [letter]  ; compare correct answer with what in rax
  je   same2 ; if guess2 was correct jump to same function
  call Notsame2
  ret
  
  
  ;Function to check if users have same guess
  bothfunction:
  mov rax,[guess1]
  cmp rax,[guess2] ; compare player 1 and player 2 guess
  je comparetf ; if same then call comparetf function
  call compareanswers
  ret
  
  ;Function if users guess are same to check if true or false
  comparetf:
  mov  rax, [guess1] ; move guess by player1  into rax
  cmp  rax, [letter]  ; compare correct answer with what in rax
  je   bothcorrect ; if guess was correct jump to bothcorrect function
  call bothwrong ; if the guess is incorrect then go to bothwrong function
  ret
  
  ;Function to print message if both correct
  bothcorrect:
 mov   ecx,bothcmsg ; both correct message
  mov   edx, bothcmsglen ; length of both correct message
  mov   ebx,1	;file descriptor (stdout)
  mov   eax,4	;system call number (sys_write)
  int 80h ; invoke the kernel to display message
  
  
  ; increment both player score
  inc byte [score1value] ; increment the value in the variable
  mov eax, [score1value] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [score1], eax
  
  ;increment player 1 correct count to see how many answers they give correctly in row
  inc byte [player1correctcount] ; increment the value in the variable
  mov eax, [player1correctcount] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [p1correct], eax
  
  
  inc byte [score2value] ; increment the value in the variable
  mov eax, [score2value] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [score2], eax
  
  ;increment player 2 correct count to see how many answers they give correctly in row
  
   
  inc byte [player2correctcount] ; increment the value in the variable
  mov eax, [player2correctcount] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [p2correct], eax
  call newLine
  call checkprizefunction ; function to check if 5 correct answers in row
 
  
   ret ; return to main function
 
 bothwrong:
 mov   ecx,bothwmsg ; Not same message
  mov   edx, bothwmsglen ; length of same message
  mov   ebx,1	;file descriptor (stdout)
  mov   eax,4	;system call number (sys_write)
  int 80h ; invoke the kernel to display message

   ; decrement each player life if both wrong
  dec byte [player1life] ; decrement the value in the variable
  mov eax, [player1life] ;  move the decValue variable in eax
  add eax, 48 
  mov [life1] , eax
  
  dec byte [player2life] ; decrement the value in the variable
  mov eax, [player2life] ;  move the decValue variable in eax
  add eax, 48 
  mov [life2], eax
  
  ;making both player correct count in a row to 0 if wrong answer given by multiplying by 0
  mov eax,'0' ; put ASCII value 0 into eax register
   sub  eax, '0' ; subtract '0' from eax to create an integer
  mov ecx,[player1correctcount]
   sub  ecx, '0' ;  subtract '0' from eax to create an integer
   mul  ecx; mutliply the integers in eax and ecx and put the outcome in eax
   add	eax, '0' ; convert the result in eax to an ASCII representation of the integer
   mov 	[p1correct], eax ; move the ASCII representation of the integer into a variable p1correct
  
  mov eax,'0' ; put ASCII value 0 into eax register
   sub  eax, '0' ; subtract '0' from eax to create an integer
  mov ecx,[player2correctcount]
   sub  ecx, '0' ;  subtract '0' from eax to create an integer
   mul  ecx; mutliply the integers in eax and ecx and put the outcome in eax
   add	eax, '0' ; convert the result in eax to an ASCII representation of the integer
   mov 	[p2correct], eax ; move the ASCII representation of the integer into p2correct

ret
 
 
  
  
  
    
  

; function to show message that answer was not correct answer
 Notsame:
  mov   ecx,wrongmsg ; Not same message
  mov   edx, wrongmsglen ; length of same message
  mov   ebx,1	;file descriptor (stdout)
  mov   eax,4	;system call number (sys_write)
  int 80h ; invoke the kernel to display message
  
   dec byte [player1life] ; decrement the value in the variable
  mov eax, [player1life] ;  move the decValue variable in eax
  add eax, 48 
  mov [life1] , eax
  
  ;making player 1 correct in a row to 0 
  mov eax,'0' ; put ASCII value 0 into eax register
   sub  eax, '0' ; subtract '0' from eax to create an integer
  mov ecx,[player1correctcount]
   sub  ecx, '0' ;  subtract '0' from eax to create an integer
   mul  ecx; mutliply the integers in eax and ecx and put the outcome in eax
   add	eax, '0' ; convert the result in eax to an ASCII representation of the integer
   mov 	[p1correct], eax ; move the ASCII representation of the integer into a variable p1correct
   
  
   ret ; return to main code
    

; function to show message answer was correct
same:
  mov   ecx,correctmsg ; same message
  mov   edx, correctmsglen ; length of same message
  mov   ebx,1	;file descriptor (stdout)
  mov   eax,4	;system call number (sys_write)
  int 80h ; invoke the kernel to display message
  inc byte [score1value] ; increment the value in the variable
  mov eax, [score1value] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [score1], eax 
  
  ;increasing player 1 correct in a row
  inc byte [player1correctcount] ; increment the value in the variable
  mov eax, [player1correctcount] ;move the incValue variable in eax
  
  
  add eax, 48 ; convert the integer into ascii value to print
  mov [p1correct], eax
  call newLine
  call checkprizefunction
  
  call compareanswers2
   ret ; return to main code


; function to show message answer was correct
same2:
  mov   ecx,correctmsg2 ; same message
  mov   edx, correctmsg2len ; length of same message
  mov   ebx,1	;file descriptor (stdout)
  mov   eax,4	;system call number (sys_write)
  int 80h ; invoke the kernel to display message
  inc byte [score2value] ; increment the value in the variable
  mov eax, [score2value] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [score2], eax 
  
  inc byte [player2correctcount] ; increment the value in the variable
  mov eax, [player2correctcount] ;move the incValue variable in eax
  
  
  add eax, 48 ; convert the integer into ascii value to print
  mov [p2correct], eax
  call newLine
  call checkprizefunction
  ret ; return to main code
   
   
Notsame2:
  mov   ecx,wrongmsg2 ; same message
  mov   edx, wrongmsg2len ; length of same message
  mov   ebx,1	;file descriptor (stdout)
  mov   eax,4	;system call number (sys_write)
  int 80h ; invoke the kernel to display message
  
  
  dec byte [player2life] ; decrement the value in the variable
  mov eax, [player2life] ;  move the decValue variable in eax
  add eax, 48 
  mov [life2], eax
  
  ;making player 2 correct count in a row to 0 
  mov eax,'0' ; put ASCII value 0 into eax register
  sub  eax, '0' ; subtract '0' from eax to create an integer
  mov ecx,[player2correctcount]
   sub  ecx, '0' ;  subtract '0' from eax to create an integer
   mul  ecx; mutliply the integers in eax and ecx and put the outcome in eax
   add	eax, '0' ; convert the result in eax to an ASCII representation of the integer
   mov 	[p2correct], eax ; move the ASCII representation of the integer into a variable p2correct


   ret ; return to main code




;Function for player 1 score index
player1index:

  mov edx,player1scoreslen
  mov ecx,player1scores
  mov ebx,1
  mov eax,4
  int 80h
  
  mov eax, [score1value] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [score1], eax 
  
  mov eax, 4 ; system call the screen
  mov ebx, 1 ; standard out
  mov ecx,  score1; print value 
  mov edx, 1; One byte is size
  int  80h ; interrupt
  
  mov edx , outofmsglen
  mov ecx,outofmsg
  mov ebx,1
  mov eax,4
  int 80h
   
  ret
 
;Function for player 2 score index 
player2index:

  mov edx,player2scoreslen
  mov ecx,player2scores
  mov ebx,1
  mov eax,4
  int 80h
  
  mov eax, [score2value] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [score2], eax 
  
  
  mov eax, 4 ; system call the screen
  mov ebx, 1 ; standard out
  mov ecx,  score2; print value 
  mov edx, 1; One byte is size
  int  80h ; interrupt
  
  
  mov edx , outofmsglen
  mov ecx,outofmsg
  mov ebx,1
  mov eax,4
  int 80h

  ret

checkprizefunction:
cmp byte [p1correct] , '5'
je prize1
cmp byte [p2correct] , '5'
je prize2
ret
 

 
;function for player 1 life
player1lifeindex:
cmp byte [player1life], 0 ; check if player 1's life has become 0
jz player1done 
cmp byte [player2life], 0 ; check if player 1's life has become 0
jz player2done 


mov eax, [player1life] ;move the incValue variable in eax
add eax, 48 ; convert the integer into ascii value to print
mov [life1], eax 
mov edx,p1lifelen
mov ecx,p1life
mov ebx,1
mov eax,4
int 80h

mov eax,4
mov ebx,1
mov ecx , life1
mov edx,1
int 80h

call newLine





ret



;function for player 2 life
player2lifeindex:

cmp byte [player2life], 0 ; check if player 1's life has become 0
jz player2done ;
cmp byte [player1life], 0 ; check if player 1's life has become 0
jz player1done ;
mov eax, [player2life] ;move the incValue variable in eax
add eax, 48 ; convert the integer into ascii value to print
mov [life2], eax 
mov edx,p2lifelen
mov ecx,p2life
mov ebx,1
mov eax,4
int 80h

mov eax,4
mov ebx,1
mov ecx , life2
mov edx,1
int 80h
call newLine

ret
  
  
  
  ;function to display questions
displayquestions:
mov  edx, [r9] ;message length content of register r9
mov  ecx, [r8] ;message to write content of register r8
mov  ebx, 1     ;file descriptor (stdout)
mov  eax, 4     ;system call number (sys_write)
int  0x80       ;invoke the kernel to display the quote
ret ; return to previous position in code 



;Function to display welcome  message
displayWelcome:
   mov  edx,welcomeLen      ;message length
   mov  ecx, welcome   ;message to write
   mov  ebx, 1     ;file descriptor (stdout)
   mov  eax, 4     ;system call number (sys_write)
   int  0x80       ;invoke the kernel to print the message
   ret ; return to the main section
   
   
;Function to display guide for true
displayguidefortrue:
   mov  edx,trueguideLen     ;message length
   mov  ecx, trueguide   ;message to write
   mov  ebx, 1     ;file descriptor (stdout)
   mov  eax, 4     ;system call number (sys_write)
   int  0x80       ;invoke the kernel to print the message
   ret ; return to the main section
   
   
   ;Function to display guide for false
displayguideforfalse:
   mov  edx,falseguideLen      ;message length
   mov  ecx, falseguide   ;message to write
   mov  ebx, 1     ;file descriptor (stdout)
   mov  eax, 4     ;system call number (sys_write)
   int  0x80       ;invoke the kernel to print the message
   ret ; return to the main section
   
   ; Function to create a New line like endl in C++
 newLine:
  mov eax,4 	; Put 4 in eax register into which is system 
               ;call for write (sys_write)	
  mov ebx,1 	; Put 1 in ebx register which is the standard 
			; output to the screen 
  mov ecx, cr	; Put the newline value into ecx register
  mov edx, 1	; Put the length of the newline value into edx 
			; register
  int 80h 	; Call the kernel with interrupt to check the 
			; registers and perform the action of moving to 
			; the next line like endl in c++
   ret	; return to previous position in code 

;player 1 input message function
playermessage:
mov edx , player1msglen
mov ecx , player1msg
mov ebx,1
mov eax,4
int  0x80
ret
  
;player 2 input message function 
player2message:
mov edx,player2msglen
mov ecx ,player2msg
mov ebx,1
mov eax , 4
int 0x80
ret

;PLAYER 2 WIN MESSAGE  
player1done:
cmp byte [player2life],0
je gameover
mov  edx,p1finishlen
mov ecx,p1finish
mov ebx,1
mov eax,4
int 80h
call newLine
call done 


;PLAYER 1 WIN MESSAGE 
player2done:
cmp byte [player1life],0
je gameover
mov  edx,p2finishlen
mov ecx,p2finish
mov ebx,1
mov eax,4
int 80h
call newLine
 
call done 

;GAME OVER DRAW FUNCTION
gameover:
mov   ecx,bothlostmsg ; draw message
mov   edx, bothlostmsglen ; length of draw messagr
mov   ebx,1 ;file descriptor (stdout)
mov   eax,4 ;system call number (sys_write)
int 80h ; invoke the kernel to display message
call newLine
call done ; end program

  
;FUNCTION FOR GETTING INPUT AND ASKING FOR CONTINUING GAME OR NOT
continue:
mov edx,continuemsglen
mov ecx,continuemsg
mov ebx,1
mov eax,4
int 80h

call newLine

mov edx,continueoptionlen
mov ecx ,continueoption
mov ebx,1
mov eax , 4
Int 80h

call newLine

mov eax, 3 ; read from keyboard
mov ebx, 2;  stdin
mov ecx, askcontinue ; move user input into ecx
mov edx, 1 ;  As single letter using 1 byte
int 80h	; invoke the kernel to get the user's input
  
    
cmp   byte [askcontinue], 'N'  ; compare input with 'N'
je    done ; if input is equal to N  jump to done function
  
mov eax, 3 ; read to clear the keyboard buffer
mov ebx, 2 ;  stdin
mov ecx, askcontinue ; Clear the key press from the user input so it does not messy up loop
mov edx, 1 ;  As single character using 1 byte
int 80h	; invoke the kernel to take the enter key press to clear the keyboard buffer ; return to main code

ret ; return to the main section


;INTRO FUNCTION FOR TELLING ABOUT LIFES AVAILABLE  
lifeguide: 
mov edx,lifeinfolen
mov ecx,lifeinfo
mov ebx,1
mov eax,4
int 80h
ret

;function to give input in uppercase only 
capitalinfo:
mov edx , uppercasemessagelen
mov ecx , uppercasemessage
mov ebx,1
mov eax,4
int 80h
ret

;function to count questions that are given to player
questioncounterfunction:
inc byte [questioncountervalue] ; increment the value in the variable
  mov eax, [questioncountervalue] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [questioncounter], eax
  mov eax, 4 ; system call the screen
  mov ebx, 1 ; standard out
  mov ecx,  questioncounter; print value 
  mov edx, 1; One byte is size
  int  80h ; interrupt
  ret

questioncounterfunction1:
inc byte [questioncountervalue1] ; increment the value in the variable
  mov eax, [questioncountervalue1] ;move the incValue variable in eax
  add eax, 48 ; convert the integer into ascii value to print
  mov [questioncounter1], eax
  mov eax, 4 ; system call the screen
  mov ebx, 1 ; standard out
  mov ecx,  questioncounter1; print value 
  mov edx, 1; One byte is size
  int  80h ; interrupt
  ret
  
;function for five correct answers in row 
prize1:
mov edx,fivecorrectp1msglen
mov ecx,fivecorrectp1msg
mov ebx,1
mov eax,4
int 80h
call newLine
ret

prize2:
mov edx,fivecorrectp2msglen
mov ecx,fivecorrectp2msg
mov ebx,1
mov eax,4
int 80h
call newLine
ret
 
;FUNCTION FOR ENDING PROGRAM   
done:
mov  eax, 1     ;system call number (sys_exit)
int  0x80       ;invoke the kernel to end the program
