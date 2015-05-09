  .text
  .globl __nc_initialize_globals
  .type __nc_initialize_globals, @function

#! file-offset 0x41a80
#! rip-offset  0x41a80
#! capacity    256 bytes

# Text                               #  Line  RIP      Bytes  
.__nc_initialize_globals:            #        0x41a80  0      
  subl $0x8, %esp                    #  1     0x41a80  3      
  addq %r15, %rsp                    #  2     0x41a83  3      
  nop                                #  3     0x41a86  1      
  nop                                #  4     0x41a87  1      
  callq .__nc_initialize_interfaces  #  5     0x41a88  5      
  xorl %esi, %esi                    #  6     0x41a8d  2      
  movl $0x10036da0, %edi             #  7     0x41a8f  5      
  nop                                #  8     0x41a94  1      
  nop                                #  9     0x41a95  1      
  callq .pthread_mutex_init          #  10    0x41a96  5      
  testl %eax, %eax                   #  11    0x41a9b  2      
  jne .L_41b60                       #  12    0x41a9d  6      
  movl $0x10036da0, %edx             #  13    0x41aa3  5      
  movl $0x114, %esi                  #  14    0x41aa8  5      
  movl $0x10020940, %edi             #  15    0x41aad  5      
  nop                                #  16    0x41ab2  1      
  callq .NACL_AnnotateMutexIsNotPHB  #  17    0x41ab3  5      
  xorl %esi, %esi                    #  18    0x41ab8  2      
  movl $0x10030d80, %edi             #  19    0x41aba  5      
  nop                                #  20    0x41abf  1      
  nop                                #  21    0x41ac0  1      
  callq .pthread_cond_init           #  22    0x41ac1  5      
  testl %eax, %eax                   #  23    0x41ac6  2      
  jne .L_41b60                       #  24    0x41ac8  6      
  movl $0x0, 0xfff52e8(%rip)         #  25    0x41ace  10     
  movl $0x10036dc0, 0xfff52e2(%rip)  #  26    0x41ad8  10     
  nop                                #  27    0x41ae2  1      
  movl $0x0, 0xfff52db(%rip)         #  28    0x41ae3  10     
  movl $0x10036dc8, 0xfff52d5(%rip)  #  29    0x41aed  10     
  movl $0x1, 0xfff528f(%rip)         #  30    0x41af7  10     
  xchgw %ax, %ax                     #  31    0x41b01  3      
  addl $0x8, %esp                    #  32    0x41b04  3      
  addq %r15, %rsp                    #  33    0x41b07  3      
  popq %r11                          #  34    0x41b0a  3      
  andl $0xffffffe0, %r11d            #  35    0x41b0d  7      
  addq %r15, %r11                    #  36    0x41b14  3      
  jmpq %r11                          #  37    0x41b17  3      
  nop                                #  38    0x41b1a  1      
.L_41b60:                            #        0x41b1b  0      
  ud2                                #  39    0x41b1b  2      
  nop                                #  40    0x41b1d  1      
  nop                                #  41    0x41b1e  1      
                                                              
.size __nc_initialize_globals, .-__nc_initialize_globals

