# Finite-State-Machine

## Mealy mchine

If we separate sequential and combinational ckt, Flipflops will be created only for the stages.

output will not be synchronous. If i/p changes, output changes. 

I/p glitch --> output glitch.

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/9055eceb-fef9-44e9-98ad-87b8e23ef017)


If we don't separate sequential and combinational ckt, Flipflops will be created for the stages and also for output ckt.

==> More no of flip flops.

Output will be synchronous

I/p glitch --> No output glitch.

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/37539262-4c99-4c69-a88f-391772abf5f7)


**Best way is to separate sequential and combinational ckt to reduce number of FF.**

## Moore mchine

Here, output depents on present state only, not on i/p.

present state is synchronous.

So o/p will also be synchronous for all the cases.

O/p is same for both case

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/5b94b92f-d065-467a-a2c9-5cf356de1a37)

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/8474b0f8-4616-4714-9c39-2bc96d68c1c7)


