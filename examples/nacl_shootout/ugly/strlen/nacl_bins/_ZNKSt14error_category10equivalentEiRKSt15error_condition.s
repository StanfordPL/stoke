  .text
  .globl _ZNKSt14error_category10equivalentEiRKSt15error_condition
  .type _ZNKSt14error_category10equivalentEiRKSt15error_condition, @function

#! file-offset 0x129400
#! rip-offset  0xe9400
#! capacity    128 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode    
._ZNKSt14error_category10equivalentEiRKSt15error_condition:  #        0xe9400  0      OPC=0     
  movl %edi, %edi                                            #  1     0xe9400  2      OPC=1157  
  pushq %rbx                                                 #  2     0xe9402  1      OPC=1861  
  movl %edx, %ebx                                            #  3     0xe9403  2      OPC=1157  
  movl %edi, %edi                                            #  4     0xe9405  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                   #  5     0xe9407  4      OPC=1156  
  movl %eax, %eax                                            #  6     0xe940b  2      OPC=1157  
  movl 0x10(%r15,%rax,1), %eax                               #  7     0xe940d  5      OPC=1156  
  nop                                                        #  8     0xe9412  1      OPC=1343  
  nop                                                        #  9     0xe9413  1      OPC=1343  
  nop                                                        #  10    0xe9414  1      OPC=1343  
  nop                                                        #  11    0xe9415  1      OPC=1343  
  nop                                                        #  12    0xe9416  1      OPC=1343  
  nop                                                        #  13    0xe9417  1      OPC=1343  
  andl $0xffffffe0, %eax                                     #  14    0xe9418  6      OPC=131   
  nop                                                        #  15    0xe941e  1      OPC=1343  
  nop                                                        #  16    0xe941f  1      OPC=1343  
  nop                                                        #  17    0xe9420  1      OPC=1343  
  addq %r15, %rax                                            #  18    0xe9421  3      OPC=72    
  callq %rax                                                 #  19    0xe9424  2      OPC=258   
  movq %rax, %rcx                                            #  20    0xe9426  3      OPC=1162  
  movq %rax, %rdx                                            #  21    0xe9429  3      OPC=1162  
  xorl %eax, %eax                                            #  22    0xe942c  2      OPC=3758  
  shrq $0x20, %rcx                                           #  23    0xe942e  4      OPC=2315  
  movl %ebx, %ebx                                            #  24    0xe9432  2      OPC=1157  
  cmpl %ecx, 0x4(%r15,%rbx,1)                                #  25    0xe9434  5      OPC=457   
  je .L_e9460                                                #  26    0xe9439  6      OPC=893   
  nop                                                        #  27    0xe943f  1      OPC=1343  
  nop                                                        #  28    0xe9440  1      OPC=1343  
  popq %rbx                                                  #  29    0xe9441  1      OPC=1694  
  popq %r11                                                  #  30    0xe9442  2      OPC=1694  
  nop                                                        #  31    0xe9444  1      OPC=1343  
  nop                                                        #  32    0xe9445  1      OPC=1343  
  nop                                                        #  33    0xe9446  1      OPC=1343  
  nop                                                        #  34    0xe9447  1      OPC=1343  
  nop                                                        #  35    0xe9448  1      OPC=1343  
  nop                                                        #  36    0xe9449  1      OPC=1343  
  nop                                                        #  37    0xe944a  1      OPC=1343  
  nop                                                        #  38    0xe944b  1      OPC=1343  
  andl $0xffffffe0, %r11d                                    #  39    0xe944c  7      OPC=131   
  nop                                                        #  40    0xe9453  1      OPC=1343  
  nop                                                        #  41    0xe9454  1      OPC=1343  
  nop                                                        #  42    0xe9455  1      OPC=1343  
  nop                                                        #  43    0xe9456  1      OPC=1343  
  addq %r15, %r11                                            #  44    0xe9457  3      OPC=72    
  jmpq %r11                                                  #  45    0xe945a  3      OPC=928   
  nop                                                        #  46    0xe945d  1      OPC=1343  
  nop                                                        #  47    0xe945e  1      OPC=1343  
  nop                                                        #  48    0xe945f  1      OPC=1343  
  nop                                                        #  49    0xe9460  1      OPC=1343  
  nop                                                        #  50    0xe9461  1      OPC=1343  
  nop                                                        #  51    0xe9462  1      OPC=1343  
  nop                                                        #  52    0xe9463  1      OPC=1343  
  nop                                                        #  53    0xe9464  1      OPC=1343  
  nop                                                        #  54    0xe9465  1      OPC=1343  
  nop                                                        #  55    0xe9466  1      OPC=1343  
  nop                                                        #  56    0xe9467  1      OPC=1343  
  nop                                                        #  57    0xe9468  1      OPC=1343  
  nop                                                        #  58    0xe9469  1      OPC=1343  
  nop                                                        #  59    0xe946a  1      OPC=1343  
  nop                                                        #  60    0xe946b  1      OPC=1343  
  nop                                                        #  61    0xe946c  1      OPC=1343  
  nop                                                        #  62    0xe946d  1      OPC=1343  
  nop                                                        #  63    0xe946e  1      OPC=1343  
  nop                                                        #  64    0xe946f  1      OPC=1343  
  nop                                                        #  65    0xe9470  1      OPC=1343  
  nop                                                        #  66    0xe9471  1      OPC=1343  
  nop                                                        #  67    0xe9472  1      OPC=1343  
.L_e9460:                                                    #        0xe9473  0      OPC=0     
  movl %ebx, %ebx                                            #  68    0xe9473  2      OPC=1157  
  cmpl %edx, (%r15,%rbx,1)                                   #  69    0xe9475  4      OPC=457   
  popq %rbx                                                  #  70    0xe9479  1      OPC=1694  
  popq %r11                                                  #  71    0xe947a  2      OPC=1694  
  sete %al                                                   #  72    0xe947c  3      OPC=2178  
  andl $0xffffffe0, %r11d                                    #  73    0xe947f  7      OPC=131   
  nop                                                        #  74    0xe9486  1      OPC=1343  
  nop                                                        #  75    0xe9487  1      OPC=1343  
  nop                                                        #  76    0xe9488  1      OPC=1343  
  nop                                                        #  77    0xe9489  1      OPC=1343  
  addq %r15, %r11                                            #  78    0xe948a  3      OPC=72    
  jmpq %r11                                                  #  79    0xe948d  3      OPC=928   
  nop                                                        #  80    0xe9490  1      OPC=1343  
  nop                                                        #  81    0xe9491  1      OPC=1343  
  nop                                                        #  82    0xe9492  1      OPC=1343  
  nop                                                        #  83    0xe9493  1      OPC=1343  
  nop                                                        #  84    0xe9494  1      OPC=1343  
  nop                                                        #  85    0xe9495  1      OPC=1343  
  nop                                                        #  86    0xe9496  1      OPC=1343  
  nop                                                        #  87    0xe9497  1      OPC=1343  
  nop                                                        #  88    0xe9498  1      OPC=1343  
  nop                                                        #  89    0xe9499  1      OPC=1343  
                                                                                                
.size _ZNKSt14error_category10equivalentEiRKSt15error_condition, .-_ZNKSt14error_category10equivalentEiRKSt15error_condition

