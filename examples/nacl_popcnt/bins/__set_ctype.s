  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x879a0
#! rip-offset  0x879a0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
.__set_ctype:                        #        0x879a0  0      
  popq %r11                          #  1     0x879a0  3      
  movl $0x100250df, 0xffa9217(%rip)  #  2     0x879a3  10     
  andl $0xffffffe0, %r11d            #  3     0x879ad  7      
  addq %r15, %r11                    #  4     0x879b4  3      
  jmpq %r11                          #  5     0x879b7  3      
  nop                                #  6     0x879ba  1      
  nop                                #  7     0x879bb  1      
  nop                                #  8     0x879bc  1      
  nop                                #  9     0x879bd  1      
  nop                                #  10    0x879be  1      
  nop                                #  11    0x879bf  1      
  nop                                #  12    0x879c0  1      
  nop                                #  13    0x879c1  1      
  nop                                #  14    0x879c2  1      
  nop                                #  15    0x879c3  1      
                                                              
.size __set_ctype, .-__set_ctype

