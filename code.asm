;Coal project Phase 2 By Ammar Hussain 23L-0535 AND Zoha Pasha 23L-3034 Section: 3E

[org 0x0100]

jmp start

tempForAx: dw 1
shouldWeRestart: dw 0
sound_data: incbin "kingsv.wav" 	
sound_size: dw 24000
sound_index: dw 0

door_data: incbin "door.wav" 	
door_size: dw 7000

chime_data: incbin "chime.wav" 	
chime_size: dw 7000

cpuSpeed: dw 500

solvedSudukoArray: db 8,2,7,1,5,4,3,9,6,  9,6,5,3,2,7,1,4,8,  3,4,1,6,8,9,7,5,2,  5,9,3,4,6,8,2,7,1,   4,7,2,5,1,3,6,8,9,   6,1,8,9,7,2,4,3,5,   7,8,6,2,3,5,9,1,4,   1,5,4,7,9,6,8,2,3,   2,3,9,8,4,1,5,6,7
solvedSudukoArray_size: dw 81


solvedSudukoArray2: db 4,3,5,2,6,9,7,8,1,  6,8,2,5,7,1,4,9,3,  1,9,7,8,3,4,5,6,2,  8,2,6,1,9,5,3,4,7,    3,7,4,6,8,2,9,1,5,   9,5,1,7,4,3,6,2,8,   5,1,9,3,2,6,8,7,4,   2,4,8,9,5,7,1,3,6,   7,6,3,4,1,8,2,5,9

solvedSudukoArray3: db 5,3,4,6,7,8,9,1,2,  6,7,2,1,9,5,3,4,8,  1,9,8,3,4,2,5,6,7,  8,5,9,7,6,1,4,2,3,    4,2,6,8,5,3,7,9,1,   7,1,3,9,2,4,8,5,6,    9,6,1,5,3,7,2,8,4,  2,8,7,4,1,9,6,3,5,   3,4,5,2,8,6,1,7,9


afterResetEasy_x: db 20,21,22,23,24,25,26,27,28,29,29,20,20,21,22,23,24,25,26,27,28,29
afterResetEasy_y: db 16,16,16,16,16,16,16,16,16,16,17,17,18,18,18,18,18,18,18,18,18,18

afterResetMedium_x: db 35,36,37,38,39,40,41,42,43,44,44,35,35,36,37,38,39,40,41,42,43,44
afterResetMedium_y: db 16,16,16,16,16,16,16,16,16,16,17,17,18,18,18,18,18,18,18,18,18,18

afterResetHard_x: db 50,51,52,53,54,55,56,57,58,59,59,50,50,51,52,53,54,55,56,57,58,59
afterResetHard_y: db 16,16,16,16,16,16,16,16,16,16,17,17,18,18,18,18,18,18,18,18,18,18

plus20_x_coordinates: db 32, 33, 32, 31, 32, 35, 36, 37, 38, 37, 36, 35, 36, 37, 38
plus20_y_coordinates: db 16,16,15,16,17,15,14,14,15,16,17,18,18,18,18
plus20_coordinate_size: dw 15

poop_x_coordinates: db 12,11,12,13,10,11,12,13,14,10,11,12,13,14,11,12,13,14
poop_y_coordinates: db 14,15,15,15,16,16,16,16,16,17,17,17,17,17,18,18,18,18
poop_coordinate_size: dw 18

poop_person_black_x_coordinates: db 5,6,7,8,9,10,11,11,11,10, 9, 8, 7, 6, 5, 4, 3, 3, 3, 4,5 ,8 ,6 ,7 ,8 ,7 ,7 ,7,7 ,7 ,7, 7, 8, 9, 9, 10, 6, 5, 5, 4, 4, 6, 8 ,5, 9, 4, 5, 9, 10
poop_person_black_y_coordinates: db 8,8,8,8,8,9, 10,11,12,13,14,14,14,14,14,13,12,11,10,9,10,10,12,12,12,15,16,17,18,19,20,21, 16,17,18,18,16,16,17,17,18,22,22,23,23,24,24,24,24
poop_person_black_coordinate_size: dw 49

poop_person_black_inside_x_coordinates: db 5,6,7,8,9, 9, 10,7,6, 4, 10, 9, 8, 7, 6, 5, 4, 4, 5, 9,10, 5, 6, 7, 8, 9
poop_person_black_inside_y_coordinates: db 9,9,9,9,9,10,10,10,10,10,11,11,11,11,11,11,11,12,12,12,12,13,13,13,13,13
poop_person_black_inside_coordinate_size: dw 26

one_thick_stick_x_coordinates: db 20,21,20,21,20,21,20,21,20,21,20,21,20,21,20,21
one_thick_stick_y_coordinates: db 9 ,9 ,10,10,11,11,12,12,13,13,14,14,15,15,16,16
one_thick_stick_coordinate_size: dw 16

thin_stick_x_coordinates: db 20,21,22,23,24
thin_stick_y_coordinates: db 9, 9 ,9 ,9 ,9
thin_stick_coordinate_size: dw 5

y_x_coordinates: db 14,14,14,14,15,15,15,15,16,17,17,17,17,18,18,18,18,16,17,16,17,16,17,16,17
y_y_coordinates: db 9, 10,11,12, 9,10,11,12,12,12,11,10, 9, 9,10,11,12,13,13,14,14,15,15,16,16 
y_coordinate_size:dw 26

s_x_coordinates: db 54,53,54,53,52,51,50,51,50,50,51,51,52,53,53,54,53,54,53,54,53,54,52,50,51,50,51
s_y_coordinates: db 10,10, 9, 9 ,9, 9, 9,10,10,11,11,12,12,12,13,13,14,14,15,15,16,16,16,15,15,16,16
s_coordinate_size: dw 27

easy_button_x_coordinates: db 4,5,6,7,8,9,10,11,12,13,13,4,4,5,6,7,8,9,10,11,12,13
easy_button_y_coordinates: db 13,13,13,13,13,13,13,13,13,13,14,14,15,15,15,15,15,15,15,15,15,15

medium_button_x_coordinates: db 19,20,21,22,23,24,25,26,27,28,28,19,19,20,21,22,23,24,25,26,27,28
medium_button_y_coordinates: db 13,13,13,13,13,13,13,13,13,13,14,14,15,15,15,15,15,15,15,15,15,15

hard_button_x_coordinates: db 34,35,36,37,38,39,40,41,42,43,43,34,34,35,36,37,38,39,40,41,42,43
hard_button_y_coordinates: db 13,13,13,13,13,13,13,13,13,13,14,14,15,15,15,15,15,15,15,15,15,15

buttons_coordinates_size: dw 22

do_u_wanna_play_again: db "Do you want to play again?"
do_u_wanna_play_again_length: dw 26

easy_string: db "  EASY  "
easy_length: dw 8

medium_string: db " MEDIUM "
medium_length: dw 8

hard_string: db "  HARD  "
hard_length: dw 8

blueColor:  db 0x10
redColor: db 0x40
blackColor: db 0X17
blue_foreground: db 0xB0
white_background: db 0x70

mistakes_string : db 'Mistakes:'
mistakes_string_length : dw 9

timer_string : db 'Timer:'
timer_string_length : dw 6

score_string: db 'Score:'
score_string_length: dw 6

one_x_coordinates: dw 59,60,60,60,60,60,61,59
one_y_coordinates: dw 8,7,8,9,10,11,11,11
one_size: dw 8

two_x_coordinates: dw 65,66,67,68,67,66,65,66,67,68
two_y_coordinates: dw 8,7,7,8,9,10,11,11,11,11
two_size: dw 10

three_x_coordinates: dw 72,73,74,75,74,75,74,73,72
three_y_coordinates: dw 8,7,7,8,9,10,11,11,10
three_size: dw 9

four_x_coordinates: dw 60,59,58,58,59,60,61,61,61,61
four_y_coordinates: dw 13,14,15,16,16,16,16,15,14,17
four_size: dw 10

five_x_coordinates: dw 68,67,66,65,65,65,66,67,68,67,66,65
five_y_coordinates: dw 13,13,13,13,14,15,15,15,16,17,17,17
five_size: dw 12

six_x_coordinates: dw 74,73,72,72,72,73,74,75,74,73,72
six_y_coordinates: dw 13,13,14,15,16,15,15,16,17,17,16
six_size: dw 11

seven_x_coordinates: dw 58,59,60,61,61,60,60
seven_y_coordinates: dw 19,19,19,20,21,22,23
seven_size: dw 7

eight_x_coordinates: dw 66,67,68,65,66,67,68,65,66,67
eight_y_coordinates: dw 19,19,20,20,21,21,22,22,23,23
eight_size: dw 10

nine_x_coordinates: dw 73,74,72,75,73,74,75,75,74
nine_y_coordinates: dw 19,19,20,20,21,21,21,22,23
nine_size: dw 9

temp_word: db 1

numbers: db 1, 4, 5, 7, 8, 9, 2, 3, 6
numbers_length: dw 9

possible_positions_x_coordinates: db 3,9,15,21,27,33,39,45,51,  3,9,15,21,27,33,39,45,51,  3,9,15,21,27,33,39,45,51,   3,9,15,21,27,33,39,45,51,   3,9,15,21,27,33,39,45,51,  3,9,15,21,27,33,39,45,51 
possible_positions_y_coordinates: db 2, 2, 2, 2, 2, 2, 2, 2, 2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 10,10,10,10,10,10,10,10,10, 14,14,14,14,14,14,14,14,14, 18,18,18,18,18,18,18,18,18, 22,22,22,22,22,22,22,22,22
possible_positions_size: dw 54 
possible_positions_extra_size: dw 27 


mid_of_boxes_x_coordinates: db 9, 27,45, 9,27,45
mid_of_boxes_y_coordinates: db 6, 6, 6, 18,18,18
mid_of_boxes_size: dw 6
mid_of_boxes_extra_size: dw 3

tempvar: dw 0

tempWordvar: dw 0
tempBytevar: db 0

undo_string: db ' undo '
undo_length: dw 6

erase_string: db ' erase '
erase_length: dw 7

notes_string: db ' notes '
notes_length: dw 7

sudoku_word_x_coordinates: db 13, 14, 15, 16, 17, 18, 13, 14,  13,  14, 13, 14, 15, 16, 17, 18, 17, 18, 17, 18, 14, 15, 16, 17, 13, 14, 17, 18,        22, 23, 22, 23, 22, 23, 22, 23, 24, 25, 26, 27, 26, 27, 26, 27, 26, 27,      31, 32, 33, 34, 35, 36, 31, 32, 35, 36, 31, 32, 35, 36, 31, 32, 33, 34, 35, 36, 35, 36, 35, 36, 35, 36,       40, 41, 42, 43, 44, 45, 40, 41, 44, 45, 40, 41, 44, 45, 40, 41, 42, 43, 44, 45,			   49, 50, 49, 50, 49, 50, 49, 50, 49, 50, 49, 50,  49, 50, 52, 53, 51, 52, 52, 53, 53, 54,        58, 59, 60, 61, 62, 63, 58, 59, 62, 63, 58, 59, 62, 63, 58, 59, 62, 63

sudoku_word_y_coordinates: db 7,  7,  7,  7,  7,  7,   8,  8,   9,   9, 10, 10, 10, 10, 10, 10, 11, 11, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13,         10, 10, 11, 11, 12, 12, 13, 13, 13, 13, 13, 13, 12, 12, 11, 11, 10, 10,      13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10,  9,  9,  8,  8,  7,  7,       13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10, 10, 10,             13, 13, 12, 12, 11, 11, 10, 10,  9,  9,  8,  8,  7,  7,  10, 10, 11, 11, 12, 12, 13, 13,        13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 11, 10, 10, 10, 10

sudoku_word_size_coordinates: dw 132

g_x_coordinates: db 14, 13, 12, 12, 11, 11, 11, 11, 11, 11, 12, 12, 13, 14, 15, 15, 15, 15, 14, 13
g_y_coordinates: db 2, 2, 2, 3, 3, 4, 5, 6, 7, 8, 8, 9, 9, 9, 9, 8, 7, 6, 6, 6
g_coordinate_size: dw 20

a_x_coordinates: db 18, 19, 20, 17, 18, 19, 20, 21, 17, 17, 17, 17, 17, 17, 21, 21, 21, 21, 21, 21, 18, 19, 20
a_y_coordinates: db 2, 2, 2, 3, 3, 3, 3, 3, 4, 5, 6, 7, 8, 9, 4, 5, 6, 7, 8, 9, 6, 6, 6
a_coordinate_size: dw 23

m_x_coordinates: db 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 25, 25, 25, 26, 26, 27, 27, 27, 28, 28, 29, 29, 29, 29, 29, 29, 29, 29
m_y_coordinates: db 2, 3, 4, 5, 6, 7, 8, 9, 2, 3, 2, 3, 4, 4, 5, 4, 3, 2, 2, 3, 2, 3, 4, 5, 6, 7, 8, 9
m_coordinate_size: dw 28

e1_x_coordinates: db 34, 33, 32, 31, 31, 31, 31, 31, 31, 31, 31, 32, 33, 34, 32, 33, 34
e1_y_coordinates: db 2, 2, 2, 2, 3, 4, 5, 6, 7, 8, 9, 9, 9, 9, 5, 5, 5
e_coordinate_size: dw 17

o_x_coordinates: db 46, 47, 48, 45, 45, 45, 45, 45, 45, 46, 47, 48, 49, 49, 49, 49, 49, 49
o_y_coordinates: db 2, 2, 2, 3, 4, 5, 6, 7, 8, 9, 9, 9, 3, 4, 5, 6, 7, 8
o_coordinate_size: dw 18

v_x_coordinates: db 51, 51, 51, 51, 51, 52, 52, 52, 53, 54, 55, 53, 54, 55, 55, 56, 56, 56, 56, 56
v_y_coordinates: db 2,3, 4, 5, 6, 6, 7,8,8,8,8,9,9,7,6 ,6 ,5 ,4 ,3 ,2 
v_coordinate_size: dw 20

r_x_coordinates: db 63, 63, 63, 63, 63, 63, 63, 63, 64, 65, 66, 66, 66, 64, 65, 64, 65, 65, 66, 66, 66
r_y_coordinates: db 2, 3, 4, 5, 6, 7, 8, 9, 2, 2, 3, 4, 5, 5, 5, 6, 6, 7, 7, 8, 9
r_coordinate_size: dw 21

e2_x_coordinates: db 58, 59, 60, 61, 58, 58, 58, 58, 58, 58, 58, 59, 60, 59, 60, 61, 61
e2_y_coordinates: db 2, 2, 2, 2, 3, 4, 5, 6, 7, 8, 9, 5, 5, 9, 9, 9, 5


pause_black_x_coordinates: db 37, 37, 37, 37, 37, 37, 37, 38, 39, 40, 41, 42, 43, 44, 45, 44, 43, 42, 41, 40, 39, 38
pause_black_y_coordinates: db 12, 13, 14, 15, 16, 17, 18, 18, 18, 17, 17, 17, 16, 16, 15, 14, 14, 13, 13, 13, 12, 12
pause_black_coordinate_size: dw 22

pause_red_x_coordinates: db 38, 38, 38, 38, 38, 39, 39, 39, 39, 39, 40, 40, 40, 41, 41, 41, 42, 42, 42, 43, 44
pause_red_y_coordinates: db 13, 14, 15, 16, 17, 13, 14, 15, 16, 17, 14, 15, 16, 14, 15, 16, 14, 15, 16, 15, 15
pause_red_coordinate_size: dw 21

message: db "Do you want to play again?"
message_length: dw 26

levelShuffleCount: dw 25
levelShuffleCountExtra: dw 5

minutes: dw 0
seconds: dw 0
ticks: dw 0

ticksForEraseClick: dw 0

mistakesCount: db 0
scoreCount: db 0

slashThree: db '/3'

upperScreen: times 1040 dw 0 
lowerScreen: times 1040 dw 0

oldkbisr: dd 0
oldtimerisr: dd 0       

isGameOn: dw 1

isUp: dw 1
isDown: dw 0

eraseButtonFlag: db 0 ; 0 for on 1 for off 
space: db ' '
lastXpos: dw 0
lastYpos: dw 0

prevStateOfEraseButtonPoitionCheckX: dw 0
prevStateOfEraseButtonPoitionCheckY: dw 0

takingInputFlag: db 0

prevStateOfInputPoitionCheckX: dw 0
prevStateOfInputPoitionCheckY: dw 0

stack: times 1040 dw 0
stackPointer: dw 2078

isUndoClicked: dw 0 ; 0 if not clicked else 1
isUndoBeingHandled: dw 0

notesButtonFlag: dw 0

isNotesAtAValidPlace: dw 0
prevStateOfNotesButtonPoitionCheckX: dw 0
prevStateOfNotesButtonPoitionCheckY: dw 0

plus10_x_coordinates: db 28, 29, 29, 30, 29, 32, 33, 33, 33, 33, 33, 32, 34, 37, 38, 39, 39, 39, 38, 37, 36, 36, 36
plus10_y_coordinates: db 15, 15, 14, 15, 16, 14, 13, 14, 15, 16, 17, 17, 17, 13, 13, 14, 15, 16, 17, 17, 16, 15, 14
plus10_coordinate_size: dw 23

plus10_box_x_coordinates: db 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42,  26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42			   
plus10_box_y_coordinates: db 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 15, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11
plus10_box_coordinate_size: dw 119

plus10_stick_x_coordinates: db 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26, 26
plus10_stick_y_coordinates: db 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15
plus10_stick_coordinate_size: dw 16

flowerPerson_x_coordinates: db 6,7,8,9,10,11,12,5,4,3, 3,3, 3, 3, 13,13,13,13,13,12,11,4, 5, 6 ,7 ,8, 9 ,10, 8,8, 8, 8, 8, 8, 8, 8, 8, 6, 6,10,10,8 ,6,10,7,8,9
flowerPerson_y_coordinates: db 6,6,6,6 ,6, 7, 8,7,8,9,10,11,12,13,9, 10,11,12,13,14,15,14,15,16,16,16,16,16,17,18,19,20,21,22,23,24,25,9,10,9 ,10,12,13,13,14,14,14
flowerPerson_coordinate_size: dw  47

flowerPerson_hands_x_coordinates: db 9,  10, 11, 12, 13, 14, 15, 16, 17, 18, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18,18
flowerPerson_hands_y_coordinates: db 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,20
flowerPerson_hands_coordinate_size: dw  21

flower_stem_x_coordinates: db 19,19,19,19,19
flower_stem_y_coordinates: db 21,20,19,18,17
flower_stem_size: dw 5

flower_x_coordinates: db 17,18,19,20,21,18,19,20,18,19,20,19
flower_y_coordinates: db 16,16,16,16,16, 15,15,15,14,14,14,13
flower_size: dw 12

w_x_coordinates: db 51,52,53,54,55,53,53,52,54
w_y_coordinates: db 13,13,13,13,13,11,12,14,14
w_coordinate_size: dw 9

n_x_coordinates: db 65,65,66,66,67,67
n_y_coordinates: db 8, 9, 9, 10,10,11
n_coordinate_size: dw 6
	

kbisr:
	push ax
	push bx
	push dx
	push es
	
	push cs
	pop ds
	
	mov ax, 0xb800
	mov es, ax 
	in al, 0x60 
	cmp al, 0x50 ; down key
	jne kbisr_nextcmp 
	cmp word [isDown], 0 ; check if screen is already down then dont do anything
	jne kbisr_exit
	mov ax, 0
	push word ax
	push upperScreen
	call saveScreen
	
	call scrollup
	
	mov ax, 1920
	push word ax
	push lowerScreen
	call restoreScreen
	
	mov word [isDown], 1
	mov word [isUp], 0
	jmp kbisr_exit

kbisr_nextcmp:
	cmp al, 0x48 ; up key
	jne kbisr_nextcmp1
	cmp word [isUp], 0
	jne kbisr_exit
	
	mov ax,0
	int 33h
	
	mov ax, 1920
	push ax
	push lowerScreen
	call saveScreen
	
	call scrolldown
	
	mov ax, 0
	push word ax
	push upperScreen
	call restoreScreen
	
	mov word [isDown], 0
	mov word [isUp], 1
	
kbisr_nextcmp1:
	cmp al, 1
	jne kbisr_nextcmp2
	mov word [isGameOn], 0
	
kbisr_nextcmp2:
	cmp word [isNotesAtAValidPlace], 1
	je skipNormalInputInkbisr
	cmp byte [takingInputFlag], 1
	jnz skipKeyboardInputForNumbersInput
	cmp al, 2
	jb kbisr_exit
	cmp al, 10
	ja kbisr_exit

	mov dx, 0
	sub al, 1
	mov ah, 0
	
	mov word [tempForAx],ax ; storing for later 
	
	push ax 
    mov bx,' '
	push bx
	mov bx,0xBf
	push bx
	call printNewDigit
	
	push ax
	push bx
	
	mov ax, 0
	int 33h
    
	mov ax, [prevStateOfInputPoitionCheckX]
	mov bx, [prevStateOfInputPoitionCheckY]
	mov ah, bl
	push ax
	push word [tempForAx]
	call PushValuesOfNotesFromSubGridInStack
	push word [prevStateOfInputPoitionCheckX]
	push word [tempForAx]
	call PushValuesOfNotesFromColInStack	
	push word [prevStateOfInputPoitionCheckY]
	push word [tempForAx]
	call PushValuesOfNotesFromRowInStack
	mov bx, [stackPointer]
	push word [tempForAx]
	pop word [stack + bx]
	sub word [stackPointer], 2
	
	push word [prevStateOfInputPoitionCheckY]
	push word [prevStateOfInputPoitionCheckX]
	call PushSurroundingNotes
	
	mov bx, [stackPointer]
	mov ax, [prevStateOfInputPoitionCheckX] ; COL
	mov [stack + bx], ax  
    sub bx, 2 
	mov ax, [prevStateOfInputPoitionCheckY] ; ROW
	mov [stack + bx], ax  
	sub bx, 2
	mov ax, [isUp] ; IS UP FLAG
    mov [stack+bx], ax  
	sub bx, 2   
	mov ax, 0
	call getWhatWasPreviouslyThere
	mov word [stack+bx], ax  ; THE VALUE THAT WAS PREV THERE
	sub bx, 2
	mov word[stack+bx], 2 ; indicates that input was done which we gonna undo 
	sub bx, 2
	
	mov word [stackPointer], bx
	mov ax, 1
	int 33h
	pop bx
	pop ax
	
	push ax
	push word [prevStateOfInputPoitionCheckX]
	push word [prevStateOfInputPoitionCheckY]
	call IsAValidMove
	
	mov byte [tempBytevar], 0
	cmp dx, 1
	jnz CorrectInput
	call incMistakesCount
   	mov word [sound_index],6000
	mov bx,350
	push bx
	push word [sound_size]  
    push sound_data         
    call generic_sound
	mov word [cpuSpeed],900
	mov word [sound_index],6000
	mov bx,350
	push bx
	push word [sound_size]  
    push sound_data         
    call generic_sound
	mov word [sound_index],0
	mov word [cpuSpeed],500
	push ax
	
	push word [prevStateOfInputPoitionCheckX]
	push word [prevStateOfInputPoitionCheckY]
	push ax
		
	mov ax, 0
	int 33h
	
	call printnumRed
	pop ax
	push word [prevStateOfInputPoitionCheckX]
	push word [prevStateOfInputPoitionCheckY]
	push ax
	call RemoveNotesWhileInput
	push word [prevStateOfInputPoitionCheckX]
	push ax
	call RemoveNotesFromCol
	push word [prevStateOfInputPoitionCheckY]
	push ax
	call RemoveNotesFromRow
	push ax
	mov ax, [prevStateOfInputPoitionCheckX]
	mov bl, al
	mov ax, [prevStateOfInputPoitionCheckY]
	mov bh, al
	pop ax	
	push bx
	push ax
	call RemoveNotesFromSubGrid
	jmp skipIncorrectInput

CorrectInput:
	
	push ax
	push word [prevStateOfInputPoitionCheckX]
	push word [prevStateOfInputPoitionCheckY]
	push ax
	
	mov ax, 0
	int 33h	
	
	call printnum
	pop ax
	push word [prevStateOfInputPoitionCheckX]
	push word [prevStateOfInputPoitionCheckY]
	push ax
	call RemoveNotesWhileInput
	push word [prevStateOfInputPoitionCheckX]
	push ax
	call RemoveNotesFromCol
	push word [prevStateOfInputPoitionCheckY]
	push ax
	call RemoveNotesFromRow
	push ax
	mov ax, [prevStateOfInputPoitionCheckX]
	mov bl, al
	mov ax, [prevStateOfInputPoitionCheckY]
	mov bh, al
	pop ax	
	push bx
	push ax
	call RemoveNotesFromSubGrid
	call incScoreCount

skipIncorrectInput:
	mov ax, 1
	int 33h
	
skipKeyboardInputForNumbersInput:
	mov byte [takingInputFlag], 0
	jmp kbisr_exit

skipNormalInputInkbisr:
	cmp al, 2
	jb kbisr_exit
	cmp al, 10
	ja kbisr_exit
	sub al, 1
	mov ah, 0
	push ax
	push word [prevStateOfNotesButtonPoitionCheckX]
	push word [prevStateOfNotesButtonPoitionCheckY]
	call printNotesOnScreen
	
kbisr_exit:
	; bring back original number 
    push word [tempForAx] 
    mov bx,' '
	push bx
	mov bx,0x17
	push bx
	call printNewDigit
	
	mov al, 0x20
	out 0x20, al
	mov ax, 1
	int 33h
	
	pop es
	pop dx
	pop bx
	pop ax
	iret
	
	
PushValuesOfNotesFromRowInStack:
	push bp
	mov bp, sp
	pusha
	
	mov dx, [bp + 6]
	mov cx, 3
	
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1InsertionFromRow
	sub cx, 2
	sub dx, 1
	jmp outOfNotesInsertionFromRow
skipNote1InsertionFromRow:
	cmp al, 2
	jne skipNote2InsertionFromRow
	sub dx, 1
	jmp outOfNotesInsertionFromRow
skipNote2InsertionFromRow:
	cmp al, 3	
	jne skipNote3InsertionFromRow
	sub dx, 1
	add cx, 2
	jmp outOfNotesInsertionFromRow
skipNote3InsertionFromRow:
	cmp al, 4
	jne skipNote4InsertionFromRow
	sub cx, 2
	jmp outOfNotesInsertionFromRow
skipNote4InsertionFromRow:
	cmp al, 5
	jne skipNote5InsertionFromRow
	jmp outOfNotesInsertionFromRow
skipNote5InsertionFromRow:
	cmp al, 6
	jne skipNote6InsertionFromRow
	add cx, 2
	jmp outOfNotesInsertionFromRow
skipNote6InsertionFromRow:
	cmp al, 7
	jne skipNote7InsertionFromRow
	add dx, 1
	sub cx, 2
	jmp outOfNotesInsertionFromRow
skipNote7InsertionFromRow:
	cmp al, 8
	jne skipNote8InsertionFromRow
	add dx, 1
	jmp outOfNotesInsertionFromRow
	
skipNote8InsertionFromRow:
	cmp al, 9
	jne outOfNotesInsertionFromRow
	add dx, 1
	add cx, 2
	jmp outOfNotesInsertionFromRow

outOfNotesInsertionFromRow:

	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	
	mov cx, 9
InsertNotesFromRowLoop1:
	push word [es:di]
	mov bx, [stackPointer]
	pop word [stack + bx]
	sub word [stackPointer], 2
	add di, 12
	loop InsertNotesFromRowLoop1
	
	popa
	pop bp
	ret 4
	
PushSurroundingNotes:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push di
	push es
	
	mov ax, 0xb800
	mov es, ax
	mov ax, 80
	mov dx, [bp + 6]
	mul dl
	add ax, [bp + 4]
	shl ax, 1
	mov di, ax
	mov bx, [stackPointer]
	
	sub di, 4
	sub di, 160
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 4
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 4
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 160
	sub di, 8
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 8
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 160
	sub di, 8
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 4
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	add di, 4
	push word [es:di]
	pop word [stack + bx]
	sub bx, 2
	
	mov [stackPointer], bx
	
	pop es
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4
	
RemoveNotesFromRow:
	push bp
	mov bp, sp
	pusha
	
	mov dx, [bp + 6]
	mov cx, 3
	
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1RemovalFromRow
	sub cx, 2
	sub dx, 1
	jmp outOfNotesRemovalFromRow
skipNote1RemovalFromRow:
	cmp al, 2
	jne skipNote2RemovalFromRow
	sub dx, 1
	jmp outOfNotesRemovalFromRow
skipNote2RemovalFromRow:
	cmp al, 3	
	jne skipNote3RemovalFromRow
	sub dx, 1
	add cx, 2
	jmp outOfNotesRemovalFromRow
skipNote3RemovalFromRow:
	cmp al, 4
	jne skipNote4RemovalFromRow
	sub cx, 2
	jmp outOfNotesRemovalFromRow
skipNote4RemovalFromRow:
	cmp al, 5
	jne skipNote5RemovalFromRow
	jmp outOfNotesRemovalFromRow
skipNote5RemovalFromRow:
	cmp al, 6
	jne skipNote6RemovalFromRow
	add cx, 2
	jmp outOfNotesRemovalFromRow
skipNote6RemovalFromRow:
	cmp al, 7
	jne skipNote7RemovalFromRow
	add dx, 1
	sub cx, 2
	jmp outOfNotesRemovalFromRow
skipNote7RemovalFromRow:
	cmp al, 8
	jne skipNote8RemovalFromRow
	add dx, 1
	jmp outOfNotesRemovalFromRow
	
skipNote8RemovalFromRow:
	cmp al, 9
	jne outOfNotesRemovalFromRow
	add dx, 1
	add cx, 2
	jmp outOfNotesRemovalFromRow

outOfNotesRemovalFromRow:

	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	
	mov cx, 9
RemoveNotesFromRowLoop1:
	cmp word [bp + 4], 5
	je HandlingMiddleCaseRemoveNotesFromRowLoop1
	mov word [es:di], 0x7120
	jmp skipRemovalNotesFromRowLoop1
HandlingMiddleCaseRemoveNotesFromRowLoop1:	
	mov ax, [es:di]
	cmp ah, 0x70
	jnz skipRemovalNotesFromRowLoop1
	mov word [es:di], 0x7120
skipRemovalNotesFromRowLoop1:
	add di, 12
	loop RemoveNotesFromRowLoop1

	popa
	pop bp
	ret 4
	
	
PushValuesOfNotesFromColInStack:
	push bp
	mov bp, sp
	pusha
	
	mov dx, 2
	mov cx, [bp + 6]
	
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1InsertionFromCol
	sub cx, 2
	sub dx, 1
	jmp outOfNotesInsertionFromCol
skipNote1InsertionFromCol:
	cmp al, 2
	jne skipNote2InsertionFromCol
	sub dx, 1
	jmp outOfNotesInsertionFromCol
skipNote2InsertionFromCol:
	cmp al, 3	
	jne skipNote3InsertionFromCol
	sub dx, 1
	add cx, 2
	jmp outOfNotesInsertionFromCol
skipNote3InsertionFromCol:
	cmp al, 4
	jne skipNote4InsertionFromCol
	sub cx, 2
	jmp outOfNotesInsertionFromCol
skipNote4InsertionFromCol:
	cmp al, 5
	jne skipNote5InsertionFromCol
	jmp outOfNotesInsertionFromCol
skipNote5InsertionFromCol:
	cmp al, 6
	jne skipNote6InsertionFromCol
	add cx, 2
	jmp outOfNotesInsertionFromCol
skipNote6InsertionFromCol:
	cmp al, 7
	jne skipNote7InsertionFromCol
	add dx, 1
	sub cx, 2
	jmp outOfNotesInsertionFromCol
skipNote7InsertionFromCol:
	cmp al, 8
	jne skipNote8InsertionFromCol
	add dx, 1
	jmp outOfNotesInsertionFromCol
	
skipNote8InsertionFromCol:
	cmp al, 9
	jne outOfNotesInsertionFromCol
	add dx, 1
	add cx, 2
	jmp outOfNotesInsertionFromCol

outOfNotesInsertionFromCol:

	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	
	mov si, 0
InsertNotesFromColLoop1:
	push word [es:di]
	mov bx, [stackPointer]
	pop word [stack + bx]
	sub word [stackPointer], 2
	add di, 640
	inc si
	cmp si, 6
	jnz InsertNotesFromColLoop1
	
	cmp word [isUp], 1
	jnz InsertNotesFromColDownCase
	
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	push ds
	pop es
	mov si, 0
InsertNotesFromColLoop2:
	push word [es:di]
	mov bx, [stackPointer]
	pop word [stack + bx]
	sub word [stackPointer], 2
	add di, 440
	inc si
	cmp si, 3
	jnz InsertNotesFromColLoop2

jmp exitFromInsertionNotesFromCol

InsertNotesFromColDownCase:
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, upperScreen
	add di, ax
	push ds
	pop es
	mov si, 0
InsertNotesFromColLoop3:
	push word [es:di]
	mov bx, [stackPointer]
	pop word [stack + bx]
	sub word [stackPointer], 2
	add di, 440
	inc si
	cmp si, 3
	jnz InsertNotesFromColLoop3

exitFromInsertionNotesFromCol:
	
	popa
	pop bp
	ret 4



RemoveNotesFromCol:
	push bp
	mov bp, sp
	pusha
	
	mov dx, 2
	mov cx, [bp + 6]
	
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1RemovalFromCol
	sub cx, 2
	sub dx, 1
	jmp outOfNotesRemovalFromCol
skipNote1RemovalFromCol:
	cmp al, 2
	jne skipNote2RemovalFromCol
	sub dx, 1
	jmp outOfNotesRemovalFromCol
skipNote2RemovalFromCol:
	cmp al, 3	
	jne skipNote3RemovalFromCol
	sub dx, 1
	add cx, 2
	jmp outOfNotesRemovalFromCol
skipNote3RemovalFromCol:
	cmp al, 4
	jne skipNote4RemovalFromCol
	sub cx, 2
	jmp outOfNotesRemovalFromCol
skipNote4RemovalFromCol:
	cmp al, 5
	jne skipNote5RemovalFromCol
	jmp outOfNotesRemovalFromCol
skipNote5RemovalFromCol:
	cmp al, 6
	jne skipNote6RemovalFromCol
	add cx, 2
	jmp outOfNotesRemovalFromCol
skipNote6RemovalFromCol:
	cmp al, 7
	jne skipNote7RemovalFromCol
	add dx, 1
	sub cx, 2
	jmp outOfNotesRemovalFromCol
skipNote7RemovalFromCol:
	cmp al, 8
	jne skipNote8RemovalFromCol
	add dx, 1
	jmp outOfNotesRemovalFromCol
	
skipNote8RemovalFromCol:
	cmp al, 9
	jne outOfNotesRemovalFromCol
	add dx, 1
	add cx, 2
	jmp outOfNotesRemovalFromCol

outOfNotesRemovalFromCol:

	mov si, 0
RemoveNotesFromColLoop1:
	cmp word [bp + 4], 5
	je HandlingMiddleCaseRemoveNotesFromColLoop1
	mov word [es:di], 0x7120
	jmp skipRemovalNotesFromColLoop1
HandlingMiddleCaseRemoveNotesFromColLoop1:	
	mov ax, [es:di]
	cmp ah, 0x70
	jnz skipRemovalNotesFromColLoop1
	mov word [es:di], 0x7120
skipRemovalNotesFromColLoop1:
	add di, 640
	inc si
	cmp si, 6
	jnz RemoveNotesFromColLoop1
	
	cmp word [isUp], 1
	jnz RemoveNotesFromColDownCase
	
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	push ds
	pop es
	mov si, 0
RemoveNotesFromColLoop2:
	cmp word [bp + 4], 5
	je HandlingMiddleCaseRemoveNotesFromColLoop2
	mov word [es:di], 0x7120
	jmp skipRemovalNotesFromColLoop2
HandlingMiddleCaseRemoveNotesFromColLoop2:	
	mov ax, [es:di]
	cmp ah, 0x70
	jnz skipRemovalNotesFromColLoop2
	mov word [es:di], 0x7120
skipRemovalNotesFromColLoop2:
	add di, 440
	inc si
	cmp si, 3
	jnz RemoveNotesFromColLoop2

jmp exitFromRemovalNotesFromCol

RemoveNotesFromColDownCase:
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, upperScreen
	add di, ax
	push ds
	pop es
	mov si, 0
RemoveNotesFromColLoop3:
	cmp word [bp + 4], 5
	je HandlingMiddleCaseRemoveNotesFromColLoop3
	mov word [es:di], 0x7120
	jmp skipRemovalNotesFromColLoop3
HandlingMiddleCaseRemoveNotesFromColLoop3:	
	mov ax, [es:di]
	cmp ah, 0x70
	jnz skipRemovalNotesFromColLoop3
	mov word [es:di], 0x7120
skipRemovalNotesFromColLoop3:
	add di, 440
	inc si
	cmp si, 3
	jnz RemoveNotesFromColLoop3

exitFromRemovalNotesFromCol:
	
	popa
	pop bp
	ret 4
	
PushValuesOfNotesFromSubGridInStack:
	push bp
	mov bp, sp
	pusha
	
	mov si,0

	finding_grid_box_loop_InsertNotes:
	mov ax,[bp+6]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_loop_InsertNotes:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_outerloop_InsertNotes:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_innerloop_InsertNotes:; x ka
				cmp ax,bx
				je OutOfFindingMidLoop_InsertNotes
				add bl, 6
				add cl, 1
				cmp cl, 3
				jnz finding_mid_for_checkboxes_innerloop_InsertNotes
				add bh, 4
				sub bl, 18; check this in case of error 
				
			add ch, 1
			cmp ch, 3
		jnz finding_mid_for_checkboxes_outerloop_InsertNotes
		
		
	inc si
	cmp si, [mid_of_boxes_size]
	jnz finding_mid_for_checkboxes_loop_InsertNotes
	
	OutOfFindingMidLoop_InsertNotes:
	mov bl, [mid_of_boxes_x_coordinates+si]
	mov bh, [mid_of_boxes_y_coordinates+si]
	mov cx, 0
	mov cl, bl
	mov dx, 0
	mov dl, bh
	
	sub cx, 6
	sub dx, 4
	
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
  
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1InsertionFromSubGrid
	sub cx, 2
	sub dx, 1
	jmp outOfNotesInsertionFromSubGrid
skipNote1InsertionFromSubGrid:
	cmp al, 2
	jne skipNote2InsertionFromSubGrid
	sub dx, 1
	jmp outOfNotesInsertionFromSubGrid
skipNote2InsertionFromSubGrid:
	cmp al, 3	
	jne skipNote3InsertionFromSubGrid
	sub dx, 1
	add cx, 2
	jmp outOfNotesInsertionFromSubGrid
skipNote3InsertionFromSubGrid:
	cmp al, 4
	jne skipNote4InsertionFromSubGrid
	sub cx, 2
	jmp outOfNotesInsertionFromSubGrid
skipNote4InsertionFromSubGrid:
	cmp al, 5
	jne skipNote5InsertionFromSubGrid
	jmp outOfNotesInsertionFromSubGrid
skipNote5InsertionFromSubGrid:
	cmp al, 6
	jne skipNote6InsertionFromSubGrid
	add cx, 2
	jmp outOfNotesInsertionFromSubGrid
skipNote6InsertionFromSubGrid:
	cmp al, 7
	jne skipNote7InsertionFromSubGrid
	add dx, 1
	sub cx, 2
	jmp outOfNotesInsertionFromSubGrid
skipNote7InsertionFromSubGrid:
	cmp al, 8
	jne skipNote8InsertionFromSubGrid
	add dx, 1
	jmp outOfNotesInsertionFromSubGrid
	
skipNote8InsertionFromSubGrid:
	cmp al, 9
	jne outOfNotesInsertionFromSubGrid
	add dx, 1
	add cx, 2
	jmp outOfNotesInsertionFromSubGrid

outOfNotesInsertionFromSubGrid:
	mov ax, 0xb800
	mov es, ax
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax

	mov bx, 0
InsertNotesFromSubGridOuterLoop1:
	mov si, 0
InsertNotesFromSubGridLoop1:
	push bx
	push word [es:di]
	mov bx, [stackPointer]
	pop word [stack + bx]
	sub word [stackPointer], 2
	pop bx
	add di, 12
	inc si
	cmp si, 3
	jnz InsertNotesFromSubGridLoop1
	sub di, 36
	add di, 640
	inc bx
	cmp bx, 3
	jne InsertNotesFromSubGridOuterLoop1
	
	popa
	pop bp
	ret 4

;////////////////////////////////////////////////////////////////////////////////////////////

RemoveNotesFromSubGrid:
	push bp
	mov bp, sp
	pusha
	
	mov si,0

	finding_grid_box_loop_RemoveNotes:
	mov ax,[bp+6]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_loop_RemoveNotes:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_outerloop_RemoveNotes:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_innerloop_RemoveNotes:; x ka
				cmp ax,bx
				je OutOfFindingMidLoop_RemoveNotes
				add bl, 6
				add cl, 1
				cmp cl, 3
				jnz finding_mid_for_checkboxes_innerloop_RemoveNotes
				add bh, 4
				sub bl, 18; check this in case of error 
				
			add ch, 1
			cmp ch, 3
		jnz finding_mid_for_checkboxes_outerloop_RemoveNotes
		
		
	inc si
	cmp si, [mid_of_boxes_size]
	jnz finding_mid_for_checkboxes_loop_RemoveNotes
	
	OutOfFindingMidLoop_RemoveNotes:
	mov bl, [mid_of_boxes_x_coordinates+si]
	mov bh, [mid_of_boxes_y_coordinates+si]
	mov cx, 0
	mov cl, bl
	mov dx, 0
	mov dl, bh
	
	sub cx, 6
	sub dx, 4
	
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
  
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1RemovalFromSubGrid
	sub cx, 2
	sub dx, 1
	jmp outOfNotesRemovalFromSubGrid
skipNote1RemovalFromSubGrid:
	cmp al, 2
	jne skipNote2RemovalFromSubGrid
	sub dx, 1
	jmp outOfNotesRemovalFromSubGrid
skipNote2RemovalFromSubGrid:
	cmp al, 3	
	jne skipNote3RemovalFromSubGrid
	sub dx, 1
	add cx, 2
	jmp outOfNotesRemovalFromSubGrid
skipNote3RemovalFromSubGrid:
	cmp al, 4
	jne skipNote4RemovalFromSubGrid
	sub cx, 2
	jmp outOfNotesRemovalFromSubGrid
skipNote4RemovalFromSubGrid:
	cmp al, 5
	jne skipNote5RemovalFromSubGrid
	jmp outOfNotesRemovalFromSubGrid
skipNote5RemovalFromSubGrid:
	cmp al, 6
	jne skipNote6RemovalFromSubGrid
	add cx, 2
	jmp outOfNotesRemovalFromSubGrid
skipNote6RemovalFromSubGrid:
	cmp al, 7
	jne skipNote7RemovalFromSubGrid
	add dx, 1
	sub cx, 2
	jmp outOfNotesRemovalFromSubGrid
skipNote7RemovalFromSubGrid:
	cmp al, 8
	jne skipNote8RemovalFromSubGrid
	add dx, 1
	jmp outOfNotesRemovalFromSubGrid
	
skipNote8RemovalFromSubGrid:
	cmp al, 9
	jne outOfNotesRemovalFromSubGrid
	add dx, 1
	add cx, 2
	jmp outOfNotesRemovalFromSubGrid

outOfNotesRemovalFromSubGrid:

	mov ax, 0xb800
	mov es, ax
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax

	mov bx, 0
RemoveNotesFromSubGridOuterLoop1:
	mov si, 0
RemoveNotesFromSubGridLoop1:
	cmp word [bp + 4], 5
	je HandlingMiddleCaseRemoveNotesFromSubGridLoop1
	mov word [es:di], 0x7120
	jmp skipRemovalNotesFromSubGridLoop1
HandlingMiddleCaseRemoveNotesFromSubGridLoop1:	
	mov ax, [es:di]
	cmp ah, 0x70
	jnz skipRemovalNotesFromSubGridLoop1
	mov word [es:di], 0x7120
skipRemovalNotesFromSubGridLoop1:
	add di, 12
	inc si
	cmp si, 3
	jnz RemoveNotesFromSubGridLoop1
	sub di, 36
	add di, 640
	inc bx
	cmp bx, 3
	jne RemoveNotesFromSubGridOuterLoop1
	
	popa
	pop bp
	ret 4
	
printNotesOnScreen:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push es
	push di
	
	mov dx, [bp + 4]
	mov cx, [bp + 6]
	
	mov ax, 0
	int 33h
	
	mov ax, [bp + 8]
	cmp al, 1
	jne skipNote1Printing
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPrinting
skipNote1Printing:
	cmp al, 2
	jne skipNote2Printing
	sub dx, 1
	jmp outOfNotesPrinting
skipNote2Printing:
	cmp al, 3	
	jne skipNote3Printing
	sub dx, 1
	add cx, 2
	jmp outOfNotesPrinting
skipNote3Printing:
	cmp al, 4
	jne skipNote4Printing
	sub cx, 2
	jmp outOfNotesPrinting
skipNote4Printing:
	cmp al, 5
	jne skipNote5Printing
	jmp outOfNotesPrinting
skipNote5Printing:
	cmp al, 6
	jne skipNote6Printing
	add cx, 2
	jmp outOfNotesPrinting
skipNote6Printing:
	cmp al, 7
	jne skipNote7Printing
	add dx, 1
	sub cx, 2
	jmp outOfNotesPrinting
skipNote7Printing:
	cmp al, 8
	jne skipNote8Printing
	add dx, 1
	jmp outOfNotesPrinting
	
skipNote8Printing:
	cmp al, 9
	jne outOfNotesPrinting
	add dx, 1
	add cx, 2
	jmp outOfNotesPrinting	

outOfNotesPrinting:
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, [bp + 8]
	add ax, 0x30
	mov ah, 0x70
	mov [es:di], ax
	
	mov ax, 1
	int 33h
	mov cx, [bp + 6]
	mov dx, [bp + 4]
	shl cx, 3
	shl dx, 3
	mov ax, 4
	int 33h
	
	pop di
	pop es
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 6
	

incScoreCount:
	push ax
	push bx
	push dx
	
	mov dx,0
	push word [prevStateOfInputPoitionCheckX]
	call CheckColCompletion
	cmp dx,1
	jne colsReturnedTrue
	mov dx,0
	push word [prevStateOfInputPoitionCheckY]
	call CheckRowCompletion
	cmp dx,1
	jne colsReturnedTrue
	mov dx,0
	mov ah,[prevStateOfInputPoitionCheckY]
	mov al,[prevStateOfInputPoitionCheckX]
	push ax
	call checkBoxCompletion
	cmp dx,1
	je NotComplete
	
colsReturnedTrue:	
	cmp word [isUp],1
	jne notUpScreen2
	
	mov ax, 1920
	push ax
	push upperScreen
	call saveScreen
	jmp weHaveSavedScreen2
	
notUpScreen2:
	mov ax, 1920
	push ax
	push lowerScreen
	call saveScreen
	
weHaveSavedScreen2:
	call plus10_print
	
	cmp word [isUp],1
	jne noRestoreUpScreen2
	
	mov ax, 1920
	push ax
	push upperScreen
	call restoreScreen
	
	jmp OutOfRestoring
	
noRestoreUpScreen2:
	
	mov ax, 1920
	push  ax
	push lowerScreen
	call restoreScreen
	
OutOfRestoring:
	add byte [scoreCount],10
	mov ax, 63
	push ax
	mov ax, 5
	push ax
	mov al, [scoreCount]
	mov ah, 0
	push ax
	call printnum
	
   jmp exitingFromIncScoreCount
NotComplete:

	add byte [scoreCount],2
	
	mov ax,63
	push ax
	mov ax,5
	push ax
	mov al,[scoreCount]
	mov ah,0
	push ax
	call printnum
	
	mov word [sound_index],0
	
	cmp word [isUp],1
	jne notUpScreen
	
	mov ax, 1920
	push ax
	push upperScreen
	call saveScreen
	jmp weHaveSavedScreen
	
notUpScreen:
	mov ax, 1920
	push  ax
	push lowerScreen
	call saveScreen
	
weHaveSavedScreen:
    call plus_print
	mov bx, 4000
	push bx
	push word [chime_size]  
    push chime_data         
    call generic_sound

	cmp word [isUp],1
	jne noRestoreUpScreen
	mov word [sound_index],0
	
	mov ax, 1920
	push ax
	push upperScreen
	call restoreScreen
	jmp doneRestoringScreen
noRestoreUpScreen:
    mov word [sound_index],0
	mov ax, 1920
	push ax
	push lowerScreen
	call restoreScreen

doneRestoringScreen:

exitingFromIncScoreCount:

   mov dx,0
   call checkWinCondition ; returns 0 upon win 
   cmp dx,1
   je UserDidNotWin
   
   call clrscr_white
   call youWin_print
   call flowerMan_print
   
   UserDidNotWin:
   
	pop dx
	pop bx
	pop ax
	ret
	
	
incMistakesCount:
	push ax
	add byte [mistakesCount], 1

	mov ax,66
	push ax
	mov ax, 3
	push ax
	mov al,[mistakesCount]
	mov ah,0
	push ax
	call printnum
	cmp byte [mistakesCount], 3
	jnz mistakesCountNot3
    mov cx,20
	sleepMistake:
	loop sleepMistake
	mov word [isGameOn], 0
	call clrscr_white
	call poopMan_print
	call youLost_print
	mistakesCountNot3:
	
	pop ax
	ret
saveScreen: ; takes the portion of screen you want to save ; for upper screen push 0 for lower screen push 1920
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push es
	
	mov ax, 0
	int 33h
	
	push cs
	pop ds
	
	push word [bp + 6]
	push ds
	mov ax, [bp + 4]
	push ax
	call read_screen

	mov ax, 1
	int 33h

	pop es
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4

read_screen:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push es
	push ds

	mov ax, 0
	int 33h

	mov bx, 0
	les di, [bp + 4]
	mov ax, 0xb800
	mov ds, ax
	mov si, [bp + 8]
read_screen_inner_loop:
	mov cx, 55
	cld
	rep movsw
	add si, 50
	inc bx
	cmp bx, 13
	jne read_screen_inner_loop

	mov ax, 1
	int 33h

	pop ds
	pop es
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 6

restoreScreen:;takes the part of screen where to restore also takes a word 0 or 1920
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	push es
	push ds
	
	mov ax, 0
	int 33h
	
	push cs
	pop ds
	
	push word [bp + 6]
	push ds
	mov ax, [bp + 4]
	push ax
	call write_screen
	
	mov ax, 1
	int 33h
	
	pop ds
	pop es
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4
	
write_screen:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push si
	push di
	push es
	push ds
	
	mov ax, 0
	int 33h
	
	mov bx, 0
	lds si, [bp + 4]
	mov di, [bp + 8] ; starting position
	mov ax, 0xb800
	mov es, ax
write_screen_inner_loop:
	mov cx, 55
	cld 
	rep movsw
	add di, 50
	inc bx
	cmp bx, 13
	jne write_screen_inner_loop
	
	mov ax, 1
	int 33h
	
	pop ds
	pop es
	pop di
	pop si
	pop cx
	pop bx
	pop ax
	pop bp
	ret 6

scrollup: ; takes the number of lines to scroll
	push bp
	mov bp,sp
	push ax
	push cx
	push si
	push di
	push es
	push ds
	
	mov ax, 0
	int 33h
	
	mov bx, 0
	mov ax, 0xb800
	mov ds, ax
	mov es, ax
	mov si, 1920
	xor di, di
scroll_up_inner_loop:
	mov cx, 55
	cld 
	rep movsw
	add di, 50
	add si, 50
	inc bx
	cmp bx, 13
	jne scroll_up_inner_loop

	mov ax, 1
	int 33h

	pop ds
	pop es
	pop di
	pop si
	pop cx
	pop ax
	pop bp
	ret

scrolldown: ; takes the number of lines to scroll 
	push bp
	mov bp,sp
	push ax
	push cx
	push si
	push di
	push es
	push ds

	mov ax, 0
	int 33h

	mov bx, 0
	mov ax, 0xb800
	mov ds, ax
	mov es, ax
	mov si, 2028
	mov di, 3948

scroll_down_inner_loop:
	mov cx, 55
	std
	rep movsw
	sub di, 50
	sub si, 50
	inc bx
	cmp bx, 13
	jne scroll_down_inner_loop

	mov ax, 1
	int 33h

	pop ds
	pop es
	pop di
	pop si
	pop cx
	pop ax
	pop bp
	ret

getWhatWasPreviouslyThere:
	push bx
	push ax
	push es
	push di
	
	mov bx,[prevStateOfInputPoitionCheckY]
	mov ax,0xb800
	mov es,ax
    mov ax,80
	mul bl
	add ax, [prevStateOfInputPoitionCheckX]
	shl ax,1
	mov di,ax
	
	mov ax, 0
	int 33h

	mov bx, [es:di]
	
	mov ax, 1 
	int 33h
	
	pop di
	pop es
	pop ax
	mov ax, bx
	pop bx
	ret
	
	getWhatWasPreviouslyThereForEraseOperation:
	push bx
	push ax
	push es
	push di
	
	mov bx,[prevStateOfEraseButtonPoitionCheckY]
	mov ax,0xb800
	mov es,ax
    mov ax,80
	mul bl
	add ax, [prevStateOfEraseButtonPoitionCheckX]
	shl ax,1
	mov di,ax
	
	mov ax, 0
	int 33h

	mov bx, [es:di]
	
	mov ax, 1 
	int 33h
	
	pop di
	pop es
	pop ax
	mov ax, bx
	pop bx
	ret

printtimer:
    push bp
    mov bp, sp
    push es
    push ax
    push bx
    push cx
    push dx
    push di

    mov ax, 0xb800
    mov es, ax          
    mov di, 766     

    mov ax, [minutes]
    call printtwodigits 

    mov dl, ':'         
    mov dh, 0x71       
    mov [es:di], dx
    add di, 2           

    mov ax, [seconds]
    call printtwodigits 

    pop di
    pop dx
    pop cx
    pop bx
    pop ax
    pop es
    pop bp
    ret

printtwodigits:
    push ax
    push bx
    push dx
    xor dx, dx
    mov bl, 10          
    div bl
	
    mov dl, al             
    add dl, 0x30        
    mov dh, 0x71       
    mov [es:di], dx     
    add di, 2             

    mov dl, ah             
    add dl, 0x30       
    mov dh, 0x71      
    mov [es:di], dx      
    add di, 2           

    pop dx             
    pop bx               
    pop ax                 
    ret

timer:
    push ax
    push bx
    push cx
	push ds

    push cs
	pop ds
    call printtimer
	
    inc word [ticks]
    cmp word [ticks], 18     
    jl skip_printing_timer                 


    mov word [ticks], 0
    inc word [seconds]        
    cmp word [seconds], 60    
    jl skip_minutes       
    mov word [seconds], 0     
    inc word [minutes]    
skip_minutes:
    call printtimer         
skip_printing_timer:
	cmp byte [eraseButtonFlag], 0
	jnz skipCheckEraseButtonStatus
	call GetEraseStatus
	call GetNotesStatus
	cmp word [notesButtonFlag], 0
	jnz skipInputStatusChanger
	mov word [isNotesAtAValidPlace], 0
	call TakeInputStatusChanger ; calling here bcz we dont want to take input while the user has pressed erase button
	jmp skipCheckEraseButtonStatus

skipInputStatusChanger:
	call TakeNotesStatusChanger

skipCheckEraseButtonStatus:
	cmp byte [eraseButtonFlag],1
	jne eraseButtonNotPressed
	call eraseFromGrid
eraseButtonNotPressed:	
	cmp word [isUndoClicked], 0
	jnz skipCheckingUndoStatus
	call GetUndoStatus
skipCheckingUndoStatus:
	cmp word[isUndoClicked], 1
	jne UndoButtonNotPressed
	cmp word [stackPointer], 2078 
	je NothingToUndo
	call changeUndoButtonColorToRed
	call performUndo
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call changeUndoButtonColorToBlue
NothingToUndo:
	mov word [isUndoClicked], 0
UndoButtonNotPressed:
	pop ds
    pop cx
    pop bx
    pop ax
	;iret
	jmp far [oldtimerisr]

sleep:
	push cx
	mov cx, 0xFFFF
delay: 
	loop delay
	pop cx
	ret
	
clrscr_white:
    push es
    push di
    push ax

    mov ax, 0xb800
    mov es, ax
    mov ah, [white_background]
    mov al, ' '
    mov cx, 2000
    xor di, di

clrscr_white_next:
    rep stosw

    pop ax
    pop di
    pop es
    ret

clrscr:
	push es
	push di
	push ax
	push cx
	
	mov ax, 0xb800
	mov es, ax
	mov ah, 0x07
	mov al, ' '
	mov cx, 4000
	mov di, 0
	
clrscr_next:
		mov [es:di], ax
		add di, 2
		loop clrscr_next
		
	pop cx
    pop ax
    pop di
	pop es
	ret 
	

starting_screen_background:
	push es
	push di
	push ax
	push bx
	push cx
	push dx
	
	mov ax, 0xb800
	mov es, ax
	mov ah, 0x70
	mov al, ' '
	mov cx, 2000
	mov di, 0
	mov dx, 0
	
mov word [sound_index],0
mov word [cpuSpeed],500
starting_screen_background_next:

	mov [es:di], ax
	add di, 2
	add dx, 2
	cmp dx, 160
	jnz starting_screen_background_skip
	
	mov bx,350
	push bx
	push word [chime_size]  
    push chime_data         
    call generic_sound

	mov  dx, 0

starting_screen_background_skip:
	loop starting_screen_background_next 
	mov word [sound_index],0
	
	pop dx
	pop cx
	pop bx
    pop ax
    pop di
	pop es
	
	ret 

sudoku_starting_print:
	push es
	push di
	push ax
	push bx
	push cx
	push dx
	push si

	mov ax, 0xb800
	mov es, ax
	mov di, 0
	mov cx, [sudoku_word_size_coordinates]
	mov bx, 0
	mov si, 0
	mov dx, 0

	
sudoku_starting_print_loop:
	mov ax, 0
	mov ax, 80
	mov dl, [sudoku_word_y_coordinates + bx]
	mul dl
	mov dx, 0
	mov dl, [sudoku_word_x_coordinates + bx]
	add ax, dx
	shl ax, 1
	mov di, ax
	add bx, 1
	
	mov ah, 0x10
	mov al, ' '

	mov [es:di], ax
	
	loop sudoku_starting_print_loop
	
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop di
	pop es
	
	ret


	
buttons_print:
    push es
    push di
    push ax
    push bx
	push cx
    push dx
    push si

    mov ax, 0xb800   
    mov es, ax

    mov cx, [buttons_coordinates_size]  
    mov bx, 0                           

easy_print_loop:
    mov ax, 80                           
    mov dl, [easy_button_y_coordinates + bx]  
    mul dl                                
    mov dl, [easy_button_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0x1F
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz easy_print_loop                  
    
    mov ax,21; x
	push ax
	mov ax,17; y
	push ax
	mov ax,0X171F
	push ax
	mov ax,easy_string
	push ax
	push word [easy_length]
	call printstr
  
    mov cx, [buttons_coordinates_size] 
    mov bx, 0                             

medium_print_loop:
    mov ax, 80                           
    mov dl, [medium_button_y_coordinates + bx]  
    mul dl                             
    mov dl, [medium_button_x_coordinates + bx]  
    add ax, dx                            
    shl ax, 1                             
    mov di, ax                            

    mov ah, 0x1F
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz medium_print_loop   

    mov ax,36; x
	push ax
	mov ax,17; y
	push ax
	mov ax,0X171F
	push ax
	mov ax,medium_string
	push ax
	push word [medium_length]
	call printstr

    mov cx, [buttons_coordinates_size] 
    mov bx, 0 
	
hard_print_loop:
	
    mov ax, 80                           
    mov dl, [hard_button_y_coordinates + bx]  
    mul dl                             
    mov dl, [hard_button_x_coordinates + bx]  
    add ax, dx                            
    shl ax, 1                             
    mov di, ax                            

    mov ah, 0x1F
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz hard_print_loop   

    mov ax, 51; x
	push ax
	mov ax, 17 ;y
	push ax
	mov ax, 0X171F
	push ax
	mov ax, hard_string
	push ax
	push word [hard_length]
	call printstr	

buttons_printing_done:

    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop di
    pop es
	
    ret

generic_sound:
    push bp
	mov bp,sp
	push si
	push bx
	push di
	push cx
	push ax
	
    mov si, [sound_index]   ; sound_index
	mov bx, [bp+4]       ; sound_data address 
	mov di, [bp+6]       ; sound_size 
    mov ax,[sound_index]
	add ax,[bp+8] ; number of bytes to be printed at once
	
play_sound:

    mov bl, 10h
    call sb_write_dsp

    mov bl, [bx + si]  ; load sound data at sound_data[si]
    call sb_write_dsp

    ; delay based on CPU speed 
    mov cx, [cpuSpeed]
sound_delay:
	nop
	loop sound_delay ; delay based on cx
	
	inc si   
	cmp si,di ; total size
	cmp si, ax  ;100 bytes each 
	jb play_sound         
	mov [sound_index],si
	cmp si,[bp+6]
	jb noResetSoundIndex
	mov word [sound_index],0
	noResetSoundIndex:
	pop ax
	pop cx
	pop di
	pop bx
	pop si
	pop bp
	
	ret 6           
	
sb_write_dsp:
    ; Send a byte to the DSP
     mov dx, 22ch          ; Set DSP port
busy:
    in al, dx             ; Wait until DSP is not busy
    test al, 10000000b
    jnz busy
    mov al, bl            ; Send byte to DSP
    out dx, al
    ret


draw_border:
    mov ax, 0xb800
    mov es, ax

    xor di, di

draw_top:
    mov ah, [blue_foreground]
    mov al, '<'
    mov [es:di], ax
    add di, 2
    cmp di, 160
    jl draw_top

    mov dx, 0
    mov di, 158

draw_right:
    mov ah, [blue_foreground]
    mov al, '<'
    mov [es:di], ax
    add di, 160
    inc dx
    cmp dx, 25
    jl draw_right

    mov di, 4000
    mov cx, 80

draw_bottom:
    mov ah, [blue_foreground]
    mov al, '<'
    mov [es:di], ax
    sub di, 2
    cmp di, 3840
    jnz draw_bottom

    mov dx, 0
    mov di, 3840

draw_left:
    mov ah, [blue_foreground]
    mov al, '<'
    mov [es:di], ax
    sub di, 160
    inc dx
    cmp dx, 24
    jl draw_left

    ret

gameover_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si

    mov ax, 0xb800
    mov es, ax

    mov di, 0
    mov cx, [g_coordinate_size]
    mov bx, 0

gameover_print_G_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [g_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [g_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' '  
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound
	
    loop gameover_print_G_loop

    mov di, 0
    mov cx, [a_coordinate_size]
    mov bx, 0

gameover_print_A_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [a_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [a_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' '  
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound
	
    loop gameover_print_A_loop

    mov di, 0
    mov cx, [m_coordinate_size]
    mov bx, 0

gameover_print_M_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [m_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [m_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' '  
    mov [es:di], ax
	
	mov ax,250
	push ax
    push word [sound_size]  
    push sound_data         
    call generic_sound

    loop gameover_print_M_loop

    mov di, 0
    mov cx, [e_coordinate_size]
    mov bx, 0

gameover_print_E1_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [e1_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [e1_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' '  
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound


    loop gameover_print_E1_loop

    mov di, 0
    mov cx, [o_coordinate_size]
    mov bx, 0

gameover_print_O_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [o_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [o_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' '  
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound


    loop gameover_print_O_loop

    mov di, 0
    mov cx, [v_coordinate_size]
    mov bx, 0

gameover_print_V_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [v_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [v_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' ' 
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound

    loop gameover_print_V_loop

  mov di, 0
    mov cx, [e_coordinate_size]
    mov bx, 0

gameover_print_E2_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [e2_y_coordinates + bx]  
    mul dl
    mov dx, 0
    mov dl, [e2_x_coordinates + bx] 
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' ' 
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound

    loop gameover_print_E2_loop

    mov di, 0
    mov cx, [r_coordinate_size]
    mov bx, 0

gameover_print_R_loop:
    mov ax, 0
    mov ax, 80
    mov dl, [r_y_coordinates + bx] 
    mul dl
    mov dx, 0
    mov dl, [r_x_coordinates + bx]  
    add ax, dx
    shl ax, 1
    mov di, ax
    add bx, 1

    mov ah, [blueColor]
    mov al, ' ' 
    mov [es:di], ax
	
	mov ax,250
	push ax
	push word [sound_size]  
    push sound_data         
    call generic_sound
	
    loop gameover_print_R_loop

    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es

    ret

pause_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si

    mov ax, 0xb800   
    mov es, ax

    mov cx, [pause_red_coordinate_size]  
    mov bx, 0                           

pause_red_loop:
    cmp cx, 0
    je pause_black_loop_start

    mov ax, 80                           
    mov dl, [pause_red_y_coordinates + bx]  
    mul dl                                
    mov dl, [pause_red_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, [redColor]
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jmp pause_red_loop                    

pause_black_loop_start:
  
    mov cx, [pause_black_coordinate_size] 
    mov bx, 0                             

pause_black_loop:
    cmp cx, 0
    je pause_printing_done
	
    mov ax, 80                           
    mov dl, [pause_black_y_coordinates + bx]  
    mul dl                             
    mov dl, [pause_black_x_coordinates + bx]  
    add ax, dx                            
    shl ax, 1                             
    mov di, ax                            

    mov ah, [blackColor]
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jmp pause_black_loop                 

pause_printing_done:
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret

printstr:
	push bp
	mov bp,sp
	push es
	push ax
	push cx
	push si 
	push di

	mov ax,0xb800
	mov es,ax
	mov al,80
	mul byte [bp+10]
	add ax,[bp+12]
	shl ax,1
	mov di,ax
	mov si,[bp+6]
	mov cx,[bp+4]
	mov ah,[bp+8]

	cld
nextchar:
	lodsb
	stosw
	loop nextchar

	pop di
	pop si
	pop cx
	pop ax
	pop es
	pop bp
	ret 10

generate_random_number_for_di:
    push bp
	mov bp, sp
	push ax
    push dx
    push bx
    push cx

    ; Use BIOS timer to seed randomness
    mov ah, 00h
    int 1ah   ; Get system timer count in CX:DX

    xor ax, dx ; Combine DX with AX to mix the seed
    xor ax, cx ; Add further variability using CX
    xor ax, [unique_seed] ; Add a custom seed to avoid linear progression

    ; Apply a pseudo-random scrambling technique
    mul word [multiplier] ; Multiply with a custom value to shuffle bits
    add ax, [off]      ; Add an offset for extra non-linearity
    xor ax, [scrambler]   ; Scramble bits with XOR

    mov bx, [bp+4]            ; Modulo base (range control)
    xor dx, dx            ; Clear DX before division
    div bx                ; AX / BX, remainder in DX

    ; Store result in DI
    mov di, dx

    ; Update seed for next call
    add word [unique_seed], dx ; Change the seed dynamically

    pop cx
    pop bx
    pop dx
    pop ax
	pop bp
    ret 2

unique_seed: dw 0x2457      ; Seed value that evolves over time
multiplier:  dw 0x3A2D      ; Multiplier for scrambling
off:     dw 0x5B        ; Offset for non-linearity
scrambler:   dw 0x1F9C      ; XOR scrambler value



print_grid_outlines:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push es
	push di
	
	mov ax, 0xb800
	mov es, ax
	xor di, di
	
	mov dx, 0 
	mov bx, 0 
outer_loop_2_grid_outline:
	mov ax, 80
	mul dl
	shl ax, 1
	mov di, ax
	add di, 2
	mov ah, 0x71
	mov al, '-'
	mov cx, 53
	
	cmp bx, 0
	jnz skip_first_row
		mov ah, 0x17
		mov cx, 55
		sub di, 2
		
	skip_first_row:	
		cmp bx, 3
			jnz skip_twelfth_row
			mov ah, 0x17
			mov cx, 55
			sub di, 2
		skip_twelfth_row:
			cmp bx, 6
			jnz skip_last_row
				mov ah, 0x17
				mov cx, 55
				sub di, 2
			skip_last_row:
	
	cld
	inner_loop_2_grid_outline:
		stosw
		loop inner_loop_2_grid_outline
	
	add dx, 4
	inc bx
	cmp bx, 6
	jnz outer_loop_2_grid_outline
	
	mov dx, 1
	
outer_loop_grid_outline:
	mov ax, 80
	mul dl
	shl ax, 1
	mov bx, 0
	mov di, ax
	mov ah, 0x71
	mov al, '|'

	inner_loop_grid_outline:
		mov ah, 0x71
		mov al, '|'
		
		cmp dx, 12
		jnz skip_twelfth_row_in_horizontal_printing
			mov ah, 0x17
		skip_twelfth_row_in_horizontal_printing:
		
		cmp bx, 0
		jnz skip_first_column
			mov ah, 0x17
		skip_first_column:
			cmp bx, 3
			jnz skip_third_column
				mov ah, 0x17
			skip_third_column:
				cmp bx, 6
				jnz skip_sixth_column
					mov ah, 0x17
				skip_sixth_column:		
					cmp bx, 9
					jnz skip_last_column
						mov ah, 0x17
					skip_last_column:
		
		mov [es:di], ax
		add di, 12
		
		inc bx
		cmp bx, 10
		jnz inner_loop_grid_outline
	
	inc dx
	cmp dx, 25
	jnz outer_loop_grid_outline
	
	mov cx, 55
	mov dx, 24
	mov ax, 80
	shl ax, 1
	mul dl
	mov di, ax
	mov ah, 0x17
	mov al, '-'
	extra_loop_for_last_row:
		stosw
		loop extra_loop_for_last_row
		
	pop di
	pop es
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret
	
printNewDigit:
    push bp             
    mov bp, sp             

    push ax

    mov ax,[bp+8]; the number we are gonna print 
	cmp ax,1
	je printOneNew
	cmp ax,2
	je printTwoNew
	cmp ax,3
	je printThreeNew
	cmp ax,4
	je printFourNew
	cmp ax,5
	je printFiveNew
	cmp ax,6
	je printSixNew
	cmp ax,7
	je printSevenNew
	cmp ax,8
	je printEightNew
	cmp ax,9
	je printNineNew
	
	printOneNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [one_size]     
		mov ax,one_y_coordinates 
		push ax
		mov ax,one_x_coordinates 
		push ax
		call printDigit
	
	jmp exitFromPrintingNewDigit
	
	printTwoNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [two_size]     
		mov ax,two_y_coordinates 
		push ax
		mov ax,two_x_coordinates 
		push ax
		call printDigit
	jmp exitFromPrintingNewDigit
	
	printThreeNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [three_size]     
		mov ax,three_y_coordinates 
		push ax
		mov ax,three_x_coordinates 
		push ax
		call printDigit
	jmp exitFromPrintingNewDigit
	
	printFourNew:

	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [four_size]     
		mov ax,four_y_coordinates 
		push ax
		mov ax,four_x_coordinates 
		push ax
		call printDigit
		
	   jmp exitFromPrintingNewDigit
		
	printFiveNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [five_size]     
		mov ax,five_y_coordinates 
		push ax
		mov ax,five_x_coordinates 
		push ax
		call printDigit
	
	jmp exitFromPrintingNewDigit
	
	printSixNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [six_size]     
		mov ax,six_y_coordinates 
		push ax
		mov ax,six_x_coordinates 
		push ax
		call printDigit
		
	jmp exitFromPrintingNewDigit
	
	printSevenNew:
	
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [seven_size]     
		mov ax,seven_y_coordinates 
		push ax
		mov ax,seven_x_coordinates 
		push ax
		call printDigit
	
	jmp exitFromPrintingNewDigit
	
	printEightNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [eight_size]     
		mov ax,eight_y_coordinates 
		push ax
		mov ax,eight_x_coordinates 
		push ax
		call printDigit
	
	
	jmp exitFromPrintingNewDigit
	
	printNineNew:
	    mov ax,[bp+6]
		push ax
	    mov ax,[bp+4] ; COLOR 
		push ax
		push word [nine_size]     
		mov ax, nine_y_coordinates 
		push ax
		mov ax,nine_x_coordinates 
		push ax
		call printDigit
	
	jmp exitFromPrintingNewDigit
	
	
	
	exitFromPrintingNewDigit:


	pop ax
    pop bp                
    ret 6 
	
printDigit:
    push bp             
    mov bp, sp             

    push es                
    push di
    push ax
    push dx
    push bx
	push cx

    mov ax, 0xb800         
    mov es, ax             

    ; Parameters from the stack:
    ; [bp+4]  = Address of X coordinates array
    ; [bp+6]  = Address of Y coordinates array
    ; [bp+8]  = Size s

    mov si, [bp+4]         ; Load X coordinates array address
    mov bx, [bp+6]         ; Load Y coordinates array address
    mov cx, [bp+8]         ; Load size 

	mov di, 0

printDigit_loop:
    mov ax, 80
    mov dx, [bx]
    mul dl

    add ax, [si]           
    shl ax, 1             
    mov di, ax             

    mov ah,[bp+10]; color  
    mov al, [bp+12]
    mov [es:di], ax
	add bx, 2
	add si, 2
    loop printDigit_loop

	pop cx
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    pop bp                
    ret 10            

printCustomKeyboard:
	push ax
	
	    mov ax,' '
		push ax
	    mov ax,0x17
		push ax
		push word [one_size]     
		mov ax,one_y_coordinates 
		push ax
		mov ax,one_x_coordinates 
		push ax
		call printDigit
		
		mov ax,' '
		push ax
		mov ax,0x17
		push ax
		push word [two_size]
		mov ax, two_y_coordinates
		push ax
		mov ax, two_x_coordinates
		push ax
		call printDigit
		
		mov ax,' '
		push ax
		mov ax,0x17
		push ax
		push word [three_size]
		mov ax, three_y_coordinates
		push ax
		mov ax, three_x_coordinates
		push ax
		call printDigit
		
		mov ax,' '
		push ax
		mov ax,0x17
		push ax
		push word [four_size]
		mov ax, four_y_coordinates
		push ax
		mov ax, four_x_coordinates
		push ax
		call printDigit		
		
		mov ax,' '
		push ax
		mov ax,0x17
		push ax
		push word [five_size]
		mov ax, five_y_coordinates
		push ax
		mov ax, five_x_coordinates
		push ax
		call printDigit
		
		mov ax,' '
		push ax
		mov ax,0x17
		push ax
		push word [six_size]
		mov ax, six_y_coordinates
		push ax
		mov ax, six_x_coordinates
		push ax
		call printDigit
		
		mov ax,' '
		push ax
		mov ax,0x17
		push ax
		push word [seven_size]
		mov ax, seven_y_coordinates
		push ax
		mov ax, seven_x_coordinates
		push ax
		call printDigit

        mov ax,' '
		push ax
        mov ax,0x17
		push ax
		push word [eight_size]
		mov ax, eight_y_coordinates
		push ax
		mov ax, eight_x_coordinates
		push ax
		call printDigit		

        mov ax,' '
		push ax
        mov ax,0x17
		push ax
		push word [nine_size]
		mov ax, nine_y_coordinates
		push ax
		mov ax, nine_x_coordinates
		push ax
		call printDigit
		
	pop ax
	ret
	 
printSmallDigit:
	push bp
	mov bp,sp
	push ax
	push bx
	push dx
	push cx
	push es


	mov ah,0x13
	mov al,1
	mov bh,0
	mov bl,0x71
	mov dx,[bp+6]; position row col 
	mov cx,1; aik hi number hai
	push cs
	pop es

	mov bp,[bp+4]; the number to be printed 
	add bp,0x30; convert to ascii 
	mov [tempvar],bp
	mov bp,tempvar

	int 0x10

	pop es
	pop cx
	pop dx
	pop bx
	pop ax
	pop bp
	ret 4 

printSmallDigitExtra:
	push bp
	mov bp,sp
	push ax
	push bx
	push dx
	push cx
	push es

	push ds
	pop es

	mov ax, 55
	mov bx, [bp+6]
	mul bh
	mov bh, 0
	add ax, bx
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	
	mov ah, 0x71
	mov bx, [bp + 4]
	add bx, 0x30
	mov al, bl
	mov [es:di], ax

	pop es
	pop cx
	pop dx
	pop bx
	pop ax
	pop bp
	ret 4 

CheckIntoBox:
	push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push di
	push si
	
    mov si,0

	finding_grid_box_loop:
	mov ax,[bp+6]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_loop:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_outerloop:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_innerloop:; x ka
				cmp ax,bx
				je OutOfFindingMidLoop
				add bl,6
				add cl,1
				cmp cl,3
				jnz finding_mid_for_checkboxes_innerloop
				add bh,4
				sub bl,18; check this in case of error 
				
			add ch,1
			cmp ch,3
		jnz finding_mid_for_checkboxes_outerloop
		
		
	inc si
	cmp si, [mid_of_boxes_size]
	jnz finding_mid_for_checkboxes_loop
	
	OutOfFindingMidLoop:
	mov bl,[mid_of_boxes_x_coordinates+si]
	mov bh,[mid_of_boxes_y_coordinates+si]
	sub bl,6
	sub bh,4
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
	mov ax,0xb800
	mov es,ax
	mov ax,80
	
	mul bh; y axis 
	mov bh,0
	add ax,bx
	shl ax,1
	mov di,ax
	
	mov si,[bp+4]; value to check 
	
	mov ch,0
	check_mid_surroundings_outerloop:; y ka loop
		mov cl,0
		check_mid_surroundings_innerloop:; x ka
			cmp [es:di],si
			jnz skip_while_checking_mids
				mov dx,1
				jmp OutOfCheckMidSurroundings
		skip_while_checking_mids:
			add di,12
			add cl,1
			cmp cl,3
		jnz check_mid_surroundings_innerloop
			add di,640
			sub di,36; check this in case of error
				
			add ch,1
			cmp ch,3
		jnz check_mid_surroundings_outerloop
		
   OutOfCheckMidSurroundings:
	pop si
	pop di
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4 

CheckIntoBoxExtra:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push es
	push di
	push si
	
    mov si,0

	finding_grid_box_extra_loop:
	mov ax,[bp+6]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_extra_loop:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_extra_outerloop:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_extra_innerloop:; x ka
				cmp ax,bx
				je OutOfFindingMidLoop_extra
				add bl,6
				add cl,1
				cmp cl,3
				jnz finding_mid_for_checkboxes_extra_innerloop
				add bh, 4
				sub bl, 18; check this in case of error 
				
			add ch,1
			cmp ch,3
		jnz finding_mid_for_checkboxes_extra_outerloop
		
		
	inc si
	cmp si, [mid_of_boxes_extra_size]
	jnz finding_mid_for_checkboxes_extra_loop
	
	OutOfFindingMidLoop_extra:
	mov bl, [mid_of_boxes_x_coordinates+si]
	mov bh, [mid_of_boxes_y_coordinates+si]
	sub bl, 6
	sub bh, 4
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
	push ds
	pop es

	mov ax,55
	
	mul bh; y axis 
	mov bh, 0
	add ax, bx
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	
	mov si, [bp+4]; value to check 
	
	mov ch, 0
	check_mid_surroundings_outerloop_extra:; y ka loop
		mov cl, 0
		check_mid_surroundings_innerloop_extra:; x ka
			cmp [es:di], si
			jnz skip_while_checking_mids_extra
				mov dx, 1
				jmp OutOfCheckMidSurroundings_extra
		skip_while_checking_mids_extra:
			add di, 12
			add cl, 1
			cmp cl, 3
		jnz check_mid_surroundings_innerloop_extra
			add di, 220
			sub di, 36; check this in case of error
				
			add ch,1
			cmp ch,3
		jnz check_mid_surroundings_outerloop_extra
		
   OutOfCheckMidSurroundings_extra:
	pop si
	pop di
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4 

CheckIntoColumns:
	push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si,0
	mov word [tempWordvar],0
	mov cx,2; y axis 
	mov ax,[bp+6] ; position 
	mov [tempWordvar], al ; x axis 
	mov ax,0
	mov al,80
	mul cl
	add ax,[tempWordvar]
	shl ax,1
	mov di,ax

	mov bx,[bp+4]; the element or number to be compared 
	; after this our xcoordinate will be in al which means ax 
	mov ax,0xb800
	mov es,ax 
	add bx,0x30
	mov bh,0x71; attribute byte 
	checkColumnLoop:
		cmp [es:di],bx
		jnz checkColumnBreak
		mov dx,1; break loop if match found 
	jmp returnFromCheckColumn
	checkColumnBreak:
		add di,640
		inc si
		cmp si,6
	jnz checkColumnLoop
	
	returnFromCheckColumn:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4 

CheckIntoColumnsExtra:
	push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si, 0
	mov word [tempWordvar], 0
	mov cx, 2; y axis 
	mov ax, [bp+6] ; position 
	mov [tempWordvar], al ; x axis 
	mov ax, 0
	mov al, 55
	mul cl
	add ax, [tempWordvar]
	shl ax, 1
	mov di, lowerScreen
	add di, ax

	mov bx, [bp+4]; the element or number to be compared 
	; after this our xcoordinate will be in al which means ax 
	push ds
	pop es
	add bx, 0x30
	mov bh, 0x71; attribute byte 
	checkColumnLoopExtra:
		cmp [es:di], bx
		jnz checkColumnBreakExtra
			mov dx, 1 ; break loop if match found 
			jmp returnFromCheckColumnExtra
	checkColumnBreakExtra:
		add di, 220
		inc si
		cmp si, 3
	jnz checkColumnLoopExtra
	
	returnFromCheckColumnExtra:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4 


CheckIntoColumnsExtraUpper:
	push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si, 0
	mov word [tempWordvar], 0
	mov cx, 2; y axis 
	mov ax, [bp+6] ; position
	mov [tempWordvar], al ; x axis 
	mov ax, 0
	mov al, 55
	mul cl
	add ax, [tempWordvar]
	shl ax, 1
	mov di, upperScreen
	add di, ax

	mov bx, [bp+4]; the element or number to be compared 
	; after this our xcoordinate will be in al which means ax 
	push ds
	pop es
	add bx, 0x30
	mov bh, 0x71; attribute byte 
	checkColumnLoopExtraUpper:
		cmp [es:di], bx
		jnz checkColumnBreakExtraUpper
			mov dx, 1 ; break loop if match found 
			jmp returnFromCheckColumnExtraUpper
	checkColumnBreakExtraUpper:
		add di, 220
		inc si
		cmp si, 3
	jnz checkColumnLoopExtraUpper
	
	returnFromCheckColumnExtraUpper:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4 

checkIntoRows:
	push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si,0
	mov cx,[bp+6]; position
	mov ax,0
	mov al,80
	mul ch
	mov ch, 0
	add ax, 3
	shl ax,1
	mov di,ax

	mov bx,[bp+4]; the element or number to be compared 
	; after this our x-coordinate will be in al which mneans ax 
	mov ax,0xb800
	mov es,ax 
	add bx,0x30
	mov bh,0x71; attribute byte 
	
	checkRowsLoop:
		mov cx, [es:di]
		cmp [es:di],bx
		jnz checkRowsBreak
			mov dx,1; break loop if match found 
			jmp returnFromCheckRow
		checkRowsBreak:
			add di,12
			inc si
			cmp si,9
	jnz checkRowsLoop

	returnFromCheckRow:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4 

IsAValidMove:
	;[bp+4] : Row
	;[bp+6] : Col
	;[bp+8] : Number

	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	
	mov ax, [bp + 4]
	mov ah, al
	mov al, 0
	
	mov dx, [bp + 6]
	mov al, dl
	
	mov bx, [bp + 8]
	
	mov dx, 0
	
	push ax
	push bx
	call checkIntoRows
	
	cmp dx, 1
	jz exitFromIsAValidMove
	
	push ax
	push bx
	call CheckIntoColumns	
	
	cmp dx, 1
	jz exitFromIsAValidMove	
	
	cmp word [isUp], 1
	jnz checkForUpperScreenInIsAValidMove
	
	push ax
	push bx
	call CheckIntoColumnsExtra
	
	cmp dx, 1
	jz exitFromIsAValidMove
	
	jmp skipCheckForUpperScreenInIsAValidMove
	
checkForUpperScreenInIsAValidMove:
	push ax
	push bx
	
	call CheckIntoColumnsExtraUpper
	
	cmp dx, 1
	jz exitFromIsAValidMove
	
skipCheckForUpperScreenInIsAValidMove:
	cmp dx, 1
	jz exitFromIsAValidMove
	
	push ax
	add bx, 0x30
	mov bh, 0x71
	push bx
	call CheckIntoBox
	
	cmp dx, 1
	jz exitFromIsAValidMove
	
	mov dx, 0
	
exitFromIsAValidMove:
	
	pop cx
	pop bx
	pop ax
	pop bp
	ret 6
	

checkIntoRowsExtra:
	push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si, 0
	mov cx, [bp+6]; position
	mov ax, 0
	mov al, 55
	mul ch
	mov ch, 0
	add ax, 3
	shl ax, 1
	mov di, lowerScreen
	add di, ax

	mov bx, [bp+4]; the element or number to be compared 
	; after this our x-coordinate will be in al which mneans ax 
	push ds
	pop es
	add bx, 0x30
	mov bh, 0x71; attribute byte 
	
	checkRowsLoopExtra:
		mov cx, [es:di]
		cmp [es:di] , bx
		jnz checkRowsBreakExtra
			mov dx, 1; break loop if match found 
			jmp returnFromCheckRowExtra
		checkRowsBreakExtra:
			add di, 12
			inc si
			cmp si, 9
	jnz checkRowsLoopExtra

	returnFromCheckRowExtra:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4	
printNumbersinGrid:
    push bp       
    mov bp, sp             
    push es
    push di
    push ax
    push dx
    push bx
	push cx
	push si
	
    mov cx, [levelShuffleCount]; no of elements to insert in grid 25 
	mov di,0 ; index of possiblepostions 
	mov si,0 ;index for numbers array 
	mov bx,0; storing number but just in case bh mein kuch ho toh 0 kardo 
	printNumber_outerLoop: ; the one that will run 25 martaba 
		; check row 
		push word [possible_positions_size]
		call generate_random_number_for_di
		call sleep; because the time wasnt changing so fast
		call sleep
		call sleep 
		call sleep 
		;mov bl,[solvedSudukoArray+di] ; the number we want to insert
		mov bx,[bp+4]
		add bx,di
		mov si,[bx]
		mov [tempvar],si
		mov bx,[tempvar]
		mov bh,0
		mov al,[possible_positions_x_coordinates+di]
		mov ah,[possible_positions_y_coordinates+di]
		mov dx,0; flag 
		push ax
		call isPlaceFreeForPrintingOrNot
		cmp dx, 1
		jz checkReturnedFalse
		
		; push ax; position to be checked 
		; push bx; number to check 
		; call checkIntoRows
		; cmp dx,1
		; jz checkReturnedFalse
		; push ax
		; push bx
		; call CheckIntoColumns
		; cmp dx,1
		; jz checkReturnedFalse		
		; push ax
		; push bx
		; call CheckIntoColumnsExtra
		; cmp dx,1
		; jz checkReturnedFalse
		; push ax
		; add bx, 0x30
	    ; mov bh,0x71
		; push bx
		; call CheckIntoBox
		; sub bx, 0x30
	    mov bh,0
		; cmp dx,1
		; jz checkReturnedFalse
		push ax; x-y coordinates 
		push bx 
		call printSmallDigit
		dec cx; 25-1 kardo ab
	checkReturnedFalse:
	; add si,1 ; numbers array 
	; cmp si,9
	; jnz NumersArrayDidNotEnd
		; mov si,0
	; NumersArrayDidNotEnd:
	; add di, 1
	; add si, 1
    cmp cx, 0
	jnz printNumber_outerLoop; jisne cx martaba chalna hai 
	
	
	mov cx, [levelShuffleCountExtra]
	
	mov di, 0 ; index of possiblepostions 
	mov si, 0 ;index for numbers array 
	mov bx, 0; storing number but just in case bh mein kuch ho toh 0 kardo 
	mov dx, 0
	xor di, di
	printNumber_outerLoop_extra: ; the one that will run 25 martaba 
		; check row 
		push word [possible_positions_extra_size]
		call generate_random_number_for_di
		call sleep; because the time wasnt changing so fast
		call sleep
		call sleep 
		call sleep 
		; mov bx, 0
		; mov bl, [solvedSudukoArray + di + 54] ; the number we want to insert
		mov bx,[bp+4]
		add bx,di
		add bx,54
		mov si,[bx]
		mov [tempvar],si
		mov bx,[tempvar]
		mov bh,0
		mov al, [possible_positions_x_coordinates + di]
		mov ah, [possible_positions_y_coordinates + di]
		mov dx, 0; flag 
		
		push ax
		call isPlaceFreeForPrintingOrNotExtra
		cmp dx, 1
		jz checkReturnedFalseExtra
		
		; push ax; position to be checked 
		; push bx; number to check 
		; call checkIntoRowsExtra
		; cmp dx,1
		; jz checkReturnedFalseExtra
		; push ax
		; push bx
		; call CheckIntoColumns
		; cmp dx, 1
		; jz checkReturnedFalseExtra		
		; push ax
		; push bx
		; call CheckIntoColumnsExtra
		; cmp dx, 1
		; jz checkReturnedFalseExtra
		; push ax
		; add bx, 0x30
		; mov bh, 0x71
		; push bx
		; call CheckIntoBoxExtra
		; sub bx, 0x30
		; mov bh, 0
		; cmp dx, 1
		; jz checkReturnedFalseExtra
		push ax; x-y coordinates 
		push bx 
		call printSmallDigitExtra
		dec cx; 25-1 kardo ab
	checkReturnedFalseExtra:
	; add si, 1 ; numbers array 
	; cmp si, 9
	; jnz NumersArrayDidNotEndExtra
		; mov si,0
	; NumersArrayDidNotEndExtra:
    cmp cx, 0
	jnz printNumber_outerLoop_extra; jisne cx martaba chalna hai 
	
	pop si
	pop cx
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    pop bp 
	
	ret 2
	
	
	
isPlaceFreeForPrintingOrNot:
	push bp
	mov bp, sp
	push ax
	push bx
	push es
	push di
	
	mov ax, 80
	mov bx, [bp + 4]
	mul bh
	mov bh, 0
	add ax, bx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, [es:di]
	cmp al, 0x31
	jb SkipResetingIsPlaceFreeForPrintingOrNot
	cmp al, 0x3A
	ja SkipResetingIsPlaceFreeForPrintingOrNot
	mov dx, 1
SkipResetingIsPlaceFreeForPrintingOrNot:
	
	pop di
	pop es
	pop bx
	pop ax
	pop bp
	ret 2
	
isPlaceFreeForPrintingOrNotExtra:
	push bp
	mov bp, sp
	push ax
	push bx
	push es
	push di
	
	mov ax, 55
	mov bx, [bp + 4]
	mul bh
	mov bh, 0
	add ax, bx
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	push ds
	pop es
	mov ax, [es:di]
	cmp al, 0x31
	jb SkipResetingIsPlaceFreeForPrintingOrNotExtra
	cmp al, 0x3A
	ja SkipResetingIsPlaceFreeForPrintingOrNotExtra
	mov dx, 1
SkipResetingIsPlaceFreeForPrintingOrNotExtra:
	
	pop di
	pop es
	pop bx
	pop ax
	pop bp
	ret 2
	
display_undo_erase_notes_buttons:
 
    push es
    push di
    push ax
    push dx
    push bx
    push si
	push cx


undo_button_print:
              
    mov ax,56; x
	push ax
	mov ax,1; y
	push ax
	mov ax,0X171F
	push ax
	mov ax,undo_string
	push ax
	push word [undo_length]
	call printstr
  
erase_button_print:  

    mov ax,64; x
	push ax
	mov ax,1; y
	push ax
	mov ax,0X171F
	push ax
	mov ax,erase_string
	push ax
	push word [erase_length]
	call printstr
	
notes_button_print:

    mov ax,72; x
	push ax
	mov ax,1 ;y
	push ax
	mov ax,0X171F
	push ax
	mov ax,notes_string
	push ax
	push word [notes_length]
	call printstr	

    pop cx
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es

	ret	
	

grid_setup:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push es
	push si
	push di
	push ds
	
	call clrscr_white
	
	mov ax,56; x
	push ax
	mov ax,3; y
	push ax
	mov ax,0X1771
	push ax
	mov ax, mistakes_string 
	push ax
	push word [mistakes_string_length]
	call printstr
	
	mov ax,66
	push ax
	mov ax,3
	push ax
	mov al,[mistakesCount]
	mov ah,0
	push ax
	call printnum
	
	mov ax,67; x
	push ax
	mov ax,3; y
	push ax
	mov ax,0X1771
	push ax
	mov ax, slashThree
	push ax
    mov ax,2
	push ax
	call printstr

	mov ax, 56; x
	push ax
	mov ax, 4; y
	push ax
	mov ax, 0X1771
	push ax
	mov ax, timer_string        
	push ax
	push word [timer_string_length]
	call printstr
	
	mov ax,56 ; x
	push ax
	mov ax, 5; y
	push ax
	mov ax, 0X1771
	push ax
	mov ax, score_string        
	push ax
	push word [score_string_length]
	call printstr
	
	mov ax, 63
	push ax
	mov ax, 5
	push ax
	mov al, [scoreCount]
	mov ah, 0
	push ax
	call printnum

	call print_grid_outlines
	
	mov ax, 1920
	push word ax
	push lowerScreen
	call saveScreen
	
	call printCustomKeyboard

	call display_undo_erase_notes_buttons
    
	mov di,0
	mov ax,3
	push ax
	call generate_random_number_for_di
	cmp di,1
	je  pushArray1
	cmp di,2
	je pushArray2
	cmp di,3
	je pushArray3
	
	pushArray1:
	mov si,solvedSudukoArray
	jmp letscallrandomfunc
	pushArray2:
	mov si,solvedSudukoArray2
	jmp letscallrandomfunc
	pushArray3:
	mov si,solvedSudukoArray3
	je letscallrandomfunc
	
	push si
	call RandomSwapFunction
	
	letscallrandomfunc:
	
	push si 
	call printNumbersinGrid
	
	pop ds
	pop di
	pop si
	pop es
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret

starting_screen_setup:
	call clrscr
	call starting_screen_background    
	call sudoku_starting_print
	call buttons_print
	ret

ending_screen_setup:
	call clrscr_white
	call draw_border
	call pause_print
	; mov ax,25; x
	; push ax
	; mov ax,12; y
	; push ax
	; mov ax,0X1771
	; push ax
	; mov ax, do_u_wanna_play_again
	; push ax
	; push word [do_u_wanna_play_again_length]
	; call printstr
	call gameover_print
	ret
	
printnum:	
	push bp
	mov bp, sp
	pusha
	mov ax, 0xb800
	mov es, ax ; point es to video base
	mov ax, [bp+4] ; load number in ax
	mov bx, 10 ; use base 10 for division
	mov cx, 0 ; initialize count of digits
nextdigit: 
	mov dx, 0 ; zero upper half of dividend
	div bx ; divide by 10
	add dl, 0x30 ; convert digit into ascii value
	push dx ; save ascii value on stack
	inc cx ; increment count of values
	cmp ax, 0 ; is the quotient zero
	jnz nextdigit ; if no divide it again
	mov ax,80
	mul byte [bp+6];row y
	add ax,[bp+8]; col x
	shl ax,1
	mov di,ax 
	nextpos:
	pop dx ; remove a digit from the stack
	mov dh, 0x71 ; use normal attribute
	mov [es:di], dx ; print char on screen
	add di, 2 ; move to next screen location
	loop nextpos ; repeat for all digits on stack
	
	popa
	pop bp
	ret 6	

RemoveNotesWhileInput:
	push bp
	mov bp, sp
	pusha
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	sub dx, 1
	sub cx, 2
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	sub dx, 1
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	sub dx, 1
	add cx, 2
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	sub cx, 2
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	add cx, 2
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	add dx, 1
	sub cx, 2
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	add dx, 1
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	mov ax, 80
	mov dx, [bp + 6]
	mov cx, [bp + 8]
	add dx, 1
	add cx, 2
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, 0x7120
	mov [es: di], ax
	
	popa
	pop bp
	ret 6

printnumRed:	
	push bp

	mov bp, sp
	pusha
	mov ax, 0xb800
	mov es, ax ; point es to video base
	mov ax, [bp+4] ; load number in ax
	mov bx, 10 ; use base 10 for division
	mov cx, 0 ; initialize count of digits
nextdigitRed: 
	mov dx, 0 ; zero upper half of dividend
	div bx ; divide by 10
	add dl, 0x30 ; convert digit into ascii value
	push dx ; save ascii value on stack
	inc cx ; increment count of values
	cmp ax, 0 ; is the quotient zero
	jnz nextdigitRed ; if no divide it again
	mov ax,80
	mul byte [bp+6];row y
	add ax,[bp+8]; col x
	shl ax,1
	mov di,ax 
	nextposRed:
	pop dx ; remove a digit from the stack
	mov dh, 0x74 ; use normal attribute
	mov [es:di], dx ; print char on screen
	add di, 2 ; move to next screen location
	loop nextposRed ; repeat for all digits on stack
	
	popa
	pop bp
	ret 6	

changeUndoButtonColorToRed:
    pusha
	
	mov ax, 56; x
	push ax
	mov ax, 1; y
	push ax
	mov ax, 0X174F
	push ax
	mov ax, undo_string
	push ax
	push word [undo_length]
	call printstr

	popa
	ret 
	
changeUndoButtonColorToBlue:
    pusha
	
	mov ax,56; x
	push ax
	mov ax,1; y
	push ax
	mov ax,0X171F
	push ax
	mov ax,undo_string
	push ax
	push word [undo_length]
	call printstr
	
	popa
	ret 
	
changeEraseButtonColorToRed:

    pusha
	
	mov ax, 64; x
	push ax
	mov ax, 1; y
	push ax
	mov ax, 0X174F
	push ax
	mov ax, erase_string
	push ax
	push word [erase_length]
	call printstr
	
	popa
	ret 
	
changeEraseButtonColorToBlue:
    pusha
	
	mov ax,64; x
	push ax
	mov ax,1; y
	push ax
	mov ax,0X171F
	push ax
	mov ax,erase_string
	push ax
	push word [erase_length]
	call printstr
	
	popa
	ret 
	
eraseFromGrid:
	push ax
	push bx
	push cx
	push dx
	push es
	push di
	push si
	call changeEraseButtonColorToRed
	
getInputToErase:	
	; inc word [ticksForEraseClick]
	; cmp word [ticksForEraseClick], 50
	; jb exitWithoutChangingEraseFromGrid
	mov bx, 0
	mov ax, 3
    int 33h
	
    shr cx, 3
    shr dx, 3
	
	cmp cx, [prevStateOfEraseButtonPoitionCheckX]
	jz nextCheckForPrevEraseButtonState
	jmp weAreOkayWithPrevEraseButtonState
nextCheckForPrevEraseButtonState:
	cmp dx, [prevStateOfEraseButtonPoitionCheckY]
	jz exitWithoutChangingEraseFromGrid

weAreOkayWithPrevEraseButtonState:
    test bx, 1
    jz exitWithoutChangingEraseFromGrid

	mov si, 0
    mov bl, [possible_positions_x_coordinates + si]
    mov al, cl  

check_position:
    cmp bl, al
    jne checkSurrounding1
    mov bl, [possible_positions_y_coordinates + si]  
    cmp bl, dl
    je performErase
checkSurrounding1:
	mov bl, [possible_positions_x_coordinates + si]
	sub bl, 2
	cmp bl, al
	jne checkSurrounding2
	mov bl, [possible_positions_y_coordinates + si]
	sub bl, 1
	cmp bl, dl
	je performErase
checkSurrounding2:
	mov bl, [possible_positions_x_coordinates + si]
	cmp bl, al
	jne checkSurrounding3
	mov bl, [possible_positions_y_coordinates + si]
	sub bl, 1
	cmp bl, dl
	je performErase
checkSurrounding3:
	mov bl, [possible_positions_x_coordinates + si]
	add bl, 2
	cmp bl, al
	jne checkSurrounding4
	mov bl, [possible_positions_y_coordinates + si]
	sub bl, 1
	cmp bl, dl
	je performErase
checkSurrounding4:
	mov bl, [possible_positions_x_coordinates + si]
	sub bl, 2
	cmp bl, al
	jne checkSurrounding5
	mov bl, [possible_positions_y_coordinates + si]
	cmp bl, dl
	je performErase
checkSurrounding5:
	mov bl, [possible_positions_x_coordinates + si]
	add bl, 2
	cmp bl, al
	jne checkSurrounding6
	mov bl, [possible_positions_y_coordinates + si]
	cmp bl, dl
	je performErase
checkSurrounding6:
	mov bl, [possible_positions_x_coordinates + si]
	sub bl, 2
	cmp bl, al
	jne checkSurrounding7
	mov bl, [possible_positions_y_coordinates + si]
	add bl, 1
	cmp bl, dl
	je performErase
checkSurrounding7:
	mov bl, [possible_positions_x_coordinates + si]
	cmp bl, al
	jne checkSurrounding8
	mov bl, [possible_positions_y_coordinates + si]
	add bl, 1
	cmp bl, dl
	je performErase
checkSurrounding8:
	mov bl, [possible_positions_x_coordinates + si]
	add bl, 2
	cmp bl, al
	jne next_position
	mov bl, [possible_positions_y_coordinates + si]
	add bl, 1
	cmp bl, dl
	je performErase

next_position:
    inc si
    mov bl, [possible_positions_x_coordinates + si]
    cmp si, 55           
    je invalidPosition   
    jmp check_position 
	
performErase:    
	mov ax, 0
	int 33h
    mov ax, 0xb800
	mov es, ax
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0x7020
	mov al, ' '
	mov si,[es:di]
	mov [es:di], ax
	mov byte [eraseButtonFlag], 0
	mov ax, 1
	int 33h
	
	push ax
	push bx
	
	mov ax, 0
	int 33h
	mov bx, [stackPointer]
    
	mov ax, cx ; COL
	mov [stack+ bx], ax  
    sub bx, 2 
	mov ax, dx ; ROW
	mov [stack+ bx], ax  
	sub bx, 2
	mov ax, [isUp] ; IS UP FLAG 
    mov [stack+bx], ax  
	sub bx, 2   
	mov word [stack+bx], si  ; THE VALUE THAT WAS PREV THERE
	sub bx, 2
	mov word[stack+bx], 1 ; indicates that erase was done which we gonna undo 
	sub bx, 2
	
	mov word [stackPointer], bx
	mov ax, 1
	int 33h
	pop bx
	pop ax
	

invalidPosition:

exitingaftererasingfromgrid:
	call changeEraseButtonColorToBlue

exitWithoutChangingEraseFromGrid:

	pop si
	pop di
	pop es
	pop dx
	pop cx
	pop bx
	pop ax
	
    ret
	
changeNotesButtonColorToBlue:
    pusha
	
	mov ax, 0
	int 33h
	
	mov ax, 72; x
	push ax
	mov ax, 1; y
	push ax
	mov ax, 0X171F
	push ax
	mov ax, notes_string
	push ax
	push word [notes_length]
	call printstr
	
	mov ax, 1
	int 33h
	
	popa
	ret

changeNotesButtonColorToRed:
    pusha
	
	mov ax, 0
	int 33h
	
	mov ax,72; x
	push ax
	mov ax,1; y
	push ax
	mov ax,0X174F
	push ax
	mov ax,notes_string
	push ax
	push word [notes_length]
	call printstr
	
	mov ax, 1
	int 33h
	
	popa
	ret

TakeNotesStatusChanger:
	pusha

	mov ax, 1
    int 33h
	
    mov ax, 3 
    int 33h
	
    shr cx, 3
    shr dx, 3
	
	cmp word [prevStateOfNotesButtonPoitionCheckX], cx
	jne resetIsNotesAtAValidPlace
	cmp word [prevStateOfNotesButtonPoitionCheckY], dx
	jne resetIsNotesAtAValidPlace
	jmp skipResetingIsNotesAtAValidPlace
resetIsNotesAtAValidPlace:
	mov word [isNotesAtAValidPlace], 0
skipResetingIsNotesAtAValidPlace:

    test bx, 1
    jz exitFromMouseCheckTakeNotesStatusChanger

	mov si, 0
TakeNotesStatusChangerLoop1:
	cmp cl, [possible_positions_x_coordinates + si]
	je foundInXCoordinateInTakeNotesStatusChanger
	inc si
	cmp si, 54
	jne TakeNotesStatusChangerLoop1
	jmp exitFromMouseCheckTakeNotesStatusChanger
	
foundInXCoordinateInTakeNotesStatusChanger:
	mov si, 0
	
TakeNotesStatusChangerLoop2:
	cmp dl, [possible_positions_y_coordinates + si]
	je foundInYCoordinateInTakeNotesStatusChanger
	inc si
	cmp si, 54
	jne TakeNotesStatusChangerLoop2
	jmp exitFromMouseCheckTakeNotesStatusChanger

foundInYCoordinateInTakeNotesStatusChanger:
	
performCheckForIsValidPlaceForNotes:
	push cx
	push dx
	call isAValidPlaceForNotesFunc
	; call clrscr
	cmp si, 0 ; Not a Valid Place
	jz exitFromMouseCheckTakeNotesStatusChanger
	
performNotesOperation:
	mov word [isNotesAtAValidPlace], 1
	mov word [prevStateOfNotesButtonPoitionCheckY], dx
	mov word [prevStateOfNotesButtonPoitionCheckX], cx

exitFromMouseCheckTakeNotesStatusChanger:
    popa
    ret

isAValidPlaceForNotesFunc:
	;if A valid place to put notes then return 1 else return 0
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push di
	push es
	
	mov ax, 0
	int 33h
	
	
	mov ax, 80
	mov dx, [bp + 4]
	mul dl
	mov cx, [bp + 6]
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov ax, [es:di]
	push ax
	
	mov ax, 1
	int 33h
	shl cx, 3
	shl dx, 3
	
	mov ax, 4
	int 33h
	
	pop ax
	mov cx, [bp + 6]
	mov dx, [bp + 4]
	mov si, 0
	mov bh, 0x71
	mov bl, 0x31
	mov cx, 9
	
isAValidPlaceForNotesLoop1:
	cmp bx, ax
	je isAValidPlaceForNotesSkip
	add bl, 1
	loop isAValidPlaceForNotesLoop1
	mov cx, 9
	mov bh, 0x74
	mov bl, 0x31
isAValidPlaceForNotesLoop2:
	cmp bx, ax
	je isAValidPlaceForNotesSkip
	add bl, 1
	loop isAValidPlaceForNotesLoop2
	
	mov si, 1;if not found it will make it 0

isAValidPlaceForNotesSkip:

	pop es
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4

GetNotesStatus:
	pusha
	mov ax, 1
	int 33h
	mov ax, 3
	int 33h
	
	shr cx, 3
	shr dx, 3
	cmp dx, 1
	jne exitFromNotesButtonStatusChanger
	
	cmp cx, 72
	jb exitFromNotesButtonStatusChanger
	
	cmp cx, 78
	ja exitFromNotesButtonStatusChanger
	
	cmp word [notesButtonFlag], 1
	je checkForRightButtonForNotes
	;Notes Button was off
	test bx, 1;left button was pressed
	jz checkForRightButtonForNotes
	mov word [notesButtonFlag], 1	
	call changeNotesButtonColorToRed
	
checkForRightButtonForNotes:
	;Notes Button was on
	test bx, 2
	jz exitFromNotesButtonStatusChanger
	mov word [notesButtonFlag], 0
	call changeNotesButtonColorToBlue
	
exitFromNotesButtonStatusChanger:
	
	popa
	ret
	
GetEraseStatus:
    pusha

    mov ax, 1
    int 33h

MouseCheck:
    mov ax, 3 
    int 33h

    test bx, 1
    jz exitFromEraseButtonCheck

    shr cx, 3 
    shr dx, 3
	
	cmp dx, 1 
    jne NotEraseButton

    cmp cx, 64
    jl NotEraseButton
    cmp cx, 70
    jg NotEraseButton

    mov word [eraseButtonFlag], 1
	mov ax, 1
	int 33h
	mov [prevStateOfEraseButtonPoitionCheckX], cx
	mov [prevStateOfEraseButtonPoitionCheckY], dx
    jmp exitFromEraseButtonCheck

NotEraseButton:
    mov word [eraseButtonFlag], 0 

exitFromEraseButtonCheck:

    popa
    ret

TakeInputStatusChanger:
    pusha
    
	mov ax, 1 
    int 33h
	
    mov ax, 3 
    int 33h

    test bx, 1
    jz exitFromMouseCheckTakeInputStatusChanger

    shr cx, 3
    shr dx, 3

	mov si, 0
    mov bl, [possible_positions_x_coordinates + si]  
    mov al, cl  

check_positionTakeInputStatusChanger:
    cmp bl, al         
    jne next_positionTakeInputStatusChanger
    mov bl, [possible_positions_y_coordinates + si]  
    cmp bl, dl         
    je performInputOperation     

next_positionTakeInputStatusChanger:
    inc si
    mov bl, [possible_positions_x_coordinates + si]  
    cmp si, 55
    je exitFromMouseCheckTakeInputStatusChanger
    jmp check_positionTakeInputStatusChanger

performInputOperation:
	mov byte [takingInputFlag], 1
	
	mov word [prevStateOfInputPoitionCheckY], dx
	mov word [prevStateOfInputPoitionCheckX], cx

exitFromMouseCheckTakeInputStatusChanger:

    popa
    ret
	

GetUndoStatus:
    pusha
    mov ax, 1
    int 33h
    

UndoCheck:
    mov ax, 3 
    int 33h

    test bx, 1
    jz exitFromUndoButtonCheck

    shr cx, 3 
    shr dx, 3
	
	cmp dx, 1 
    jne NotUndoButton

    cmp cx, 56
    jl NotUndoButton
    cmp cx, 62 
    jg NotUndoButton

    mov word [isUndoClicked], 1
	
    jmp exitFromUndoButtonCheck

NotUndoButton:
    mov word [isUndoClicked], 0 

exitFromUndoButtonCheck:
  
    popa
    ret

performUndo:
	pusha
	
	mov bx, [stackPointer]
	add bx, 2
	mov ax, [stack+bx]
	cmp ax, 2
	jne performEraseUndo
performInputUndo:
    add bx, 2
	mov ax, [stack+bx]; the value that needs to be placed back 
	add bx, 2
	mov [tempvar], ax 
	mov ax, [stack+bx]; is up ka flag
	cmp ax, 1
	jne ScreenNotUpForUndo
    cmp byte [isUp], 1
	jne DownHouaWAhAI
    ;Up Up Case
	add bx, 2
	mov dx, [stack + bx]; row
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack + bx]; add col
	shl ax, 1
	mov di, ax
		    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	
	mov cx, [stack + bx]
	sub bx, 2
	mov dx, [stack + bx]
	add bx, 2
	mov [stackPointer], bx
	
	; push word [stack + bx]
	; pop word [es:0]
	
	push dx
	push cx
	call PopSurroundingNotes
	
	mov bx, [stackPointer]
	add bx, 2
	mov ax, [stack + bx]
	mov [stackPointer], bx ;row, col, subgrid
	
	push dx
	push ax
	call PopValuesOfNotesFromRowInStackUpUpCase	
	
	push cx
	push ax
	call PopValuesOfNotesFromColInStackUpUpCase
	
	mov bx, cx
	mov bh, dl
	push bx
	push ax
	call PopValuesOfNotesFromSubGridInStackUpUpCase
	
	jmp ExitFromPerformUndo
	
DownHouaWAhAI:
	;Up Down Case
	add bx, 2
	mov dx, [stack+bx]; row
	cmp dx, 13
	ja DownHouaWAhAICase1
	; Upper Screen main sy remove krna
	mov ax, 55
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, upperScreen
	add di, ax
	push cs
	pop es
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	
	
	mov cx, [stack + bx]
	sub bx, 2
	mov dx, [stack + bx]
	add bx, 2
	
	mov [stackPointer], bx
	
	add word [stackPointer], 68
	
	; push word upperScreen
	; push dx
	; push cx
	; call PopSurroundingNotesScreen
	
	
	; mov cx, [stack + bx]
	; sub bx, 2
	; mov dx, [stack + bx]
	; add bx, 2
	
	; add bx, 2
	; mov ax, [stack + bx]
	; mov [stackPointer], bx ;row, col, subgrid
	
	; push dx
	; push ax
	; call PopValuesOfNotesFromRowInStackUpDownCase1	
	
	; push cx
	; push ax
	; call PopValuesOfNotesFromColInStackUpDownCase1
	
	; mov bx, cx
	; mov bh, dl
	; push bx
	; push ax
	; call PopValuesOfNotesFromSubGridInStackUpDownCase1
	
	jmp ExitFromPerformUndo
	
DownHouaWAhAICase1:
	; Video memory sy hi remove krna
	sub dx, 12
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax	    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	
	; mov cx, [stack + bx]
	; sub bx, 2
	; mov dx, [stack + bx]
	; add bx, 2
	
	; mov [stackPointer], bx
	
	; sub dx, 12
	
	; push dx
	; push cx
	; call PopSurroundingNotes
	
	; mov cx, [stack + bx]
	; sub bx, 2
	; mov dx, [stack + bx]
	; add bx, 2
	
	; add bx, 2
	; mov ax, [stack + bx]
	; mov [stackPointer], bx ;row, col, subgrid
	
	; sub dx, 12
	
	; push dx
	; push ax
	; call PopValuesOfNotesFromRowInStackUpUpCase
	
	; push cx
	; push ax
	; call PopValuesOfNotesFromColInStackUpDownCase1
	
	; mov bx, cx
	; mov bh, dl
	; push bx
	; push ax
	; call PopValuesOfNotesFromSubGridInStackUpUpCase
	
	mov [stackPointer], bx
	
	add word [stackPointer], 68
	
	jmp ExitFromPerformUndo

ScreenNotUpForUndo:
	cmp byte [isUp], 1
	jne DownHouaWAhAIYeBhi
    ;Down Up Case
	add bx, 2
	mov dx, [stack+bx]; row
	cmp dx, 13
	jb ScreenNotUpForUndoCase1
	; lower Screen main sy remove krna
	sub dx, 12
	mov ax, 55
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	push cs
	pop es
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	
	; mov cx, [stack + bx]
	; sub bx, 2
	; mov dx, [stack + bx]
	; add bx, 2
	
	; mov [stackPointer], bx
	
	; sub dx, 12
	
	; push word lowerScreen
	; push dx
	; push cx
	; call PopSurroundingNotesScreen
	
	
	
	mov [stackPointer], bx
	add word [stackPointer], 68
	jmp ExitFromPerformUndo
	
ScreenNotUpForUndoCase1:
	; Video memory sy hi remove krna
	add dx, 12
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax	    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	
	; mov cx, [stack + bx]
	; sub bx, 2
	; mov dx, [stack + bx]
	; add bx, 2
	
	; mov [stackPointer], bx
	
	; add dx, 12
	
	; push dx
	; push cx
	; call PopSurroundingNotes
	
	
	mov [stackPointer], bx
	add word [stackPointer], 68
	
	jmp ExitFromPerformUndo
	

DownHouaWAhAIYeBhi:;Down Down Case
	add bx, 2
	mov dx, [stack+bx]; row
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax
		    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 

	mov cx, [stack + bx]
	sub bx, 2
	mov dx, [stack + bx]
	add bx, 2
	
	mov [stackPointer], bx

	push dx
	push cx
	call PopSurroundingNotes
	
	mov bx, [stackPointer]
	add bx, 2
	mov ax, [stack + bx]
	mov [stackPointer], bx ;row, col, subgrid
	push dx
	push ax
	call PopValuesOfNotesFromRowInStackUpUpCase	
	push cx
	push ax
	call PopValuesOfNotesFromColInStackDownDownCase
	mov bx, cx
	mov bh, dl
	push bx
	push ax
	call PopValuesOfNotesFromSubGridInStackUpUpCase
	
	jmp ExitFromPerformUndo

performEraseUndo:
	add bx, 2
	mov ax, [stack+bx]; the value that needs to be placed back 
	add bx, 2
	mov [tempvar], ax 
	mov ax, [stack+bx]; is up ka flag
	cmp ax, 1
	jne ScreenNotUpForUndoErase
    cmp byte [isUp], 1
	jne DownHouaWAhAIErase
    ;Up Up Case
	add bx, 2
	mov dx, [stack+bx]; row
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax
		    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	mov [stackPointer], bx
	jmp ExitFromPerformUndo
DownHouaWAhAIErase:
	;down up Case
	add bx, 2
	mov dx, [stack+bx]; row
	cmp dx, 13
	ja DownHouaWAhAICase1Erase
	; Upper Screen main sy remove krna
	mov ax, 55
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, upperScreen
	add di, ax
	push cs
	pop es
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	mov [stackPointer], bx
	jmp ExitFromPerformUndo
	
DownHouaWAhAICase1Erase:
	; Video memory sy hi remove krna
	sub dx, 12
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax	    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	mov [stackPointer], bx
	jmp ExitFromPerformUndo

ScreenNotUpForUndoErase:
	cmp byte [isUp], 1
	jne DownHouaWAhAIYeBhi
    ;Down Up Case
	add bx, 2
	mov dx, [stack+bx]; row
	cmp dx, 13
	jb ScreenNotUpForUndoCase1Erase
	; Upper Screen main sy remove krna
	sub dx, 12
	mov ax, 55
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	push cs
	pop es
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	mov [stackPointer], bx
	jmp ExitFromPerformUndo
	
ScreenNotUpForUndoCase1Erase:
	; Video memory sy hi remove krna
	add dx, 12
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax	    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	mov [stackPointer], bx
	jmp ExitFromPerformUndo

DownHouaWAhAIYeBhiErase:;Down Down Case
	add bx, 2
	mov dx, [stack+bx]; row
	mov ax, 80
	mul dl
	add bx, 2
	add ax, [stack+bx]; add col
	shl ax, 1
	mov di, ax
		    
	mov ax, 0xb800
	mov es, ax
	mov ax, [tempvar]
	mov [es:di], ax; place back whatever tha val was 
	mov [stackPointer], bx
	jmp ExitFromPerformUndo

ExitFromPerformUndo:
	mov word [isUndoClicked], 0
	popa
    ret	
	
PopSurroundingNotes:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push di
	push es
	
	mov ax, 0xb800
	mov es, ax
	mov ax, 80
	mov dx, [bp + 6]
	mul dl
	add ax, [bp + 4]
	shl ax, 1
	mov di, ax
	mov bx, [stackPointer]
	
	add di, 4
	add di, 160
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 160
	add di, 8
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 8
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 160
	add di, 8
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	mov [stackPointer], bx
	
	pop es
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 4
	
PopSurroundingNotesScreen:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push di
	push es
	
	push ds
	pop es
	mov ax, 55
	mov dx, [bp + 6]
	mul dl
	add ax, [bp + 4]
	shl ax, 1
	mov di, [bp + 8]
	add di, ax
	mov bx, [stackPointer]
	
	add di, 4
	add di, 110
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 110
	add di, 8
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 8
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 110
	add di, 8
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	sub di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	add di, 4
	add bx, 2
	push word [stack + bx]
	pop word [es:di]
	
	mov [stackPointer], bx
	
	pop es
	pop di
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
	ret 6
	
PopValuesOfNotesFromRowInStackUpUpCase:
	push bp
	mov bp, sp
	pusha
	
	mov dx, [bp + 6]
	mov cx, 51
	
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromRowUpUpCase
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote1PoppingFromRowUpUpCase:
	cmp al, 2
	jne skipNote2PoppingFromRowUpUpCase
	sub dx, 1
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote2PoppingFromRowUpUpCase:
	cmp al, 3	
	jne skipNote3PoppingFromRowUpUpCase
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote3PoppingFromRowUpUpCase:
	cmp al, 4
	jne skipNote4PoppingFromRowUpUpCase
	sub cx, 2
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote4PoppingFromRowUpUpCase:
	cmp al, 5
	jne skipNote5PoppingFromRowUpUpCase
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote5PoppingFromRowUpUpCase:
	cmp al, 6
	jne skipNote6PoppingFromRowUpUpCase
	add cx, 2
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote6PoppingFromRowUpUpCase:
	cmp al, 7
	jne skipNote7PoppingFromRowUpUpCase
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromRowUpUpCase
skipNote7PoppingFromRowUpUpCase:
	cmp al, 8
	jne skipNote8PoppingFromRowUpUpCase
	add dx, 1
	jmp outOfNotesPoppingFromRowUpUpCase
	
skipNote8PoppingFromRowUpUpCase:
	cmp al, 9
	jne outOfNotesPoppingFromRowUpUpCase
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromRowUpUpCase

outOfNotesPoppingFromRowUpUpCase:

	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	
	mov cx, 9
PopNotesFromRowLoop1UpUpCase:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 12
	loop PopNotesFromRowLoop1UpUpCase
	
	popa
	pop bp
	ret 4
	
PopValuesOfNotesFromRowInStackUpDownCase1:
	push bp
	mov bp, sp
	pusha
	
	mov dx, [bp + 6]
	mov cx, 51
	
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromRowUpDownCase1
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote1PoppingFromRowUpDownCase1:
	cmp al, 2
	jne skipNote2PoppingFromRowUpDownCase1
	sub dx, 1
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote2PoppingFromRowUpDownCase1:
	cmp al, 3	
	jne skipNote3PoppingFromRowUpDownCase1
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote3PoppingFromRowUpDownCase1:
	cmp al, 4
	jne skipNote4PoppingFromRowUpDownCase1
	sub cx, 2
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote4PoppingFromRowUpDownCase1:
	cmp al, 5
	jne skipNote5PoppingFromRowUpDownCase1
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote5PoppingFromRowUpDownCase1:
	cmp al, 6
	jne skipNote6PoppingFromRowUpDownCase1
	add cx, 2
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote6PoppingFromRowUpDownCase1:
	cmp al, 7
	jne skipNote7PoppingFromRowUpDownCase1
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromRowUpDownCase1
skipNote7PoppingFromRowUpDownCase1:
	cmp al, 8
	jne skipNote8PoppingFromRowUpDownCase1
	add dx, 1
	jmp outOfNotesPoppingFromRowUpDownCase1
	
skipNote8PoppingFromRowUpDownCase1:
	cmp al, 9
	jne outOfNotesPoppingFromRowUpDownCase1
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromRowUpDownCase1

outOfNotesPoppingFromRowUpDownCase1:

	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	
	mov di, upperScreen
	add di, ax
	push ds
	pop es
	
	mov cx, 9
PopNotesFromRowLoop1UpDownCase1:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 12
	loop PopNotesFromRowLoop1UpDownCase1
	
	popa
	pop bp
	ret 4


	
PopValuesOfNotesFromColInStackUpUpCase:
	push bp
	mov bp, sp
	pusha
	mov dx, 22
	mov cx, [bp + 6]
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromColUpUpCase
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromColUpUpCase
skipNote1PoppingFromColUpUpCase:
	cmp al, 2
	jne skipNote2PoppingFromColUpUpCase
	sub dx, 1
	jmp outOfNotesPoppingFromColUpUpCase
skipNote2PoppingFromColUpUpCase:
	cmp al, 3	
	jne skipNote3PoppingFromColUpUpCase
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromColUpUpCase
skipNote3PoppingFromColUpUpCase:
	cmp al, 4
	jne skipNote4PoppingFromColUpUpCase
	sub cx, 2
	jmp outOfNotesPoppingFromColUpUpCase
skipNote4PoppingFromColUpUpCase:
	cmp al, 5
	jne skipNote5PoppingFromColUpUpCase
	jmp outOfNotesPoppingFromColUpUpCase
skipNote5PoppingFromColUpUpCase:
	cmp al, 6
	jne skipNote6PoppingFromColUpUpCase
	add cx, 2
	jmp outOfNotesPoppingFromColUpUpCase
skipNote6PoppingFromColUpUpCase:
	cmp al, 7
	jne skipNote7PoppingFromColUpUpCase
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromColUpUpCase
skipNote7PoppingFromColUpUpCase:
	cmp al, 8
	jne skipNote8PoppingFromColUpUpCase
	add dx, 1
	jmp outOfNotesPoppingFromColUpUpCase
	
skipNote8PoppingFromColUpUpCase:
	cmp al, 9
	jne outOfNotesPoppingFromColUpUpCase
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromColUpUpCase

outOfNotesPoppingFromColUpUpCase:
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, lowerScreen
	add di, ax
	push ds
	pop es
	mov si, 0
PopNotesFromColLoop2UpUpCase:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 440
	inc si
	cmp si, 3
	jnz PopNotesFromColLoop2UpUpCase
	
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov si, 0
PopNotesFromColLoop1UpUpCase:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 640
	inc si
	cmp si, 6
	jnz PopNotesFromColLoop1UpUpCase
	
	popa
	pop bp
	ret 4
	
PopValuesOfNotesFromColInStackDownDownCase:
	push bp
	mov bp, sp
	pusha
	mov dx, 22
	mov cx, [bp + 6]
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromColDownDownCase
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromColDownDownCase
skipNote1PoppingFromColDownDownCase:
	cmp al, 2
	jne skipNote2PoppingFromColDownDownCase
	sub dx, 1
	jmp outOfNotesPoppingFromColDownDownCase
skipNote2PoppingFromColDownDownCase:
	cmp al, 3	
	jne skipNote3PoppingFromColDownDownCase
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromColDownDownCase
skipNote3PoppingFromColDownDownCase:
	cmp al, 4
	jne skipNote4PoppingFromColDownDownCase
	sub cx, 2
	jmp outOfNotesPoppingFromColDownDownCase
skipNote4PoppingFromColDownDownCase:
	cmp al, 5
	jne skipNote5PoppingFromColDownDownCase
	jmp outOfNotesPoppingFromColDownDownCase
skipNote5PoppingFromColDownDownCase:
	cmp al, 6
	jne skipNote6PoppingFromColDownDownCase
	add cx, 2
	jmp outOfNotesPoppingFromColDownDownCase
skipNote6PoppingFromColDownDownCase:
	cmp al, 7
	jne skipNote7PoppingFromColDownDownCase
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromColDownDownCase
skipNote7PoppingFromColDownDownCase:
	cmp al, 8
	jne skipNote8PoppingFromColDownDownCase
	add dx, 1
	jmp outOfNotesPoppingFromColDownDownCase
	
skipNote8PoppingFromColDownDownCase:
	cmp al, 9
	jne outOfNotesPoppingFromColDownDownCase
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromColDownDownCase

outOfNotesPoppingFromColDownDownCase:
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, upperScreen
	add di, ax
	push ds
	pop es
	mov si, 0
PopNotesFromColLoop2DownDownCase:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 440
	inc si
	cmp si, 3
	jnz PopNotesFromColLoop2DownDownCase
	
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov si, 0
PopNotesFromColLoop1DownDownCase:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 640
	inc si
	cmp si, 6
	jnz PopNotesFromColLoop1DownDownCase
	
	popa
	pop bp
	ret 4

PopValuesOfNotesFromColInStackUpDownCase1:
	push bp
	mov bp, sp
	pusha
	mov dx, 22
	mov cx, [bp + 6]
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromColUpDownCase1
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote1PoppingFromColUpDownCase1:
	cmp al, 2
	jne skipNote2PoppingFromColUpDownCase1
	sub dx, 1
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote2PoppingFromColUpDownCase1:
	cmp al, 3	
	jne skipNote3PoppingFromColUpDownCase1
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote3PoppingFromColUpDownCase1:
	cmp al, 4
	jne skipNote4PoppingFromColUpDownCase1
	sub cx, 2
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote4PoppingFromColUpDownCase1:
	cmp al, 5
	jne skipNote5PoppingFromColUpDownCase1
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote5PoppingFromColUpDownCase1:
	cmp al, 6
	jne skipNote6PoppingFromColUpDownCase1
	add cx, 2
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote6PoppingFromColUpDownCase1:
	cmp al, 7
	jne skipNote7PoppingFromColUpDownCase1
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromColUpDownCase1
skipNote7PoppingFromColUpDownCase1:
	cmp al, 8
	jne skipNote8PoppingFromColUpDownCase1
	add dx, 1
	jmp outOfNotesPoppingFromColUpDownCase1
	
skipNote8PoppingFromColUpDownCase1:
	cmp al, 9
	jne outOfNotesPoppingFromColUpDownCase1
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromColUpDownCase1


	
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax
	mov ax, 0xb800
	mov es, ax
	mov si, 0
PopNotesFromColLoop1UpDownCase1:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 640
	inc si
	cmp si, 6
	jnz PopNotesFromColLoop1UpDownCase1
	
outOfNotesPoppingFromColUpDownCase1:
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, upperScreen
	add di, ax
	push ds
	pop es
	mov si, 0
PopNotesFromColLoop2UpDownCase1:
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	sub di, 440
	inc si
	cmp si, 3
	jnz PopNotesFromColLoop2UpDownCase1
	
	popa
	pop bp
	ret 4
	

PopValuesOfNotesFromSubGridInStackUpUpCase:
	push bp
	mov bp, sp
	pusha
	
	mov si,0

	finding_grid_box_loop_PopNotesUpUpCase:
	mov ax,[bp+6]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_loop_PopNotesUpUpCase:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_outerloop_PopNotesUpUpCase:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_innerloop_PopNotesUpUpCase:; x ka
				cmp ax,bx
				je OutOfFindingMidLoop_PopNotesUpUpCase
				add bl, 6
				add cl, 1
				cmp cl, 3
				jnz finding_mid_for_checkboxes_innerloop_PopNotesUpUpCase
				add bh, 4
				sub bl, 18; check this in case of error 
				
			add ch, 1
			cmp ch, 3
		jnz finding_mid_for_checkboxes_outerloop_PopNotesUpUpCase
		
		
	inc si
	cmp si, [mid_of_boxes_size]
	jnz finding_mid_for_checkboxes_loop_PopNotesUpUpCase
	
	OutOfFindingMidLoop_PopNotesUpUpCase:
	mov bl, [mid_of_boxes_x_coordinates+si]
	mov bh, [mid_of_boxes_y_coordinates+si]
	mov cx, 0
	mov cl, bl
	mov dx, 0
	mov dl, bh
	
	add cx, 6
	add dx, 4
	
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
  
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromSubGridUpUpCase
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote1PoppingFromSubGridUpUpCase:
	cmp al, 2
	jne skipNote2PoppingFromSubGridUpUpCase
	sub dx, 1
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote2PoppingFromSubGridUpUpCase:
	cmp al, 3	
	jne skipNote3PoppingFromSubGridUpUpCase
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote3PoppingFromSubGridUpUpCase:
	cmp al, 4
	jne skipNote4PoppingFromSubGridUpUpCase
	sub cx, 2
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote4PoppingFromSubGridUpUpCase:
	cmp al, 5
	jne skipNote5PoppingFromSubGridUpUpCase
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote5PoppingFromSubGridUpUpCase:
	cmp al, 6
	jne skipNote6PoppingFromSubGridUpUpCase
	add cx, 2
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote6PoppingFromSubGridUpUpCase:
	cmp al, 7
	jne skipNote7PoppingFromSubGridUpUpCase
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromSubGridUpUpCase
skipNote7PoppingFromSubGridUpUpCase:
	cmp al, 8
	jne skipNote8PoppingFromSubGridUpUpCase
	add dx, 1
	jmp outOfNotesPoppingFromSubGridUpUpCase
	
skipNote8PoppingFromSubGridUpUpCase:
	cmp al, 9
	jne outOfNotesPoppingFromSubGridUpUpCase
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromSubGridUpUpCase

outOfNotesPoppingFromSubGridUpUpCase:
	mov ax, 0xb800
	mov es, ax
	mov ax, 80
	mul dl
	add ax, cx
	shl ax, 1
	mov di, ax

	mov bx, 0
PopNotesFromSubGridOuterLoop1UpUpCase:
	mov si, 0
PopNotesFromSubGridLoop1UpUpCase:
	push bx
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	pop bx
	sub di, 12
	inc si
	cmp si, 3
	jnz PopNotesFromSubGridLoop1UpUpCase
	add di, 36
	sub di, 640
	inc bx
	cmp bx, 3
	jne PopNotesFromSubGridOuterLoop1UpUpCase
	
	popa
	pop bp
	ret 4
	
PopValuesOfNotesFromSubGridInStackUpDownCase1:
	push bp
	mov bp, sp
	pusha
	
	mov si,0

	finding_grid_box_loop_PopNotesUpDownCase1:
	mov ax,[bp+6]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_loop_PopNotesUpDownCase1:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_outerloop_PopNotesUpDownCase1:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_innerloop_PopNotesUpDownCase1:; x ka
				cmp ax,bx
				je OutOfFindingMidLoop_PopNotesUpDownCase1
				add bl, 6
				add cl, 1
				cmp cl, 3
				jnz finding_mid_for_checkboxes_innerloop_PopNotesUpDownCase1
				add bh, 4
				sub bl, 18; check this in case of error 
				
			add ch, 1
			cmp ch, 3
		jnz finding_mid_for_checkboxes_outerloop_PopNotesUpDownCase1
		
		
	inc si
	cmp si, [mid_of_boxes_size]
	jnz finding_mid_for_checkboxes_loop_PopNotesUpDownCase1
	
	OutOfFindingMidLoop_PopNotesUpDownCase1:
	mov bl, [mid_of_boxes_x_coordinates+si]
	mov bh, [mid_of_boxes_y_coordinates+si]
	mov cx, 0
	mov cl, bl
	mov dx, 0
	mov dl, bh
	
	add cx, 6
	add dx, 4
	
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
  
	mov ax, [bp + 4]
	cmp al, 1
	jne skipNote1PoppingFromSubGridUpDownCase1
	sub cx, 2
	sub dx, 1
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote1PoppingFromSubGridUpDownCase1:
	cmp al, 2
	jne skipNote2PoppingFromSubGridUpDownCase1
	sub dx, 1
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote2PoppingFromSubGridUpDownCase1:
	cmp al, 3	
	jne skipNote3PoppingFromSubGridUpDownCase1
	sub dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote3PoppingFromSubGridUpDownCase1:
	cmp al, 4
	jne skipNote4PoppingFromSubGridUpDownCase1
	sub cx, 2
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote4PoppingFromSubGridUpDownCase1:
	cmp al, 5
	jne skipNote5PoppingFromSubGridUpDownCase1
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote5PoppingFromSubGridUpDownCase1:
	cmp al, 6
	jne skipNote6PoppingFromSubGridUpDownCase1
	add cx, 2
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote6PoppingFromSubGridUpDownCase1:
	cmp al, 7
	jne skipNote7PoppingFromSubGridUpDownCase1
	add dx, 1
	sub cx, 2
	jmp outOfNotesPoppingFromSubGridUpDownCase1
skipNote7PoppingFromSubGridUpDownCase1:
	cmp al, 8
	jne skipNote8PoppingFromSubGridUpDownCase1
	add dx, 1
	jmp outOfNotesPoppingFromSubGridUpDownCase1
	
skipNote8PoppingFromSubGridUpDownCase1:
	cmp al, 9
	jne outOfNotesPoppingFromSubGridUpDownCase1
	add dx, 1
	add cx, 2
	jmp outOfNotesPoppingFromSubGridUpDownCase1

outOfNotesPoppingFromSubGridUpDownCase1:
	push ds
	pop es
	mov ax, 55
	mul dl
	add ax, cx
	shl ax, 1
	mov di, upperScreen
	add di, ax

	mov bx, 0
PopNotesFromSubGridOuterLoop1UpDownCase1:
	mov si, 0
PopNotesFromSubGridLoop1UpDownCase1:
	push bx
	add word [stackPointer], 2
	mov bx, [stackPointer]
	push word [stack + bx]
	pop word [es:di]
	pop bx
	sub di, 12
	inc si
	cmp si, 3
	jnz PopNotesFromSubGridLoop1UpDownCase1
	add di, 36
	sub di, 440
	inc bx
	cmp bx, 3
	jne PopNotesFromSubGridOuterLoop1UpDownCase1
	
	popa
	pop bp
	ret 4


GetLevelInput:
    pusha
	mov ax,1 ; display mouse  interrupt 
    int 33h 

MouseLP:
; cx has row and dx has column but they have pixel positon so we gotta divide by 8
    mov ax, 3
    int 33h                 

    test bx, 1   ; check if mouse button clicked then now take positions             
    jz MouseLP
	
	shr cx, 3
	shr dx, 3

    cmp dx, 16
    jl MouseLP         
    cmp dx, 18
    jg MouseLP             

    cmp cx, 20
    jl MouseLP             
    cmp cx, 29
    jg NotEasyButton         

    mov word [levelShuffleCount], 25
	mov word[levelShuffleCountExtra],12
	call clrscr
    jmp exitGetlevelInput

NotEasyButton:
    cmp cx, 35
    jl MouseLP              
    cmp cx, 44
    jg NotMediumButton      
    mov word [levelShuffleCount], 18
	mov word [levelShuffleCountExtra],8
    jmp exitGetlevelInput

NotMediumButton:
    cmp cx, 50
    jl MouseLP              
    cmp cx, 59
    jg MouseLP             
    mov word [levelShuffleCount], 12
	mov word [levelShuffleCountExtra],4
    jmp exitGetlevelInput

exitGetlevelInput:
    mov ax, 0; hide cursor 
    int 33h
	
    popa
    ret
	
	;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

plus_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si

    mov ax, 0xb800   
    mov es, ax

    mov cx, [plus20_coordinate_size]  
    mov bx, 0   
    mov dx,0	

plus20_print_loop:

    mov ax, 80                           
    mov dl, [plus20_y_coordinates+ bx]  
    mul dl                                
    mov dl, [plus20_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0xCF
    mov al, '*'  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz plus20_print_loop                    
                

plus_printing_done:
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret

plus10_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si
	push cx
	
    mov word [sound_index],0
	mov word [cpuSpeed],600
    mov ax, 0xb800   
    mov es, ax

    mov cx, [plus10_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	

plus10_stick_print_loop:

    mov ax, 80                           
    mov dl, [plus10_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [plus10_stick_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax           
	
    add bx, 1                                            
    pusha
    mov word [tempvar],250
	push word [tempvar]
	push word [sound_size]  
    push sound_data         
    call generic_sound
    popa
    dec cx   
    jnz plus10_stick_print_loop                    
             
    mov cx, [plus10_box_coordinate_size]  
    mov bx, 0   
    mov dx,0		
    mov si,0
	

plus10_box_print_loop:

    mov ax, 80                           
    mov dl, [plus10_box_y_coordinates+ bx]  
    mul dl                                
    mov dl, [plus10_box_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0x40
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1      
    add si,1	
	cmp si,17
	jne NoChangeInRowForBox

	pusha
    mov word [tempvar],250
	push word [tempvar]
	push word [sound_size]  
    push sound_data         
    call generic_sound
    popa
	mov si,0
	NoChangeInRowForBox:
    dec cx                                
    jnz plus10_box_print_loop 
	
	mov cx, [plus10_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	plus10_digit_loop:
	
	mov ax, 80                           
    mov dl, [plus10_y_coordinates+ bx]  
    mul dl                                
    mov dl, [plus10_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0xf4
    mov al, '*'  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz plus10_digit_loop    
 ; sound here
    
    pusha
    mov word [tempvar],2050
	push word [tempvar]
	push word [sound_size]  
    push sound_data         
    call generic_sound
    popa
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	call sleep
	
plus10_printing_done:

    mov word [sound_index],0
	mov word [cpuSpeed],500
	pop cx
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret


poopMan_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si

    mov ax, 0xb800   
    mov es, ax

    mov cx, [poop_coordinate_size]  
    mov bx, 0   
    mov dx,0	

poop_print_loop:

    mov ax, 80                           
    mov dl, [poop_y_coordinates+ bx]  
    mul dl                                
    mov dl, [poop_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    push dx
    mov dl, ' '  
	mov dh, 0x67
    mov [es:di], dx  
	pop dx	
    add bx, 1                            
    dec cx                                
    jnz poop_print_loop                    
             
    mov cx, [poop_person_black_coordinate_size]  
    mov bx, 0   
    mov dx,0		
    mov si,0

poopMan_black_print_loop:

    mov ax, 80                           
    mov dl, [poop_person_black_y_coordinates+ bx]  
    mul dl                                
    mov dl, [poop_person_black_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X00
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1      

    dec cx                                
    jnz poopMan_black_print_loop 
	
	mov cx, [poop_person_black_inside_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	poopMan_face_loop:
	
	mov ax, 80                           
    mov dl, [poop_person_black_inside_y_coordinates+ bx]  
    mul dl                                
    mov dl, [poop_person_black_inside_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    push dx 
    mov dl, ' '  
	mov dh, 0x7e
    mov [es:di], dx     
    pop dx	

    add bx, 1                            
    dec cx                                
    jnz poopMan_face_loop                    
           
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret


youLost_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si
	

	
    mov ax, 0xb800   
    mov es, ax

    mov cx, [y_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	y_loop:
	
	mov ax, 80                           
    mov dl, [y_y_coordinates+ bx]  
    mul dl                                
    mov dl, [y_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz y_loop                    
           
    mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	  
		   
		   	
	o1.5_loop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o1.5_loop    
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	o1_loop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,4
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o1_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	oTOP_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	sub dx,3
	add dx,3
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz oTOP_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	oBOTTOM_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
	add dl,7
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	sub dx,3
	add dx,3
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz oBOTTOM_loop    
	
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	ULEFTlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,8
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz ULEFTlOOP
	
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	URIGHTlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz URIGHTlOOP
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	uBottom_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
	add dx,7
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,9
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz uBottom_loop    
	
    mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	LBottom_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
	add dx,7
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,21
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz LBottom_loop   
	
	
		mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	LlEFTlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,20
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz LlEFTlOOP
	
	
	 mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	  
		   
		   	
	o2.5_loop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add ax,28
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o2.5_loop    
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	o2_loop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,32
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o2_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	o2TOP_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
    add dx,29
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o2TOP_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	o2BOTTOM_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
	add dl,7
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,29
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o2BOTTOM_loop    
	
	
	mov cx, [s_coordinate_size] 
    mov bx, 0   
    mov dx,0	
	
	s_loop:
	
	mov ax, 80                           
    mov dl, [s_y_coordinates+ bx]  
    mul dl                                
    mov dl, [s_x_coordinates+ bx]  
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz s_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	tToploop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,41
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz tToploop  
	sub bx,1
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,42
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax  
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	tstickloop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates+ bx]  
	add dx,43
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz tstickloop
                         
	
	
	mov cx, [one_thick_stick_coordinate_size] 
    sub cx,4	
    mov bx, 0   
    mov dx,0	
	
	exclamationloop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates+ bx]  
	add dx,50
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz exclamationloop
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    add dl,1
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates+ bx]  
	add dx,50
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax    
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    add dl,1
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates+ bx]  
	add dl,1
	add dx,50
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax    
	
	mov cx,4
	mov word [sound_index],0
	idkloop:
	mov word [sound_index],0
	mov word [cpuSpeed],300
	mov ax,3500
	push ax
	push word [door_size]
	push door_data
	call generic_sound
	
	loop idkloop
	
	
	mov word [sound_index],0
	mov word [cpuSpeed],500
	
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret
	
	
flowerMan_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si

    mov ax, 0xb800   
    mov es, ax

    mov cx, [flowerPerson_coordinate_size]  
    mov bx, 0   
    mov dx,0	

flowerMan_print_loop:

    mov ax, 80                           
    mov dl, [flowerPerson_y_coordinates+ bx]  
    mul dl                                
    mov dl, [flowerPerson_x_coordinates + bx]  
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       
    add bx, 1                            
    dec cx                                
    jnz flowerMan_print_loop                    
             
    mov cx, [flowerPerson_hands_coordinate_size]  
    mov bx, 0   
    mov dx,0		

hands_loop:

    mov ax, 80                           
    mov dl, [flowerPerson_hands_y_coordinates+ bx]  
    mul dl                                
    mov dl, [flowerPerson_hands_x_coordinates + bx]  
	sub dx,2
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1      

    dec cx                                
    jnz hands_loop 
	
	mov cx, [flower_stem_size]  
    mov bx, 0   
    mov dx,0	
	
	mov word [sound_index],4000
	stem_loop:
	
	mov ax, 80                           
    mov dl, [flower_stem_y_coordinates+ bx]  
    mul dl                                
    mov dl, [flower_stem_x_coordinates+ bx]  
	sub dx,2
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0x22
    mov al, ' '  
    mov [es:di], ax                       

	pusha
	mov word [cpuSpeed],400
	mov word [tempvar],1050
	push word [tempvar]
	push word [sound_size]
	push sound_data
	call generic_sound
	popa
	
    add bx, 1                            
    dec cx                                
    jnz stem_loop  

   
	mov cx, [flower_size]  
    mov bx, 0   
    mov dx,0	
	
	flower_loop:
	
	mov ax, 80                           
    mov dl, [flower_y_coordinates+ bx]  
    mul dl                                
    mov dl, [flower_x_coordinates+ bx]  
	sub dx,2
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0x44
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz flower_loop   	
           
	pusha
	mov word [sound_index],0
	mov word [cpuSpeed],200
	mov word [tempvar],7050
	push word [tempvar]
	push word [chime_size]
	push chime_data
	call generic_sound
	popa
	
	pusha
	mov word [sound_index],0
	mov word [cpuSpeed],200
	mov word [tempvar],7050
	push word [tempvar]
	push word [chime_size]
	push chime_data
	call generic_sound
	popa
	
	
		
    mov word [sound_index],0
	mov word [cpuSpeed],500
	
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret

youWin_print:
    push es
    push di
    push ax
    push dx
    push bx
    push si

    mov ax, 0xb800   
    mov es, ax

    mov cx, [y_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	yW_loop:
	
	mov ax, 80                           
    mov dl, [y_y_coordinates+ bx]  
    mul dl                                
    mov dl, [y_x_coordinates + bx]  
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz yW_loop                    
           
    mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	  
		   
		   	
	o1.5W_loop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx] 
	add dx,5	
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o1.5W_loop    
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	o1W_loop:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,4
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz o1W_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	oTOPW_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz oTOPW_loop    
	
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	oBOTTOMW_loop:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
	add dl,7
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz oBOTTOMW_loop    
	
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	ULEFTlOOPW:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,8
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz ULEFTlOOPW
	
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	URIGHTlOOPW:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz URIGHTlOOPW
	
	mov cx, [thin_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0	
	
	uBottom_loopW:
	
	mov ax, 80                           
    mov dl, [thin_stick_y_coordinates+ bx]  
	add dx,7
    mul dl                                
    mov dl, [thin_stick_x_coordinates + bx]  
	add dx,9
	add dx,5
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz uBottom_loopW   
	 
	
	mov cx, [one_thick_stick_coordinate_size]  
	sub cx,4
    mov bx, 0   
    mov dx,0
	
	wleftlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,14
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz wleftlOOP
	
	
	mov cx, [w_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	wcenterlOOP:
	
	mov ax, 80                           
    mov dl, [w_y_coordinates+ bx]  
	add dx,2
    mul dl                                
    mov dl, [w_x_coordinates + bx]  
    sub dx,3
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz wcenterlOOP
	
	mov cx, [one_thick_stick_coordinate_size]  
	sub cx,4
    mov bx, 0   
    mov dx,0
	
	wrightlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,21
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz wrightlOOP
	
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	ilOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,25
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz ilOOP
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	nleftlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,29
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz nleftlOOP
	
	mov cx, [n_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	ncenterlOOP:
	
	mov ax, 80                           
    mov dl, [n_y_coordinates+ bx]  
    add dx,3
    mul dl                                
    mov dl, [n_x_coordinates + bx]  
	sub dx,2
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz ncenterlOOP
	
	mov cx, [one_thick_stick_coordinate_size]  
    mov bx, 0   
    mov dx,0
	
	nrightlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,34
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz nrightlOOP
	
	mov cx, [one_thick_stick_coordinate_size]  
	sub cx,6
    mov bx, 0   
    mov dx,0
	
	winexclamlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx]  
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,40
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz winexclamlOOP
	
	mov cx, 4
    mov bx, 0   
    mov dx,0
	
	winexclamdotlOOP:
	
	mov ax, 80                           
    mov dl, [one_thick_stick_y_coordinates+ bx] 
    add dl,	6
    mul dl                                
    mov dl, [one_thick_stick_x_coordinates + bx]  
	add dx,12
	add dx,40
    add ax, dx                           
    shl ax, 1                            
    mov di, ax                            

    mov ah, 0X17
    mov al, ' '  
    mov [es:di], ax                       

    add bx, 1                            
    dec cx                                
    jnz winexclamdotlOOP
	 
    pop si
    pop bx
    pop dx
    pop ax
    pop di
    pop es
    ret
	
checkWinCondition:
	push ax
; 3,9,15,21,27,33,39,45,51,
    mov ax, 3
	push ax
	call CheckColCompletion
	cmp dx, 0
	jne returnFromCheckWin
	mov ax, 9
	push ax
	call CheckColCompletion
	cmp dx, 0
	jne returnFromCheckWin
	mov ax, 15
	push ax
	call CheckColCompletion
	cmp dx, 0
	jne returnFromCheckWin
	mov ax,21
	push ax
	call CheckColCompletion
	cmp dx,0
	jne returnFromCheckWin
	mov ax,27
	push ax
	call CheckColCompletion
	cmp dx,0
	jne returnFromCheckWin
	mov ax,33
	push ax
	call CheckColCompletion
	cmp dx,0
	jne returnFromCheckWin
	mov ax,39
	push ax
	call CheckColCompletion
	cmp dx,0
	jne returnFromCheckWin
	mov ax,45
	push ax
	call CheckColCompletion
	cmp dx,0
	jne returnFromCheckWin
	mov ax,51
	push ax
	call CheckColCompletion
	cmp dx,0
	jne returnFromCheckWin
	
	returnFromCheckWin:
	pop ax
	ret

checkBoxCompletion:
    push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push di
	push si
	
    mov si,0

	finding_grid_box_loopComp:
	mov ax,[bp+4]
	; ah y axis 
	; al x axis 
	; to go to start of that box 
	finding_mid_for_checkboxes_loopComp:
		mov bl, [mid_of_boxes_x_coordinates+si]
		mov bh, [mid_of_boxes_y_coordinates+si]
		sub bh,4
		sub bl,6
		
		mov ch,0
		finding_mid_for_checkboxes_outerloopComp:; y ka loop 
			mov cl,0
			finding_mid_for_checkboxes_innerloopComp:; x ka
				cmp ax,bx
				je OutOfFindingMidLoopComp
				add bl,6
				add cl,1
				cmp cl,3
				jnz finding_mid_for_checkboxes_innerloopComp
				add bh,4
				sub bl,18; check this in case of error 
				
			add ch,1
			cmp ch,3
		jnz finding_mid_for_checkboxes_outerloopComp
		
		
	inc si
	cmp si, [mid_of_boxes_size]
	jnz finding_mid_for_checkboxes_loopComp
	
	OutOfFindingMidLoopComp:
	mov bl,[mid_of_boxes_x_coordinates+si]
	mov bh,[mid_of_boxes_y_coordinates+si]
	sub bl,6
	sub bh,4
	; to go to first element 
  ;checking now on surroundings of that found mid point by comparing with ah,al x-y value 
	mov ax,0xb800
	mov es,ax
	mov ax,80
	
	mul bh; y axis 
	mov bh,0
	add ax,bx
	shl ax,1
	mov di,ax
	mov dx, 0
	
	
	mov ch,0
    mov bh,0x71
	check_mid_surroundings_outerloopComp:; y ka loop
		mov cl,0
		check_mid_surroundings_innerloopComp:; x ka
			mov ax,[es:di]
			cmp ah,bh
			je skip_while_checking_midsComp
				mov dx, 1
				jmp OutOfCheckMidSurroundingsComp
		skip_while_checking_midsComp:
			add di, 12
			add cl, 1
			cmp cl, 3
		jnz check_mid_surroundings_innerloopComp
			add di,640
			sub di,36; check this in case of error
				
			add ch,1
			cmp ch,3
		jnz check_mid_surroundings_outerloopComp
		
   OutOfCheckMidSurroundingsComp:
	pop si
	pop di
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 2 


CheckColCompletion:
    push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si, 0
	mov ax, 80
	mov cx, 2
	mul cl
	add ax, [bp + 4]
	shl ax,1
	mov di,ax
	mov dx, 0

	; after this our xcoordinate will be in al which means ax 
	mov ax, 0xb800
	mov es, ax 
	add bx,0x30
	mov bh,0x71; attribute byte 
	mov cx, 0
	checkColumnCompletionLoop:
		mov cx, [es:di]
		cmp ch, bh ; atttribute byte should be 0x71 for row completion
		jz checkColumnCompBreak
		mov dx, 1; break loop if match found 
	jmp returnFromCheckColumnComp
	checkColumnCompBreak:
		add di, 640
		inc si
		cmp si, 6
	jnz checkColumnCompletionLoop
	
	; now we check lowerscreen
	mov si, 0
	mov ax, 55
	mov cx, 2
	mul cl
	add ax, [bp + 4]
	shl ax, 1
	cmp word [isUp], 0
	jz skipLowerScreenCheckInCheckColCompletion
	mov di, lowerScreen
	jmp afterLowerScreenCheckInCheckColCompletion
skipLowerScreenCheckInCheckColCompletion:
	mov di, upperScreen
afterLowerScreenCheckInCheckColCompletion:

	add di, ax

	; after this our xcoordinate will be in al which means ax 
	push ds
	pop es
	add bx, 0x30
	mov bh, 0x71; attribute byte 
	mov cx, 0
	checkColumnLoopExtraComp:
		mov cx, [es:di]
		cmp ch, bh
		jz checkColumnBreakExtraComp
			mov dx, 1 ; break loop if match found 
			jmp returnFromCheckColumnExtraComp
	checkColumnBreakExtraComp:
		add di, 440
		inc si
		cmp si, 3
	jnz checkColumnLoopExtraComp
	
	returnFromCheckColumnExtraComp:
	

	returnFromCheckColumnComp:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 2 
	
CheckRowCompletion:

    push bp
	mov bp,sp
	push ax
	push bx
	push cx
	push es
	push si
	push di

	mov si,0
	mov cx,[bp+4]; row
	mov ax, 80
	mul cl
	add ax, 3
	shl ax, 1
	mov di, ax

	; after this our x-coordinate will be in al which mneans ax 
	mov ax, 0xb800
	mov es, ax 
	mov bh, 0x71; attribute byte 
	mov cx, 0
	checkRowsLoopComp:
		mov cx, [es:di]
		cmp ch,bh
		je checkRowsBreakComp
			mov dx,1; break loop if match found 
			jmp returnFromCheckRowComp
		checkRowsBreakComp:
			add di,12
			inc si
			cmp si,9
	jnz checkRowsLoopComp

	returnFromCheckRowComp:

	pop di
	pop si
	pop es
	pop cx
	pop bx
	pop ax
	pop bp
	ret 2
	
getRestartStatus:
	pusha
    mov ax,1 
    int 33h 

MouseRestartCheck:

    mov ax, 3
    int 33h                  

    test bx, 1              
    jz MouseRestartCheck     

    shr cx, 3            
    shr dx, 3            
    
    mov si, 0               
    mov di, 0            

    ; Check against pause_black coordinates


CheckRedCoordinates:
    mov si, 0                
    mov bx, [pause_red_coordinate_size]

CheckRedLoop:
	cmp si, bx
	jge NoMatch                  
	
	mov al, [pause_red_x_coordinates+ si]           
	cmp al, cl                  
	jne NextRedCoordinate        
    
	mov al, [pause_red_y_coordinates + si]            
	cmp al, dl
	jne NextRedCoordinate        
	
	mov di, 1      
	call resetValues
	jmp MatchFound
	
NextRedCoordinate:
     inc si                       
     jmp CheckRedLoop

NoMatch:
    mov di, 0 


MatchFound:
    mov word [shouldWeRestart], di 

ExitRestartCheck:
    mov ax, 0                ;
    int 33h

    popa
    ret

resetValues:

pusha 
	mov word [shouldWeRestart],0
	mov word [sound_index], 0

	mov word [cpuSpeed], 500

	mov word [minutes], 0
	mov word [seconds], 0
	mov word [ticks], 0
	mov word [ticksForEraseClick], 0

	mov byte [mistakesCount], 0
	mov byte [scoreCount], 0

	mov word [isGameOn], 1    

	mov word [isUp], 1
	mov word [isDown], 0
	mov word [stackPointer], 2078
	
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	mov si, easy_button_x_coordinates
    mov di, afterResetEasy_x
	mov bx,0
    mov cx, [buttons_coordinates_size] ; Number of elements to process

replaceButtons_loopEASY:
    mov al, [di+bx]
    
    mov [si+bx], al

    add bx,1

    loop replaceButtons_loopEASY

    mov si, easy_button_y_coordinates
    mov di, afterResetEasy_y
	mov bx,0
    mov cx, [buttons_coordinates_size] ; Number of elements to process

replaceButtons_loopEASY_y:
    mov al, [di+bx]
    
    mov [si+bx], al

    add bx,1

    loop replaceButtons_loopEASY_y
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
	mov si, medium_button_y_coordinates
    mov di, afterResetMedium_y
	mov bx,0
    mov cx, [buttons_coordinates_size] ; Number of elements to process

replaceButtons_loopmedium_y:
    mov al, [di+bx]
    
    mov [si+bx], al

    add bx,1

    loop replaceButtons_loopmedium_y


    mov si, medium_button_x_coordinates
    mov di, afterResetMedium_x
	mov bx,0
    mov cx, [buttons_coordinates_size] ; Number of elements to process

    replaceButtons_loopmed_x:
    mov al, [di+bx]
    
    mov [si+bx], al

    add bx,1

    loop replaceButtons_loopmed_x
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;	
		mov si, hard_button_y_coordinates
    mov di, afterResetHard_y
	mov bx,0
    mov cx, [buttons_coordinates_size] ; Number of elements to process

replaceButtons_loopHard_y:
    mov al, [di+bx]
    
    mov [si+bx], al

    add bx,1

    loop replaceButtons_loopHard_y


    mov si, hard_button_x_coordinates
    mov di, afterResetHard_x
	mov bx,0
    mov cx, [buttons_coordinates_size] ; Number of elements to process

    replaceButtons_loopHard_x:
    mov al, [di+bx]
    
    mov [si+bx], al

    add bx,1

    loop replaceButtons_loopHard_x
 

  popa
  ret


RandomSwapFunction:
	pusha
	
RandomSwapFunctionGeneratorLoop:
	mov ax,2
	push ax
	mov di,0
	call generate_random_number_for_di
	cmp di, 0
	je RandomSwapFunctionGeneratorLoop
	cmp di,1
	je letsSwapRows
	cmp di,2
	je letsSwapCols
	
letsSwapRows:

    mov si,[bp+4]  ; si points to the start of the array
	push si
    call SwapRandomRows       

	mov si, [bp+4] 
	add si, 27                ; move si to row 4
	push si
	call SwapRandomRows     
	
	mov  si, [bp+4] 
	add si, 54                ; mov si to row 7
	push si
	call SwapRandomRows   
	
    jmp weareDoneSwapping
	
letsSwapCols:
	mov si, [bp+4]  ; restart 
	push si
	call swapRandomCols    
	
	mov  si, [bp+4] 
	add si, 3                ;start of col 4
	push si
	call swapRandomCols     	
	
	mov si, [bp+4] 
	add si, 6                ; start of col 7
	push si
	call swapRandomCols     
	
weareDoneSwapping:
	popa
	ret 2
	
SwapRandomRows:
	push bp
	mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push si
    push di

SwapRandomRowsGeneratorLoop:

    mov di,0
	mov ax,2
	push ax
	call generate_random_number_for_di    
	call sleep	
	call sleep	
	call sleep	
	call sleep	
	call sleep	
	call sleep	
	call sleep
	cmp di, 0
	je SwapRandomRowsGeneratorLoop
    cmp di, 1
    je swapAdjacent  ; If random number is 1, swap current row with the next
    cmp di, 2
    je swapNonAdjacent ; If random number is 2 swap current row with the row after next

    jmp endSwapRows

swapAdjacent:
	mov si, [bp + 4]
    mov di, [bp + 4] ; DI points to the next row
	add di, 9
	push si
	push di
    call swapTwoRows
    jmp endSwapRows

swapNonAdjacent:
	mov si, [bp + 4]
    mov di, [bp + 4]
	push si
	push di
	add di, 18; DI points to the row after the next
    call swapTwoRows

endSwapRows:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
	pop bp
    ret 2

swapTwoRows:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	
	mov si, [bp + 4]
	mov di, [bp + 6]
	
	mov cx, 9
	mov ax, 0
swapLoopforRows:
	mov al, [si]
	mov ah, [di]
	mov [si], ah
	mov [di], al
	inc si
	inc di
	loop swapLoopforRows

	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
    ret 4
	
swapRandomCols: 
	push bp
	mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push si
    push di
swapRandomColsGeneratorLoop:
    mov di,0
	mov ax,2
	push ax
    call generate_random_number_for_di    
	call sleep	
	call sleep	
	call sleep	
	call sleep	
	call sleep	
	call sleep	
	call sleep
	cmp di, 0
	je swapRandomColsGeneratorLoop
    cmp di, 1
    je swapAdjacentCols     
    cmp di, 2
    je swapNonAdjacentCols   

    jmp endSwapCols

swapAdjacentCols:
	mov si, [bp + 4]
	mov di, [bp + 4]
    add di,1
	push si
	push di
    call swapTwoColumns
    jmp endSwapCols

swapNonAdjacentCols:
	mov si, [bp + 4]
	mov di, [bp + 4]
    add di,2
	push si
	push di
    call swapTwoColumns

endSwapCols:
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
	pop bp
    ret 2


swapTwoColumns:
	push bp
	mov bp, sp
	push ax
	push bx
	push cx
	push dx
	push si
	push di
	

    mov cx, 9     ; 9 rows to each col 
	mov ax, 0
columnSwapLoop:
	mov al, [si]
	mov ah, [di]
	mov [si], ah
	mov [di], al
	add si, 9       ; mve to the next entry in the column
    add di, 9
    loop columnSwapLoop
	
	
	pop di
	pop si
	pop dx
	pop cx
	pop bx
	pop ax
	pop bp
    ret 4

start:

gamePlay:

	cmp word [shouldWeRestart],1
	jne noResetValues
	call resetValues
	noResetValues:
	
	call starting_screen_setup
	call GetLevelInput  
	xor ax, ax
	mov es, ax ; point es to IVT base
	mov ax, [es:8*4]
	mov [oldtimerisr], ax ; save offset of old routine
	mov ax, [es:8*4+2]
	mov [oldtimerisr+2], ax ; save segment of old routine
	cli 
	mov word [es:8*4], timer 
	mov [es:8*4+2], cs ; store segment at n*4+2
	sti
	call grid_setup
	xor ax, ax
	mov es, ax 
	mov ax, [es:9*4]
	mov [oldkbisr], ax 
	mov ax, [es:9*4+2]
	mov [oldkbisr+2], ax 
	cli 
	mov word [es:9*4], kbisr 
	mov [es:9*4+2], cs 
	sti 
	
GameIsOnLoop:
	cmp word [isGameOn], 1
	je GameIsOnLoop
	
	xor ax, ax
	mov es, ax ; point es to IVT base
	cli 
	push word [oldtimerisr]
	pop word [es:8*4]	
	push word [oldtimerisr + 2]
	pop word [es:8*4 + 2]
	sti

	xor ax, ax
	mov es, ax ; point es to IVT base
	cli 
	push word [oldkbisr]
	pop word [es:9*4]	
	push word [oldkbisr + 2]
	pop word [es:9*4 + 2]
	sti
	
    mov ax,0
	int 33h
	call ending_screen_setup
	
	call getRestartStatus
	cmp word [shouldWeRestart],1
	je gamePlay
	
	
    mov dx, start               
    add dx, 15               
    mov cl, 4
    shr dx, cl                
    mov ax, 0x3100      
	int 0x21
