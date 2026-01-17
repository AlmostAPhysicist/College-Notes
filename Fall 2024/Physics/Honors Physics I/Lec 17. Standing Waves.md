If there are superposing waves, then sometimes you can have an interesting pattern emerging - The wave seems to not move.

$y_{1}(x,t) = Acos(kx- \omega t)$
$y_{2}(x,t) = Acos(kx + \omega t)$

$y_{1}$ is moving in the positive $x$ direction (remember, $x-a$ means origin shifts to $+a$)
$y_{2}$ is moving in the negative $x$ direction

**(Imagine $y_{1}(x,t) = cos(x-t)$ but with just a few constants)**
```desmos-graph
top=1.2; bottom=-1.2;
left=-0.5; right=pi
---
y=\cos(x-0)
y=\cos(x-0.5)
```

Let's look at one part of the wave…
![[Physics/Honors Physics I/attachments/Drawing 24-11-25-12-48-26]]

By the superposition principle and supposing that $y_1$ and $y_2$ are on the same string,
$$y(x, t) = y_{1}(x,t) + y_{2}(x,t)$$
$\implies y(x,t) = Acos(kx - \omega t)+Acos(kx+\omega t)$

using $cos(a+b) = cos(a)cos(b) + sin(a)sin(b)$ and $cos(-x)=cos(x)$ and $sin(-x)=-sin(x)$:

$y(x,t) = A[cos(kx)cos(\omega t) + sin(kx)sin(\omega t) + cos(kx)cos(\omega t) - sin(kx)sin(\omega t)]$

$$\therefore y(x,t) = 2Asin(kx)cos(\omega t)$$
![[Physics/Honors Physics I/attachments/Drawing 24-11-25-01-04-20]]

For a string that is tied on both ends like above, there is a physical constraint over the boundaries. I.e. the boundaries can always be zero. Hence, $sin(kL) = 0 = n \pi$
Ahaa!
The $k$ (and hence $\lambda$) is quantised!

There are only certain wavelengths that you can create with such constraints for interference. 

This is the premise for quantum mechanics and even string theory for that matter!

---

## Power and Intensity 
$Power = \frac{Work}{Time}$

$[Watt] = [Power], \qquad Watt = \frac{1Joule}{1Second}$

$Intensity = \frac{Power}{Area}$

>The "loudness" of sound is quantified in terms of intensity

Intensity of sound is measured in $dB$. (Decibels)

$\beta = (10 dB) log_{10}(\frac{I}{I_{0}})$

Decibels are a logarithmic scales.

$I_{0} = \frac{10^{-12}W}{m^{2}}$

> $\beta = 0 \space dB$ is the threshold for hearing (i.e. 10 dB)
> $\beta = 70 \space dB$ is human conversation
> $\beta = 120 \space dB$ is the threshold for pain

$v= \sqrt{\frac{T}{\mu}}$

For a string with length $L$

For strings to vibrate at resonance, you must have the wave length match the length so as when the interference happens, you get a standing wave.

Depending on what column you have, you have a integral multiple of the wavelength fundamental

## Beats 
2 Frequencies playing close but not identical frequency then some interesting interference pattern occurs.

$y_{1} = Acos(k_{1}x - \omega_{1}t)$
$y_{2} = Acos(k_{2}x - \omega_{2}t)$

$y = y_{1} + y_{2}$

$cos(u) + cos(v) = 2cos(\frac{u+v}{2})cos(\frac{u-v}{2})$

Hence, $y = 2Acos(\frac{k_{1}x-\omega_{1}t + k_{2}x-\omega_{2}t}{2})cos(\frac{k_{1}x-\omega_{1}t - k_{2}x+\omega_{2}t}{2})$

$y = 2Acos(\frac{(k_{1}+k_{2})x - (\omega_{1} + \omega_{2})t}{2})cos(\frac{(k_{1}-k_{2})x - (\omega_{2} - \omega_{1})t}{2})$

$$y = 2Acos(k_{avg}x - \omega_{avg}t)cos(\frac{\Delta k x}{2} + \frac{\Delta \omega t}{2})$$

Suppose $k_{1} = k_{2} \implies \Delta k = 0$

$\implies y = 2A cos(kx - \omega_{avg}t)cos(\frac{\Delta \omega t}{2})$

Beat frequency $= f_{1}-f_{2}$

## Doppler Effect 
![[Physics/Honors Physics I/attachments/Drawing 24-11-26-12-47-42|800]]

$v=f \cdot \lambda$
$v_{1} = \text{source speed}$
$v_{2} = \text{listener speed}$

### Stationary Source and Moving Listerner
For a stationary source, The velocity at which wave fronts travel to the Listener is $v+v_{2}$.

$\lambda = \lambda$ since the frequency of wavefronts being emitted is the same and the distance between each wave front is still the same.

Hence, the frequency of listening must be different.

$f_{2} \lambda = v + v_{2} \implies f_{2} = \frac{v+v_{2}}{\lambda} = \frac{v/v+v_{2}/v}{\lambda/v}$
$$f_{2}=f_{0}(1+\frac{v_{2}}{v})$$
Where $f_{0}=\text{original frequency}$

### Moving Source and Listener

In this case, the velocity of the wave front is still $v+v_{2}$ (independent of the source)
But here, since the source is moving,
![[Physics/Honors Physics I/attachments/Drawing 24-11-26-12-59-41]]

The waves get crunched together and hence $\lambda_{0} = \frac{v}{f_{0}}$
But now, $\lambda_{1} = \frac{v-v_{1}}{f_{0}}$ since frequency of emission is the same, but the velocity of source has changed
(note how this is independent of the listener)

$f_{2}\lambda_{1} = v+v_{2}$
$$\implies f_{2} = \frac{v + v_{2}}{\lambda_{1}} = \frac{v+v_{2}}{v+v_{1}}f_{0}$$

In a nutshell, $f_{\text{observed}}\lambda_{\text{emission}}=v_{\text{relative wavefront}}$

$\lambda_{\text{emission}} = \frac{v+v_{1}}{f_{0}}$

$v_\text{relative wavefront} = v + v_{2}$


