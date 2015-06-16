mda Audio Units
---------------

These Audio Units are freeware.  They are compatible with Mac OS 10.6 or 
later, and with Macs using Intel x86 processors.  For convenience, all the plug-ins 
are held in one file. To install, copy the mda.component file into this folder:

  /Library/Audio/Plug-Ins/Components

Plug-ins copyright (c)1998-2007 Paul Kellett (http://www.mda-vst.com)
Updated to Audio Unit format by Sophia Poirier (http://destroyfx.org/)
Updated to run on OSX 10.7 and later by Eric Nordlund (https://github.com/nrdlngr/mda-vst-code)


mda Combo
---------
This plug-in simulates a guitar amplifier. The distortion section is very basic and
you may get better results by pre-processing the signal with EQ or another 
distortion effect, and using mda Combo for speaker simulation.

The Model parameter selects the speaker type:
  D.I.      - direct from the distortion, for a fuzz sound
  Spkr Sim  - simple low pass filter speaker simulator
  Radio     - transistor radio speaker / telephone
  MB        - single speaker with close or more distant mic
  4x12"     - large 4-speaker cabinet with front or side mic

The HPF parameter (not present on the original VST version) is a high-pass filter
before the distortion stage, which can make the distortion much sweeter sounding.
The Drive parameter controls the amount of distortion, and the Density parameter
adjusts the saturation curve between hard/clipped and soft/full.  The Bias parameter
adds a DC offset to the distortion stage, which can give the distortion a gated
effect or add more even harmonics. Lastly, the output parameter allows the output
level to be adjusted.


mda Degrade
-----------
This plug-in reduces the bit-depth and sample rate of the input audio (using the
Quantize and Sample Rate parameters) and has some other features for attaining the 
sound of vintage digital hardware.  The headroom control is a peak clipper, and the 
Non-Linearity controls add some harmonic distortion to thicken the sound.  
Post Filter is a low-pass filter to remove some of the grit introduced by the 
other controls.


mda Detune
----------
This plug-in is a pitch shifter designed to produce the classic detune effect, 
where the left channel is shifted down in pitch and the right channel is shifted 
up.  This sounds similar to a chorus effect, but with less obvious modulation.  
The delay inherent in the pitch shifting process can be adjusted with the Latency
control - longer settings are needed to make low frequency signals sound smoother,
but can also adds a nice doubling effect to vocals.


mda DubDelay
------------
A simple delay line with filtering and saturation in the feedback loop. When the
feedback mode is set to "saturate", soft saturation is used to limit the level of 
the delay repeats. When set to "limit", hard clipping is used.  The Feedback Tone 
parameter filters the feedback signal with a highpass or lowpass filter as it is 
turned to the right or left respectively.  The LFO Depth and LFO Rate parameters 
introduce some pitch modulation, as does the Delay parameter when it is moved.


mda Dynamics
------------
This plug-in is a very ordinary analog-style compressor and noise gate, designed to
sound like the dynamics section from a large- format mixer.  A peak limiter is preset
to 0 dB FS (the compressor release time parameter also sets the limiter release).


mda Leslie
----------
This plug-in is a simulation of a Leslie rotary speaker.  Actually it is more of a
caricature, giving the impression of a rotary speaker rather than being a strict 
simulation.  Stereo Width and "Throb" (amplitude modulation) can be adjusted for 
both the high and low frequency rotors.  The traditional Slow/Fast/Stop speed 
control is provided with an additional speed parameter for fine tuning.


mda RePsycho!
-------------
This unusual effect is a triggered pitch-shifter.  It works by detecting transients,
and between each transient recording the input signal while playing it back at a 
slower rate. This shifts the pitch downwards, but if the Threshold is set correctly
the output can remain tightly synchronised with the original signal. The Tune and
Fine parameters adjust the pitch shift amount. The Decay parameter makes the signal
fade out after each trigger, which can be useful while setting the Threshold 
control. The Hold parameter sets the minimum time between triggers, and the Mix 
control allows the wet and dry signals to be blended, which can give an interesting 
"triggered flanger" effect when the mix is set to 50%. When the Quality parameter 
is set to "High", the pitch shifting quality is improved. This effect can be useful 
on drums or whole rhythm sections. It can also be used to add shuffle to a straight
groove, by setting the Threshold and Hold parameters so it only retriggers on every
other beat.


mda RingMod
-----------
This was the first "mda" effect, made way back in 1998.  It is a simple ring 
modulator, multiplying the input signal by a sine wave, the frequency of which is
set using the Frequency and Fine Tune controls.  As if ring modulation wasn't 
harsh enough already, the Feedback parameter can add even more edge to the sound!


mda RoundPan
------------
This plug-in is a 3D Autopan which can give the impression of the sound circling the
listener.  The Rate control sets the autopan speed, and the Pan control sets the pan
position when the rate is zero. Like all 3-dimensional effects, be sure to check the
resulting sound for mono compatibility!


mda Shepard Tones
-----------------
This plug-in generates a continuously rising or falling tone.  Or rather, that's what
it sounds like but really new harmonics are always appearing at one end of the
spectrum and disappearing at the other. (using some EQ can improve the psychoacoustic
effect, depending on your listening environment). These continuous tones are actually
called "Risset tones", developed from the earlier "Shepard tones" which change in
series of discrete steps. The Mode control allows the input signal to be mixed or 
ring modulated with the tone - this works well as one element of a complex chain of
effects.


mda TalkBox
-----------
This plug-in is a high resolution vocoder, designed for a natural rather than an 
electronic sound.  The Quality parameter is equivalent to the number of bands in a
normal "channel" vocoder. The plug-in expects a modulator signal (usually voice or
drums) in the main input bus and a carrier (usually synth or guitar) in the second
input bus, but the Input Swap parameter can be used to reverse this.

*** Please note that Talkbox is a multi-input-bus plug-in and not all AU hosts
support plug-ins with more than 1 input bus.  Currently Logic and Live are known to
support this.  In Logic, you can route the second input bus in via the plug-in's
"sidechain" menu selection. In Live, you will see the second input bus appear as an
audio output destination on tracks. ***

For a typical talkbox sound, try inputting a synth sound with oscillator sync (at a
fixed slave frequency, between 12 and 20 semitones above the master) with the master
oscillator volume turned down, and vibrato added with the mod wheel or aftertouch. 
Alternatively, for a natural vocal sound use a low-pass filtered saw wave with 
random pitch modulation, plus high-pass filtered white noise. 


mda TestTone
------------
This plug-in produces a range of high-precision audio test signals.  The Level
parameter sets the peak level of the sine wave output in dB FS. As the noise signals
do not have a well defined peak level they have been aligned to the same RMS level 
as the sine wave, i.e. 3.01 dB below the peak level.  Warning: The noise signals 
can have peak levels more than 10 dB above their RMS level so will clip at high 
level settings.

Linear sweeps start at 0 Hz and end at the indicated frequency.  If the indicated 
frequency is above 900 Hz, log sweeps start at 20 Hz and end at the indicated 
frequency, else they start at the indicated frequency and end at 20 kHz.


mda Tracker
-----------
This plug-in analyses the frequency of the input signal, and uses that frequency to
control an oscillator (with sine, saw or square waveform) a ring modulator (the 
input signal is ring modulated by a sine wave) or the centre frequency of a peaking
EQ.  The Dynamics control adjusts how closely the oscillator output level follows
the input signal level.  The Glide control smooths the pitch tracking, and the
Transpose control adds a pitch offset to create musical intervals with the input
signal.  The Maximum control limits the maximum pitch, which can help reduce 
glitches in the pitch tracking, and the Trigger contol sets a threshold below which
the pitch stays constant, which can help reduce glitches and unwanted gargling when
the input signal is quiet. A new control for the AU version is Channel Link, which, 
if enabled, gives you the old behavior of summing all channles together, but if 
disabled, gives you a new option of each channel being processed independently.

