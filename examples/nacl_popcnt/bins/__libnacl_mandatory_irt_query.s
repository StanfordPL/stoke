  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x677a0
#! rip-offset  0x677a0
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  
.__libnacl_mandatory_irt_query:  #        0x677a0  0      
  subl $0x8, %esp                #  1     0x677a0  3      
  addq %r15, %rsp                #  2     0x677a3  3      
  movl %edi, %edi                #  3     0x677a6  2      
  movl %esi, %esi                #  4     0x677a8  2      
  xchgw %ax, %ax                 #  5     0x677aa  3      
  nop                            #  6     0x677ad  1      
  callq .__libnacl_irt_query     #  7     0x677ae  5      
  testl %eax, %eax               #  8     0x677b3  2      
  je .L_677e0                    #  9     0x677b5  6      
  addl $0x8, %esp                #  10    0x677bb  3      
  addq %r15, %rsp                #  11    0x677be  3      
  popq %r11                      #  12    0x677c1  3      
  andl $0xffffffe0, %r11d        #  13    0x677c4  7      
  addq %r15, %r11                #  14    0x677cb  3      
  jmpq %r11                      #  15    0x677ce  3      
  nop                            #  16    0x677d1  1      
.L_677e0:                        #        0x677d2  0      
  movl $0x100233d0, %edi         #  17    0x677d2  5      
  addl $0x8, %esp                #  18    0x677d7  3      
  addq %r15, %rsp                #  19    0x677da  3      
  jmpq .__libnacl_fatal          #  20    0x677dd  5      
  nop                            #  21    0x677e2  1      
  nop                            #  22    0x677e3  1      
  nop                            #  23    0x677e4  1      
  nop                            #  24    0x677e5  1      
  nop                            #  25    0x677e6  1      
  nop                            #  26    0x677e7  1      
  nop                            #  27    0x677e8  1      
  nop                            #  28    0x677e9  1      
  nop                            #  29    0x677ea  1      
  nop                            #  30    0x677eb  1      
  nop                            #  31    0x677ec  1      
  nop                            #  32    0x677ed  1      
  nop                            #  33    0x677ee  1      
  nop                            #  34    0x677ef  1      
  nop                            #  35    0x677f0  1      
  nop                            #  36    0x677f1  1      
                                                          
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query

