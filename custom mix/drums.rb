use_bpm 105
live_loop :beat do
  A = dice(2)
  2.times do
    sample :drum_tom_lo_soft
    sleep 1.5
  end
  sample :drum_cymbal_soft, amp: A
  sleep 1.25
  
end
