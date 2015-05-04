  .text
  .globl __set_ctype
  .type __set_ctype, @function

#! file-offset 0x87a40
#! rip-offset  0x87a40
#! capacity    32 bytes

# Text                               #  Line  RIP      Bytes  
.__set_ctype:                        #        0x87a40  0      
  popq %r11                          #  1     0x87a40  3      
  movl $0x100250df, 0xffa9177(%rip)  #  2     0x87a43  10     
  andl $0xffffffe0, %r11d            #  3     0x87a4d  7      
  addq %r15, %r11                    #  4     0x87a54  3      
  jmpq %r11                          #  5     0x87a57  3      
  nop                                #  6     0x87a5a  1      
  nop                                #  7     0x87a5b  1      
  nop                                #  8     0x87a5c  1      
  nop                                #  9     0x87a5d  1      
  nop                                #  10    0x87a5e  1      
  nop                                #  11    0x87a5f  1      
  nop                                #  12    0x87a60  1      
  nop                                #  13    0x87a61  1      
  nop                                #  14    0x87a62  1      
  nop                                #  15    0x87a63  1      
                                                              
.size __set_ctype, .-__set_ctype

