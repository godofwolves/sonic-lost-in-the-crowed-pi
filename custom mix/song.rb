use_synth :piano
use_bpm 105
pirates = "C:/Users/dylan_colwell/Desktop/pirate.wav"
dragons = "C:/Users/dylan_colwell/Desktop/dragons.wav"
p = 7
Cnotes = [:a3,   :d4,  :e4,  :f4, :g4, :a4, :d5, :b4, :g4, :f4, :e4, :d4, :a4, :b4, :g4, :b4, :a4, :f4, :a4, :g4, :f4, :e4, :d4, :f4, :d4, :b3, :a3, :D4, :E4, :F4, :G4, :A4, :D5, :B4, :G4, :F4, :E4, :D4,]
Csleep = [0.5,   0.5,  0.5,  0.5, 0.5, 0.5, 0.5, 0.5, 0.5,   1,   1, 1.5, 0.5,  1,  0.5, 0.5, 1,   0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1,    1,  1.5,]
Ch = 0
rs = 0.5+0.15
array1 = [:Bb4, :F4, :C4]
A = 1
use_synth_defaults amp: A
define :free do
  
  play :Bb4
  play :F4
  play :C4
  sleep 0.5
  play :a4
  play :f4
  play :c4
  sleep 1
  play :g4, sustain: 2.5
  play :f4, sustain: 2.5
  play :c4, sustain: 2.5
  sleep 2.5
  play :A4
  play :F4
  play :C4
  sleep 1.5
  play :Bb4, sustain: 2.5
  play :F4, sustain: 2.5
  play :C4, sustain: 2.5
  sleep 2.5
  play :Bb4
  play :F4
  play :C4
  sleep 0.5
  play :a4
  play :f4
  play :c4
  sleep 1
  play :g4, sustain: 2.5
  play :f4, sustain: 2.5
  play :c4, sustain: 2.5
  sleep 2
  play :g4
  play :F4
  play :C4
  sleep 0.25
  play :f4
  sleep 0.25
  play :G4
  sleep 0.25
  play :A4
  play :F4
  play :C4
  play :F2
  sleep 1.5
  play :A4
  play :C4
  play :Bb3
  play :Bb2
  sleep 2.5
end
define :ro do
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
  sleep 1+0.15
  play :e4
  sleep 1+0.15
  play :d4
  sleep 1.5+0.15
end
define :rm do
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
  sleep 1.5+0.15
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
end
define :o do
  play :A4
  play :F4
  play :C4
  sleep 1.5
  play :Bb4, sustain: 2.5
  play :F4, sustain: 2.5
  play :C4, sustain: 2.5
  sleep 2.5
end
define :c do
  Ch = 0
  38.times do
    
    play Cnotes[Ch]
    sleep Csleep[Ch]+0.15
    Ch = Ch + 1
  end
end


sample pirates,amp: p



sleep 7



play o

play free
sample
play ro

rm
c
free
rm
c

sample dragons, amp: 2
