  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x67820
#! rip-offset  0x67820
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  
.__libnacl_mandatory_irt_query:  #        0x67820  0      
  subl $0x8, %esp                #  1     0x67820  3      
  addq %r15, %rsp                #  2     0x67823  3      
  movl %edi, %edi                #  3     0x67826  2      
  movl %esi, %esi                #  4     0x67828  2      
  xchgw %ax, %ax                 #  5     0x6782a  3      
  nop                            #  6     0x6782d  1      
  callq .__libnacl_irt_query     #  7     0x6782e  5      
  testl %eax, %eax               #  8     0x67833  2      
  je .L_67860                    #  9     0x67835  6      
  addl $0x8, %esp                #  10    0x6783b  3      
  addq %r15, %rsp                #  11    0x6783e  3      
  popq %r11                      #  12    0x67841  3      
  andl $0xffffffe0, %r11d        #  13    0x67844  7      
  addq %r15, %r11                #  14    0x6784b  3      
  jmpq %r11                      #  15    0x6784e  3      
  nop                            #  16    0x67851  1      
.L_67860:                        #        0x67852  0      
  movl $0x100233d0, %edi         #  17    0x67852  5      
  addl $0x8, %esp                #  18    0x67857  3      
  addq %r15, %rsp                #  19    0x6785a  3      
  jmpq .__libnacl_fatal          #  20    0x6785d  5      
  nop                            #  21    0x67862  1      
  nop                            #  22    0x67863  1      
  nop                            #  23    0x67864  1      
  nop                            #  24    0x67865  1      
  nop                            #  25    0x67866  1      
  nop                            #  26    0x67867  1      
  nop                            #  27    0x67868  1      
  nop                            #  28    0x67869  1      
  nop                            #  29    0x6786a  1      
  nop                            #  30    0x6786b  1      
  nop                            #  31    0x6786c  1      
  nop                            #  32    0x6786d  1      
  nop                            #  33    0x6786e  1      
  nop                            #  34    0x6786f  1      
  nop                            #  35    0x67870  1      
  nop                            #  36    0x67871  1      
                                                          
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query

