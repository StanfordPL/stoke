  .text
  .globl _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E
  .type _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, @function

#! file-offset 0xadfe0
#! rip-offset  0x6dfe0
#! capacity    160 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E:         #        0x6dfe0  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                                           #  1     0x6dfe0  5      OPC=1138  
  movl %edi, %ebx                                                                  #  2     0x6dfe5  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                                            #  3     0x6dfe7  5      OPC=1138  
  subl $0x18, %esp                                                                 #  4     0x6dfec  3      OPC=2384  
  addq %r15, %rsp                                                                  #  5     0x6dfef  3      OPC=72    
  movl %ebx, %ebx                                                                  #  6     0x6dff2  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                         #  7     0x6dff4  4      OPC=1156  
  movl %esi, %r12d                                                                 #  8     0x6dff8  3      OPC=1157  
  subl $0xc, %eax                                                                  #  9     0x6dffb  3      OPC=2384  
  xchgw %ax, %ax                                                                   #  10    0x6dffe  2      OPC=3700  
  movl %eax, %eax                                                                  #  11    0x6e000  2      OPC=1157  
  movl (%r15,%rax,1), %eax                                                         #  12    0x6e002  4      OPC=1156  
  addl %ebx, %eax                                                                  #  13    0x6e006  2      OPC=67    
  movl %eax, %eax                                                                  #  14    0x6e008  2      OPC=1157  
  movl 0x80(%r15,%rax,1), %edi                                                     #  15    0x6e00a  8      OPC=1156  
  testq %rdi, %rdi                                                                 #  16    0x6e012  3      OPC=2438  
  je .L_6e060                                                                      #  17    0x6e015  6      OPC=893   
  nop                                                                              #  18    0x6e01b  1      OPC=1343  
  nop                                                                              #  19    0x6e01c  1      OPC=1343  
  movl %edi, %edi                                                                  #  20    0x6e01d  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                                         #  21    0x6e01f  4      OPC=1156  
  nop                                                                              #  22    0x6e023  1      OPC=1343  
  nop                                                                              #  23    0x6e024  1      OPC=1343  
  nop                                                                              #  24    0x6e025  1      OPC=1343  
  movl $0xa, %esi                                                                  #  25    0x6e026  5      OPC=1154  
  movl %eax, %eax                                                                  #  26    0x6e02b  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                                                     #  27    0x6e02d  5      OPC=1156  
  nop                                                                              #  28    0x6e032  1      OPC=1343  
  nop                                                                              #  29    0x6e033  1      OPC=1343  
  nop                                                                              #  30    0x6e034  1      OPC=1343  
  nop                                                                              #  31    0x6e035  1      OPC=1343  
  nop                                                                              #  32    0x6e036  1      OPC=1343  
  nop                                                                              #  33    0x6e037  1      OPC=1343  
  nop                                                                              #  34    0x6e038  1      OPC=1343  
  nop                                                                              #  35    0x6e039  1      OPC=1343  
  nop                                                                              #  36    0x6e03a  1      OPC=1343  
  nop                                                                              #  37    0x6e03b  1      OPC=1343  
  nop                                                                              #  38    0x6e03c  1      OPC=1343  
  nop                                                                              #  39    0x6e03d  1      OPC=1343  
  andl $0xffffffe0, %eax                                                           #  40    0x6e03e  6      OPC=131   
  nop                                                                              #  41    0x6e044  1      OPC=1343  
  nop                                                                              #  42    0x6e045  1      OPC=1343  
  nop                                                                              #  43    0x6e046  1      OPC=1343  
  addq %r15, %rax                                                                  #  44    0x6e047  3      OPC=72    
  callq %rax                                                                       #  45    0x6e04a  2      OPC=258   
  movl %r12d, %esi                                                                 #  46    0x6e04c  3      OPC=1157  
  movl %ebx, %edi                                                                  #  47    0x6e04f  2      OPC=1157  
  movq 0x10(%rsp), %r12                                                            #  48    0x6e051  5      OPC=1161  
  movq 0x8(%rsp), %rbx                                                             #  49    0x6e056  5      OPC=1161  
  movl %eax, %edx                                                                  #  50    0x6e05b  2      OPC=1157  
  addl $0x18, %esp                                                                 #  51    0x6e05d  3      OPC=65    
  addq %r15, %rsp                                                                  #  52    0x6e060  3      OPC=72    
  jmpq ._ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_Ew  #  53    0x6e063  5      OPC=930   
  nop                                                                              #  54    0x6e068  1      OPC=1343  
  nop                                                                              #  55    0x6e069  1      OPC=1343  
  nop                                                                              #  56    0x6e06a  1      OPC=1343  
  nop                                                                              #  57    0x6e06b  1      OPC=1343  
.L_6e060:                                                                          #        0x6e06c  0      OPC=0     
  nop                                                                              #  58    0x6e06c  1      OPC=1343  
  nop                                                                              #  59    0x6e06d  1      OPC=1343  
  nop                                                                              #  60    0x6e06e  1      OPC=1343  
  nop                                                                              #  61    0x6e06f  1      OPC=1343  
  nop                                                                              #  62    0x6e070  1      OPC=1343  
  nop                                                                              #  63    0x6e071  1      OPC=1343  
  nop                                                                              #  64    0x6e072  1      OPC=1343  
  nop                                                                              #  65    0x6e073  1      OPC=1343  
  nop                                                                              #  66    0x6e074  1      OPC=1343  
  nop                                                                              #  67    0x6e075  1      OPC=1343  
  nop                                                                              #  68    0x6e076  1      OPC=1343  
  nop                                                                              #  69    0x6e077  1      OPC=1343  
  nop                                                                              #  70    0x6e078  1      OPC=1343  
  nop                                                                              #  71    0x6e079  1      OPC=1343  
  nop                                                                              #  72    0x6e07a  1      OPC=1343  
  nop                                                                              #  73    0x6e07b  1      OPC=1343  
  nop                                                                              #  74    0x6e07c  1      OPC=1343  
  nop                                                                              #  75    0x6e07d  1      OPC=1343  
  nop                                                                              #  76    0x6e07e  1      OPC=1343  
  nop                                                                              #  77    0x6e07f  1      OPC=1343  
  nop                                                                              #  78    0x6e080  1      OPC=1343  
  nop                                                                              #  79    0x6e081  1      OPC=1343  
  nop                                                                              #  80    0x6e082  1      OPC=1343  
  nop                                                                              #  81    0x6e083  1      OPC=1343  
  nop                                                                              #  82    0x6e084  1      OPC=1343  
  nop                                                                              #  83    0x6e085  1      OPC=1343  
  nop                                                                              #  84    0x6e086  1      OPC=1343  
  callq ._ZSt16__throw_bad_castv                                                   #  85    0x6e087  5      OPC=260   
                                                                                                                      
.size _ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E, .-_ZNSt13basic_istreamIwSt11char_traitsIwEE3getERSt15basic_streambufIwS1_E

