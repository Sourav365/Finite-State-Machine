# Finite-State-Machine

*** [Best see this example For NON-separated MEALY](https://github.com/Sourav365/SPI_Protocol_for_FPGA/blob/main/rtl_code/spi_control.v)

## Mealy mchine

### Sequential & Combinational separated 
If we separate sequential and combinational ckt, Flipflops will be created only for the stages.

output will not be synchronous. If i/p changes, output changes. 

I/p glitch --> output glitch.

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/9055eceb-fef9-44e9-98ad-87b8e23ef017)

### Sequential & Combinational NOT separated 
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

### Sequential & Combinational NOT separated (1-clk delay)
![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/5b94b92f-d065-467a-a2c9-5cf356de1a37)

### Sequential & Combinational separated 
![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/8474b0f8-4616-4714-9c39-2bc96d68c1c7)


******************** Buuuuuuuuuuuuuuuutttttttttttttttttttttttt****************************************

While separating combinational and sequential part, give all if-else cases. otherwise output will go to 'x' .

**Put else case**

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/46b79678-7b9a-499c-9b54-37edec7e5624)


## Question

In addition to walking and falling, Lemmings can sometimes be told to do useful things, like dig (it starts digging when dig=1). A Lemming can dig if it is currently walking on ground (ground=1 and not falling), and will continue digging until it reaches the other side (ground=0). At that point, since there is no ground, it will fall (aaah!), then continue walking in its original direction once it hits ground again. As with falling, being bumped while digging has no effect, and being told to dig when falling or when there is no ground is ignored.

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/f1b13eaf-48e3-481a-8134-a51db269ff0d)

![image](https://github.com/Sourav365/Finite-State-Machine/assets/49667585/3267a125-9426-495d-82bd-a8a6fdbbff2b)
