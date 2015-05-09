  .text
  .globl init_mparams
  .type init_mparams, @function

#! file-offset 0x607c0
#! rip-offset  0x607c0
#! capacity    352 bytes

# Text                             #  Line  RIP      Bytes  
.init_mparams:                     #        0x607c0  0      
  subl $0x18, %esp                 #  1     0x607c0  3      
  addq %r15, %rsp                  #  2     0x607c3  3      
  movl $0x1, %eax                  #  3     0x607c6  5      
  xchgl %eax, 0xffd60af(%rip)      #  4     0x607cb  6      
  testl %eax, %eax                 #  5     0x607d1  2      
  jne .L_608c0                     #  6     0x607d3  6      
  nop                              #  7     0x607d9  1      
.L_607e0:                          #        0x607da  0      
  movl 0xffd60b0(%rip), %eax       #  8     0x607da  6      
  testl %eax, %eax                 #  9     0x607e0  2      
  jne .L_60880                     #  10    0x607e2  6      
  movl $0x2, %edi                  #  11    0x607e8  5      
  nop                              #  12    0x607ed  1      
  callq .sysconf                   #  13    0x607ee  5      
  leal -0x1(%rax), %edx            #  14    0x607f3  3      
  testl %eax, %edx                 #  15    0x607f6  2      
  jne .L_60900                     #  16    0x607f8  6      
  movl %eax, 0xffd6090(%rip)       #  17    0x607fe  6      
  leal 0xc(%rsp), %eax             #  18    0x60804  4      
  movl $0x10000, 0xffd6086(%rip)   #  19    0x60808  10     
  nop                              #  20    0x60812  1      
  movl $0x40000, 0xffd607f(%rip)   #  21    0x60813  10     
  movl $0x200000, 0xffd6079(%rip)  #  22    0x6081d  10     
  xorl $0x55555555, %eax           #  23    0x60827  5      
  nop                              #  24    0x6082c  1      
  movl $0x7, 0xffd606d(%rip)       #  25    0x6082d  10     
  movl $0x7, 0xffd623b(%rip)       #  26    0x60837  10     
  orl $0x8, %eax                   #  27    0x60841  3      
  nop                              #  28    0x60844  1      
  movl $0x0, 0xffd6231(%rip)       #  29    0x60845  10     
  andl $0xfffffff8, %eax           #  30    0x6084f  5      
  movl %eax, 0xc(%rsp)             #  31    0x60854  4      
  movl %eax, 0xffd6032(%rip)       #  32    0x60858  6      
  nop                              #  33    0x6085e  1      
.L_60880:                          #        0x6085f  0      
  mfence                           #  34    0x6085f  3      
  movl $0x0, 0xffd6014(%rip)       #  35    0x60862  10     
  addl $0x18, %esp                 #  36    0x6086c  3      
  addq %r15, %rsp                  #  37    0x6086f  3      
  popq %r11                        #  38    0x60872  3      
  movl $0x1, %eax                  #  39    0x60875  5      
  nop                              #  40    0x6087a  1      
  andl $0xffffffe0, %r11d          #  41    0x6087b  7      
  addq %r15, %r11                  #  42    0x60882  3      
  jmpq %r11                        #  43    0x60885  3      
  nop                              #  44    0x60888  1      
  nop                              #  45    0x60889  1      
.L_608c0:                          #        0x6088a  0      
  movl $0x10036880, %edi           #  46    0x6088a  5      
  nop                              #  47    0x6088f  1      
  nop                              #  48    0x60890  1      
  callq .spin_acquire_lock         #  49    0x60891  5      
  jmpq .L_607e0                    #  50    0x60896  5      
  nop                              #  51    0x6089b  1      
  nop                              #  52    0x6089c  1      
.L_60900:                          #        0x6089d  0      
  nop                              #  53    0x6089d  1      
  nop                              #  54    0x6089e  1      
  callq .abort                     #  55    0x6089f  5      
                                                            
.size init_mparams, .-init_mparams

