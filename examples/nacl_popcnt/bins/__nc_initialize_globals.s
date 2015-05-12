  .text
  .globl __nc_initialize_globals
  .type __nc_initialize_globals, @function

#! file-offset 0x41aa0
#! rip-offset  0x41aa0
#! capacity    256 bytes

# Text                               #  Line  RIP      Bytes  
.__nc_initialize_globals:            #        0x41aa0  0      
  subl $0x8, %esp                    #  1     0x41aa0  3      
  addq %r15, %rsp                    #  2     0x41aa3  3      
  nop                                #  3     0x41aa6  1      
  nop                                #  4     0x41aa7  1      
  callq .__nc_initialize_interfaces  #  5     0x41aa8  5      
  xorl %esi, %esi                    #  6     0x41aad  2      
  movl $0x10036da0, %edi             #  7     0x41aaf  5      
  nop                                #  8     0x41ab4  1      
  nop                                #  9     0x41ab5  1      
  callq .pthread_mutex_init          #  10    0x41ab6  5      
  testl %eax, %eax                   #  11    0x41abb  2      
  jne .L_41b80                       #  12    0x41abd  6      
  movl $0x10036da0, %edx             #  13    0x41ac3  5      
  movl $0x114, %esi                  #  14    0x41ac8  5      
  movl $0x10020940, %edi             #  15    0x41acd  5      
  nop                                #  16    0x41ad2  1      
  callq .NACL_AnnotateMutexIsNotPHB  #  17    0x41ad3  5      
  xorl %esi, %esi                    #  18    0x41ad8  2      
  movl $0x10030d80, %edi             #  19    0x41ada  5      
  nop                                #  20    0x41adf  1      
  nop                                #  21    0x41ae0  1      
  callq .pthread_cond_init           #  22    0x41ae1  5      
  testl %eax, %eax                   #  23    0x41ae6  2      
  jne .L_41b80                       #  24    0x41ae8  6      
  movl $0x0, 0xfff52c8(%rip)         #  25    0x41aee  10     
  movl $0x10036dc0, 0xfff52c2(%rip)  #  26    0x41af8  10     
  nop                                #  27    0x41b02  1      
  movl $0x0, 0xfff52bb(%rip)         #  28    0x41b03  10     
  movl $0x10036dc8, 0xfff52b5(%rip)  #  29    0x41b0d  10     
  movl $0x1, 0xfff526f(%rip)         #  30    0x41b17  10     
  xchgw %ax, %ax                     #  31    0x41b21  3      
  addl $0x8, %esp                    #  32    0x41b24  3      
  addq %r15, %rsp                    #  33    0x41b27  3      
  popq %r11                          #  34    0x41b2a  3      
  andl $0xffffffe0, %r11d            #  35    0x41b2d  7      
  addq %r15, %r11                    #  36    0x41b34  3      
  jmpq %r11                          #  37    0x41b37  3      
  nop                                #  38    0x41b3a  1      
.L_41b80:                            #        0x41b3b  0      
  ud2                                #  39    0x41b3b  2      
  nop                                #  40    0x41b3d  1      
  nop                                #  41    0x41b3e  1      
                                                              
.size __nc_initialize_globals, .-__nc_initialize_globals

