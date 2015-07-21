  .text
  .globl pulse
  .type pulse, @function

#! file-offset 0x6f320
#! rip-offset  0x2f320
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.pulse:                        #        0x2f320  0      OPC=0     
  subl $0x18, %esp             #  1     0x2f320  3      OPC=2384  
  addq %r15, %rsp              #  2     0x2f323  3      OPC=72    
  movl %edi, %edi              #  3     0x2f326  2      OPC=1157  
  movl %edi, %edi              #  4     0x2f328  2      OPC=1157  
  lock                         #  5     0x2f32a  1      OPC=1081  
  addl $0x1, (%r15,%rdi,1)     #  6     0x2f32b  5      OPC=51    
  nop                          #  7     0x2f330  1      OPC=1343  
  movl 0x10049e96(%rip), %eax  #  8     0x2f331  6      OPC=1156  
  leal 0xc(%rsp), %edx         #  9     0x2f337  4      OPC=1066  
  nop                          #  10    0x2f33b  1      OPC=1343  
  nop                          #  11    0x2f33c  1      OPC=1343  
  nop                          #  12    0x2f33d  1      OPC=1343  
  nop                          #  13    0x2f33e  1      OPC=1343  
  nop                          #  14    0x2f33f  1      OPC=1343  
  nop                          #  15    0x2f340  1      OPC=1343  
  nop                          #  16    0x2f341  1      OPC=1343  
  nop                          #  17    0x2f342  1      OPC=1343  
  nop                          #  18    0x2f343  1      OPC=1343  
  nop                          #  19    0x2f344  1      OPC=1343  
  nop                          #  20    0x2f345  1      OPC=1343  
  nop                          #  21    0x2f346  1      OPC=1343  
  nop                          #  22    0x2f347  1      OPC=1343  
  nop                          #  23    0x2f348  1      OPC=1343  
  nop                          #  24    0x2f349  1      OPC=1343  
  nop                          #  25    0x2f34a  1      OPC=1343  
  nop                          #  26    0x2f34b  1      OPC=1343  
  nop                          #  27    0x2f34c  1      OPC=1343  
  nop                          #  28    0x2f34d  1      OPC=1343  
  nop                          #  29    0x2f34e  1      OPC=1343  
  nop                          #  30    0x2f34f  1      OPC=1343  
  nop                          #  31    0x2f350  1      OPC=1343  
  nop                          #  32    0x2f351  1      OPC=1343  
  nop                          #  33    0x2f352  1      OPC=1343  
  nop                          #  34    0x2f353  1      OPC=1343  
  nop                          #  35    0x2f354  1      OPC=1343  
  nop                          #  36    0x2f355  1      OPC=1343  
  nop                          #  37    0x2f356  1      OPC=1343  
  nop                          #  38    0x2f357  1      OPC=1343  
  nop                          #  39    0x2f358  1      OPC=1343  
  andl $0xffffffe0, %eax       #  40    0x2f359  6      OPC=131   
  nop                          #  41    0x2f35f  1      OPC=1343  
  nop                          #  42    0x2f360  1      OPC=1343  
  nop                          #  43    0x2f361  1      OPC=1343  
  addq %r15, %rax              #  44    0x2f362  3      OPC=72    
  callq %rax                   #  45    0x2f365  2      OPC=258   
  addl $0x18, %esp             #  46    0x2f367  3      OPC=65    
  addq %r15, %rsp              #  47    0x2f36a  3      OPC=72    
  xorl %eax, %eax              #  48    0x2f36d  2      OPC=3758  
  popq %r11                    #  49    0x2f36f  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  50    0x2f371  7      OPC=131   
  nop                          #  51    0x2f378  1      OPC=1343  
  nop                          #  52    0x2f379  1      OPC=1343  
  nop                          #  53    0x2f37a  1      OPC=1343  
  nop                          #  54    0x2f37b  1      OPC=1343  
  addq %r15, %r11              #  55    0x2f37c  3      OPC=72    
  jmpq %r11                    #  56    0x2f37f  3      OPC=928   
  nop                          #  57    0x2f382  1      OPC=1343  
  nop                          #  58    0x2f383  1      OPC=1343  
  nop                          #  59    0x2f384  1      OPC=1343  
  nop                          #  60    0x2f385  1      OPC=1343  
  nop                          #  61    0x2f386  1      OPC=1343  
  nop                          #  62    0x2f387  1      OPC=1343  
  nop                          #  63    0x2f388  1      OPC=1343  
  nop                          #  64    0x2f389  1      OPC=1343  
  nop                          #  65    0x2f38a  1      OPC=1343  
  nop                          #  66    0x2f38b  1      OPC=1343  
  nop                          #  67    0x2f38c  1      OPC=1343  
  nop                          #  68    0x2f38d  1      OPC=1343  
                                                                  
.size pulse, .-pulse

