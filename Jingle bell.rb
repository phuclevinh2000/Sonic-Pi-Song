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

define :up4 do
  notes =[:a4, [:f5, :a4], [:e5, :g4], [:d5, :f4], [:b4, :g4], :e5, :f5, :fs5, [:g5, :b4], :a5, :g5, [:f5,:b4], :e5, [:d5,:b4],[:e5,:c5],[:e5,:c5,:e4],[:f5,:d5,:f4],[:fs5,:ds5,:fs4]]
  durations =[1,1,1,0.5,3.25,0.25,0.75,0.25,0.5,0.5,0.5,1,0.5,1,2,1,0.75,0.25]
  play_pattern_timed notes, durations
end

define :down4 do
  notes =[]
  durations =[]
  play_pattern_timed notes, durations
end

define :up5 do
  notes =[[:g5,:g4,:e5],[:g5,:e5,:e6,:g6],[:d5,:g5,:d6,:f6],[:g5,:e5,:c5,:g4],[:e5,:c5,:e4],[:f5,:d5,:f4],[:fs5,:ds5,:fs4],[:g5,:g4,:e5],[:g5,:e5,:e6,:g6],[:d5,:g5,:d6,:f6],[:g5,:e5,:c5,:g4],[:a4,:c5,:f5,:a5],[:f5,:f4],[:g5,:g4],[:gs5,:gs4]]
  durations =[1,1,1,1,3.75,0.25,0.75,0.25,1,1,1,1,3,0.5,0.5]
  play_pattern_timed notes, durations
end





#play the pieces
with_fx :reverb, room: 0.6,mix: 0.7, pan: 1 do
  #line 1
  in_thread do
    up1
  end
  down1
  in_thread do
    up2
  end
  down2
  
  #line 2
  in_thread do
    up3
  end
  down3
  
  up4
  up5
end






