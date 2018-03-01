#a roving english sea shanty
#https://musescore.com/sagensang/a-roving
#bpm is 100 according for the cover 'I'll go no more A-roving with you fair maid by Noel Mcloughlin' the BPM used in the sheet music is unknown to me and the BPM in most covers differ
use_bpm 100
op = "C:/Users/dylan_colwell/Music/The_Maid_of_Amsterdam_A-rovin_-_sung_by_the_Roaring_Trowmen[Mp3Converter.net].wav"
use_synth :piano
Cnotes = [:a3,   :d4,  :e4,  :f4, :g4, :a4, :d5, :b4, :g4, :f4, :e4, :d4, :a4, :b4, :g4, :b4, :a4, :f4, :a4, :g4, :f4, :e4, :d4, :f4, :d4, :b3, :a3, :D4, :E4, :F4, :G4, :A4, :D5, :B4, :G4, :F4, :E4, :D4,]
Csleep = [0.5,   0.5,  0.5,  0.5, 0.5, 0.5, 0.5, 0.5, 0.5,   1,   1, 1.5, 0.5,  1,  0.5, 0.5, 1,   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1,    1,  1.5,]
Ch = 0
rs = 0.5


#opening
define :opening do
  play :a3
  sleep rs
  play :d4
  sleep rs
  play :e4
  sleep rs
  play :f4
  sleep rs
  play :g4
  sleep rs
  play :a4
  sleep rs
  play :d5
  sleep rs
  play :b4
  sleep rs
  play :g4
  sleep rs
  play :f4
  sleep 1
  play :e4
  sleep 1
  play :d4
  sleep 1.5
  A = 1
end

sample op
opening

#song
live_loop :Aroving do
  
  #I could have done this times 5 since that's how many verses the origional song has, but since their are several covers with verying lyrics I did a live_loop
  use_synth_defaults amp: A
  Ch = 0
  play :a3
  sleep rs
  2.times do
    2.times do
      play :d4
      sleep rs
    end
    play :c4
    sleep rs
    play :a3
    sleep rs
  end
  play :D4
  sleep rs
  play :E4
  sleep rs
  play :F4
  sleep rs
  play :G4
  sleep rs
  play :a4
  sleep 1.5
  play :a4
  sleep rs
  2.times do
    play :b4
    sleep rs
  end
  play :g4
  sleep rs
  play :b4
  sleep rs
  2.times do
    play :a4
    sleep rs
  end
  play :f4
  sleep rs
  play :a4
  sleep rs
  play :g4
  sleep rs
  play :f4
  sleep rs
  play :e4
  sleep rs
  play :d4
  sleep rs
  play :f4
  sleep rs
  play :d4
  sleep rs
  play :c4
  sleep rs
  
  
  #chourus
  38.times do
    play Cnotes[Ch]
    sleep Csleep[Ch]
    Ch = Ch + 1
  end
  R = dice(4)
  print R
  A = (A + R)/2
  print A
end
live_loop :show do
  print A
  sleep rs
end


# I DID IT HAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA