  .text
  .globl init_mparams
  .type init_mparams, @function

#! file-offset 0x607e0
#! rip-offset  0x607e0
#! capacity    352 bytes

# Text                             #  Line  RIP      Bytes  
.init_mparams:                     #        0x607e0  0      
  subl $0x18, %esp                 #  1     0x607e0  3      
  addq %r15, %rsp                  #  2     0x607e3  3      
  movl $0x1, %eax                  #  3     0x607e6  5      
  xchgl %eax, 0xffd608f(%rip)      #  4     0x607eb  6      
  testl %eax, %eax                 #  5     0x607f1  2      
  jne .L_608e0                     #  6     0x607f3  6      
  nop                              #  7     0x607f9  1      
.L_60800:                          #        0x607fa  0      
  movl 0xffd6090(%rip), %eax       #  8     0x607fa  6      
  testl %eax, %eax                 #  9     0x60800  2      
  jne .L_608a0                     #  10    0x60802  6      
  movl $0x2, %edi                  #  11    0x60808  5      
  nop                              #  12    0x6080d  1      
  callq .sysconf                   #  13    0x6080e  5      
  leal -0x1(%rax), %edx            #  14    0x60813  3      
  testl %eax, %edx                 #  15    0x60816  2      
  jne .L_60920                     #  16    0x60818  6      
  movl %eax, 0xffd6070(%rip)       #  17    0x6081e  6      
  leal 0xc(%rsp), %eax             #  18    0x60824  4      
  movl $0x10000, 0xffd6066(%rip)   #  19    0x60828  10     
  nop                              #  20    0x60832  1      
  movl $0x40000, 0xffd605f(%rip)   #  21    0x60833  10     
  movl $0x200000, 0xffd6059(%rip)  #  22    0x6083d  10     
  xorl $0x55555555, %eax           #  23    0x60847  5      
  nop                              #  24    0x6084c  1      
  movl $0x7, 0xffd604d(%rip)       #  25    0x6084d  10     
  movl $0x7, 0xffd621b(%rip)       #  26    0x60857  10     
  orl $0x8, %eax                   #  27    0x60861  3      
  nop                              #  28    0x60864  1      
  movl $0x0, 0xffd6211(%rip)       #  29    0x60865  10     
  andl $0xfffffff8, %eax           #  30    0x6086f  5      
  movl %eax, 0xc(%rsp)             #  31    0x60874  4      
  movl %eax, 0xffd6012(%rip)       #  32    0x60878  6      
  nop                              #  33    0x6087e  1      
.L_608a0:                          #        0x6087f  0      
  mfence                           #  34    0x6087f  3      
  movl $0x0, 0xffd5ff4(%rip)       #  35    0x60882  10     
  addl $0x18, %esp                 #  36    0x6088c  3      
  addq %r15, %rsp                  #  37    0x6088f  3      
  popq %r11                        #  38    0x60892  3      
  movl $0x1, %eax                  #  39    0x60895  5      
  nop                              #  40    0x6089a  1      
  andl $0xffffffe0, %r11d          #  41    0x6089b  7      
  addq %r15, %r11                  #  42    0x608a2  3      
  jmpq %r11                        #  43    0x608a5  3      
  nop                              #  44    0x608a8  1      
  nop                              #  45    0x608a9  1      
.L_608e0:                          #        0x608aa  0      
  movl $0x10036880, %edi           #  46    0x608aa  5      
  nop                              #  47    0x608af  1      
  nop                              #  48    0x608b0  1      
  callq .spin_acquire_lock         #  49    0x608b1  5      
  jmpq .L_60800                    #  50    0x608b6  5      
  nop                              #  51    0x608bb  1      
  nop                              #  52    0x608bc  1      
.L_60920:                          #        0x608bd  0      
  nop                              #  53    0x608bd  1      
  nop                              #  54    0x608be  1      
  callq .abort                     #  55    0x608bf  5      
                                                            
.size init_mparams, .-init_mparams

