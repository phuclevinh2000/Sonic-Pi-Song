#jingle bell song

use_bpm 150
use_synth :piano

define :up1 do
  notes = [:g5, :a5, :f5, :d5, :e5, :c5, :g4, :a4, :f4, :d4, :e4, :c4]
  durations = [0.5,0.5,0.5,1,0.5,1]
  play_pattern_timed notes, durations
end

#down1
define :down1 do
  notesdown = [:g4, :a4, :f4, :d4, :e4, :c4, :g3, :a3, :f3, :d3, :e3, :c3]
  durationsdown = [0.5,0.5,0.5,1,0.5,1]
  play_pattern_timed notesdown, durationsdown
end

#up2
define :up2 do
  sleep 1
  notes = [:g5, :a5, :bb5, :b5, [:g6, :g5, :b5], :f4, :gb4]
  durations = [1,1,1,1,1,1,0.75,0.25]
  play_pattern_timed notes, durations
end

define :down2 do
  notes =[[:g3, :g2], :g3, :g2]
  durations = [4,2,2]
  play_pattern_timed notes, durations
end

#up3
define :up3 do
  notes =[:g4, [:e5, :g4], [:d5, :f4], [:c5, :e4], :g4, :e4, :f4, :gb4, :g4, [:e5, :g4],[:d5, :f4],[:c5, :e4], [:a4, :f4], :f4, :g4, :ab4]
  durations =[1,1,1,0.5,3.25,0.25,0.75,0.25]
  play_pattern_timed notes, durations
end

define :down3 do
  notes = [:c3, [:c4, :g3, :e3], :g2, [:c4, :bb4, :g3], [:e3, :e2], [:f3, :f2], [:gb3, :gb2], [:g3, :g2], [:g2, :g1],[:c3, :c2], [:c4, :g3, :e3], :g2, [:c4, :bb4, :g3], [:f3, :f2], [:g3, :g2], [:ab3, :ab2],[:a3, :a2], [:c3, :c2]]
  durations = [1,1,1,1,0.75,0.25,0.5,1.5,1]
  play_pattern_timed notes, durations
end



#loop
in_thread do
  up1
end
down1
in_thread do
  up2
end
down2

in_thread do
  up3
end
in_thread do
  down3
end






