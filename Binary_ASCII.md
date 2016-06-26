##  Binary & ASCII Challenges:

#### 1. How do you represent the number 22 in binary?

  - 22 = 16 + 4 + 2 breaking down in powers of 2

   - 0,1,0,1,1,0  =>  0,16,0,4,2,0

     - 2 ** 0 = 1
     - 2 ** 1 = 2
     - 2 ** 2 = 4
     - 2 ** 3 = 8
     - 2 ** 4 = 16
     - 2 ** 5 = 32

#### 2. How do you represent the number -22 in binary (using two's complement)?

  - 1) convert into positive binary
    - 0,1,0,1,1,0

  - 2) Find least significant bit or smallest power of 2
    - 2**1

  - 3) invert all the bits left of that, not including the smallest bit
    - 1,0,1,0,1,0 => -22

**if number at the farthest left is -1 this mean the number is negative, if number is 0, this mean the number is positive.**

#### 3. How do you represent the number 22 in a hexadecimal?

- ***  hexadecimal is base 16, powers of 16 ***
- *** hexadecimals = [0,1,2,3,4,5,6,7,8,9,A,B,C,D,E] ***

- 22 =  (16 * 1) + (6) => 16 is the hex form


-    16
-   /  \
-  1 * (16 ** 1)   +  6 * (16 ** 0) = 22 Base 10 form

##### What is hexadecimal? Why is it useful?
- hexadecimal is a number system with 16 as base. Power of 16 on   each position.
- It is useful because we can take long byte numbers and convert  it into much
simpler form using hexadecimal. so it is used to represent long byte numbers into hex.


#### 4. Perform addition on these two binary numbers, to produce a third binary number

- 1101 + 10001

***Flip all the 0 and 1 and add one the number***
- 1101 => 0011 =>  (2 ^ 1) + (2 ^ 0) = 3
- 10001 =>  01111 => (2 ^ 3) + (2 ^ 2) + (2 ^ 1) + (2 ^ 0) = 15
- 3 + 15 = 18
- 18 = (2 ** 4) + 2  can be broken down to sum of power of 2

** Answer = 010010 **

##### how to convert signed binary number into positive binary #####
- 1. Find smallest bit. 10111101  (smallest bit is 2 ** 0 place) (left to right)
- 2. Switch all the bits but keep the smallest bit as it is,
but invert the rest (01000011)


#### 5. How many digits of binary is a byte? How many digits of hex is a byte? ####

- *** 1 byte = 8 bit/binary digits ***
- *** 1 hexadecimal digit = 4 bit ***
- *** 2 hexadecimal digit = 8 bit = 1 byte ***


#### 6. Decode the following ASCII message: 0x4869205468657265.####
** Hint! Look it up in this table, there's no need to memorize it.**  
- *** ASCII stands for American Standard Code for Information Interchange
Basically means a way to convert char into numbers because comp can only understand numbers
to convert binary to ASCII, always convert to base 10 number and look up on ASCII
0x means that the number that follows is in hexadecimal and designed to tell human we are reading base 16. ***

 **** 1) to check hex to ASCII break by 2 digits and use table. ****


- 48  69    20      54   68   65   72    65
-  H   i   space   T    h     e    r     e

#### 7.  How is ASCII different than UTF-16? What is character encoding? ####
- Under the hood computer only understands 0 and 1, binary digits or just numbers
in order to store anything to memory we need to first convert it into something that
can actually be represented in physical hardware.
These are all encoding (converting to computer code) system for characters.

- ASCII is seven bit encoding of char into numbers. which means each char "a" is represented
by combination of 7 0s and 1s. 2*7  _ _ _ _ _ _ _ or "a" --> 0000000

- UTF-16 or Unicode (helpful for chars in Asia)  superset of characters
that matches or supports most languages. it has combination of 16 bits per byte.

- UTF-8/UTF-32 represented by 8 bits or 32 bits per byte.

#### 8. They say files, like MP3, are stored in data files called “binaries”. What the heck does that mean? ####
- we can read text files because the content is stored and displayed
in human readable form (through ASCII and unicode)

- binary files store content in binaries which are 0s and 1s, so only computer can read the content.
These are numeric data files. MP3 are stored as files with contents in numbers.

#### 9. How are numbers stored on a computer? ####

- numbers get converted into binary numbers and stored
