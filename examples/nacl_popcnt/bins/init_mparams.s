  .text
  .globl init_mparams
  .type init_mparams, @function

#! file-offset 0x60860
#! rip-offset  0x60860
#! capacity    352 bytes

# Text                             #  Line  RIP      Bytes  
.init_mparams:                     #        0x60860  0      
  subl $0x18, %esp                 #  1     0x60860  3      
  addq %r15, %rsp                  #  2     0x60863  3      
  movl $0x1, %eax                  #  3     0x60866  5      
  xchgl %eax, 0xffd600f(%rip)      #  4     0x6086b  6      
  testl %eax, %eax                 #  5     0x60871  2      
  jne .L_60960                     #  6     0x60873  6      
  nop                              #  7     0x60879  1      
.L_60880:                          #        0x6087a  0      
  movl 0xffd6010(%rip), %eax       #  8     0x6087a  6      
  testl %eax, %eax                 #  9     0x60880  2      
  jne .L_60920                     #  10    0x60882  6      
  movl $0x2, %edi                  #  11    0x60888  5      
  nop                              #  12    0x6088d  1      
  callq .sysconf                   #  13    0x6088e  5      
  leal -0x1(%rax), %edx            #  14    0x60893  3      
  testl %eax, %edx                 #  15    0x60896  2      
  jne .L_609a0                     #  16    0x60898  6      
  movl %eax, 0xffd5ff0(%rip)       #  17    0x6089e  6      
  leal 0xc(%rsp), %eax             #  18    0x608a4  4      
  movl $0x10000, 0xffd5fe6(%rip)   #  19    0x608a8  10     
  nop                              #  20    0x608b2  1      
  movl $0x40000, 0xffd5fdf(%rip)   #  21    0x608b3  10     
  movl $0x200000, 0xffd5fd9(%rip)  #  22    0x608bd  10     
  xorl $0x55555555, %eax           #  23    0x608c7  5      
  nop                              #  24    0x608cc  1      
  movl $0x7, 0xffd5fcd(%rip)       #  25    0x608cd  10     
  movl $0x7, 0xffd619b(%rip)       #  26    0x608d7  10     
  orl $0x8, %eax                   #  27    0x608e1  3      
  nop                              #  28    0x608e4  1      
  movl $0x0, 0xffd6191(%rip)       #  29    0x608e5  10     
  andl $0xfffffff8, %eax           #  30    0x608ef  5      
  movl %eax, 0xc(%rsp)             #  31    0x608f4  4      
  movl %eax, 0xffd5f92(%rip)       #  32    0x608f8  6      
  nop                              #  33    0x608fe  1      
.L_60920:                          #        0x608ff  0      
  mfence                           #  34    0x608ff  3      
  movl $0x0, 0xffd5f74(%rip)       #  35    0x60902  10     
  addl $0x18, %esp                 #  36    0x6090c  3      
  addq %r15, %rsp                  #  37    0x6090f  3      
  popq %r11                        #  38    0x60912  3      
  movl $0x1, %eax                  #  39    0x60915  5      
  nop                              #  40    0x6091a  1      
  andl $0xffffffe0, %r11d          #  41    0x6091b  7      
  addq %r15, %r11                  #  42    0x60922  3      
  jmpq %r11                        #  43    0x60925  3      
  nop                              #  44    0x60928  1      
  nop                              #  45    0x60929  1      
.L_60960:                          #        0x6092a  0      
  movl $0x10036880, %edi           #  46    0x6092a  5      
  nop                              #  47    0x6092f  1      
  nop                              #  48    0x60930  1      
  callq .spin_acquire_lock         #  49    0x60931  5      
  jmpq .L_60880                    #  50    0x60936  5      
  nop                              #  51    0x6093b  1      
  nop                              #  52    0x6093c  1      
.L_609a0:                          #        0x6093d  0      
  nop                              #  53    0x6093d  1      
  nop                              #  54    0x6093e  1      
  callq .abort                     #  55    0x6093f  5      
                                                            
.size init_mparams, .-init_mparams

