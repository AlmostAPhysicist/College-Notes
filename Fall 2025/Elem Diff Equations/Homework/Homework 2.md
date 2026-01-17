![[Elem Diff Equations/Homework/attachments/Pasted image 20250922125206.png]]

## 1.5.5
![[Elem Diff Equations/Homework/attachments/Drawing 25-09-22-12-53-39|100%]]

## 1.5.6
![[Elem Diff Equations/Homework/attachments/Drawing 25-09-22-01-34-09|100%]]


---

![[Elem Diff Equations/Homework/attachments/Pasted image 20250922125255.png]]
![[Elem Diff Equations/Homework/attachments/Pasted image 20250922125311.png]]

![[Elem Diff Equations/Homework/attachments/IMG_20250922_210025297.jpg]]
![[Elem Diff Equations/Homework/attachments/IMG_20250924_232128138.jpg]]

![[Elem Diff Equations/Homework/attachments/Pasted image 20250924232211.png]]

We can see in this plot (I made this in a language called Julia using a custom differential equation solver that I had built for another class, just to test it out), that all initial value solutions for $0<y(0)<1$ lie within the $t^{2}$ to $t^{2}+1$ band, $\forall t$

Essentially, for part b), I showed that for the function $h(t):= y(t)-t^{2}$, $h'(t) = h(t)(1-h(t))$ which is locally Lipschitz continuous, meaning that it has a unique solution and therefore we can not reach the equilibrium points $h(t) = 0, 1$

Meaning, if $h(0) \in (0,1)$, then it will remain in that interval, $\forall t$.

This means $0<h(0)<1 \implies 0<h(t)<1 \forall t$
$\boxed{\therefore (0 < y(0) + 0^{2} < 1) \equiv (0<y(0)<1) \implies (0<y(t) +t^{2}<1)\equiv(t^2<y(t)<t^2+1)}$

## 1.5.13
![[Elem Diff Equations/Homework/attachments/IMG_20250924_234600532.jpg]]

### Additional Mentioned Problem in the Homework
![[Elem Diff Equations/Homework/attachments/IMG_20250924_234613765.jpg]]
