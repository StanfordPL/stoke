  .text
  .globl __nc_initialize_globals
  .type __nc_initialize_globals, @function

#! file-offset 0x41b20
#! rip-offset  0x41b20
#! capacity    256 bytes

# Text                               #  Line  RIP      Bytes  
.__nc_initialize_globals:            #        0x41b20  0      
  subl $0x8, %esp                    #  1     0x41b20  3      
  addq %r15, %rsp                    #  2     0x41b23  3      
  nop                                #  3     0x41b26  1      
  nop                                #  4     0x41b27  1      
  callq .__nc_initialize_interfaces  #  5     0x41b28  5      
  xorl %esi, %esi                    #  6     0x41b2d  2      
  movl $0x10036da0, %edi             #  7     0x41b2f  5      
  nop                                #  8     0x41b34  1      
  nop                                #  9     0x41b35  1      
  callq .pthread_mutex_init          #  10    0x41b36  5      
  testl %eax, %eax                   #  11    0x41b3b  2      
  jne .L_41c00                       #  12    0x41b3d  6      
  movl $0x10036da0, %edx             #  13    0x41b43  5      
  movl $0x114, %esi                  #  14    0x41b48  5      
  movl $0x10020940, %edi             #  15    0x41b4d  5      
  nop                                #  16    0x41b52  1      
  callq .NACL_AnnotateMutexIsNotPHB  #  17    0x41b53  5      
  xorl %esi, %esi                    #  18    0x41b58  2      
  movl $0x10030d80, %edi             #  19    0x41b5a  5      
  nop                                #  20    0x41b5f  1      
  nop                                #  21    0x41b60  1      
  callq .pthread_cond_init           #  22    0x41b61  5      
  testl %eax, %eax                   #  23    0x41b66  2      
  jne .L_41c00                       #  24    0x41b68  6      
  movl $0x0, 0xfff5248(%rip)         #  25    0x41b6e  10     
  movl $0x10036dc0, 0xfff5242(%rip)  #  26    0x41b78  10     
  nop                                #  27    0x41b82  1      
  movl $0x0, 0xfff523b(%rip)         #  28    0x41b83  10     
  movl $0x10036dc8, 0xfff5235(%rip)  #  29    0x41b8d  10     
  movl $0x1, 0xfff51ef(%rip)         #  30    0x41b97  10     
  xchgw %ax, %ax                     #  31    0x41ba1  3      
  addl $0x8, %esp                    #  32    0x41ba4  3      
  addq %r15, %rsp                    #  33    0x41ba7  3      
  popq %r11                          #  34    0x41baa  3      
  andl $0xffffffe0, %r11d            #  35    0x41bad  7      
  addq %r15, %r11                    #  36    0x41bb4  3      
  jmpq %r11                          #  37    0x41bb7  3      
  nop                                #  38    0x41bba  1      
.L_41c00:                            #        0x41bbb  0      
  ud2                                #  39    0x41bbb  2      
  nop                                #  40    0x41bbd  1      
  nop                                #  41    0x41bbe  1      
                                                              
.size __nc_initialize_globals, .-__nc_initialize_globals

