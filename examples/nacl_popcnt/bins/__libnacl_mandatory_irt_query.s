  .text
  .globl __libnacl_mandatory_irt_query
  .type __libnacl_mandatory_irt_query, @function

#! file-offset 0x67780
#! rip-offset  0x67780
#! capacity    96 bytes

# Text                           #  Line  RIP      Bytes  
.__libnacl_mandatory_irt_query:  #        0x67780  0      
  subl $0x8, %esp                #  1     0x67780  3      
  addq %r15, %rsp                #  2     0x67783  3      
  movl %edi, %edi                #  3     0x67786  2      
  movl %esi, %esi                #  4     0x67788  2      
  xchgw %ax, %ax                 #  5     0x6778a  3      
  nop                            #  6     0x6778d  1      
  callq .__libnacl_irt_query     #  7     0x6778e  5      
  testl %eax, %eax               #  8     0x67793  2      
  je .L_677c0                    #  9     0x67795  6      
  addl $0x8, %esp                #  10    0x6779b  3      
  addq %r15, %rsp                #  11    0x6779e  3      
  popq %r11                      #  12    0x677a1  3      
  andl $0xffffffe0, %r11d        #  13    0x677a4  7      
  addq %r15, %r11                #  14    0x677ab  3      
  jmpq %r11                      #  15    0x677ae  3      
  nop                            #  16    0x677b1  1      
.L_677c0:                        #        0x677b2  0      
  movl $0x100233d0, %edi         #  17    0x677b2  5      
  addl $0x8, %esp                #  18    0x677b7  3      
  addq %r15, %rsp                #  19    0x677ba  3      
  jmpq .__libnacl_fatal          #  20    0x677bd  5      
  nop                            #  21    0x677c2  1      
  nop                            #  22    0x677c3  1      
  nop                            #  23    0x677c4  1      
  nop                            #  24    0x677c5  1      
  nop                            #  25    0x677c6  1      
  nop                            #  26    0x677c7  1      
  nop                            #  27    0x677c8  1      
  nop                            #  28    0x677c9  1      
  nop                            #  29    0x677ca  1      
  nop                            #  30    0x677cb  1      
  nop                            #  31    0x677cc  1      
  nop                            #  32    0x677cd  1      
  nop                            #  33    0x677ce  1      
  nop                            #  34    0x677cf  1      
  nop                            #  35    0x677d0  1      
  nop                            #  36    0x677d1  1      
                                                          
.size __libnacl_mandatory_irt_query, .-__libnacl_mandatory_irt_query

