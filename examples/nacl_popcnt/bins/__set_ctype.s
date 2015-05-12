  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x879c0
#! rip-offset  0x879c0
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
.__set_ctype:                        #        0x879c0  0      
  popq %r11                          #  1     0x879c0  3      
  movl $0x100250df, 0xffa91f7(%rip)  #  2     0x879c3  10     
  andl $0xffffffe0, %r11d            #  3     0x879cd  7      
  addq %r15, %r11                    #  4     0x879d4  3      
  jmpq %r11                          #  5     0x879d7  3      
  nop                                #  6     0x879da  1      
  nop                                #  7     0x879db  1      
  nop                                #  8     0x879dc  1      
  nop                                #  9     0x879dd  1      
  nop                                #  10    0x879de  1      
  nop                                #  11    0x879df  1      
  nop                                #  12    0x879e0  1      
  nop                                #  13    0x879e1  1      
  nop                                #  14    0x879e2  1      
  nop                                #  15    0x879e3  1      
                                                              
.size __set_ctype, .-__set_ctype

