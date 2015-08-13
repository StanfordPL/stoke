  .text
  .globl _ZNKSt14error_category10equivalentEiRKSt15error_condition
  .type _ZNKSt14error_category10equivalentEiRKSt15error_condition, @function

#! file-offset 0x129940
#! rip-offset  0xe9940
#! capacity    128 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category10equivalentEiRKSt15error_condition:  #        0xe9940  0      OPC=<label>         
  movl %edi, %edi                                            #  1     0xe9940  2      OPC=movl_r32_r32    
  pushq %rbx                                                 #  2     0xe9942  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                            #  3     0xe9943  2      OPC=movl_r32_r32    
  movl %edi, %edi                                            #  4     0xe9945  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  5     0xe9947  4      OPC=movl_r32_m32    
  movl %eax, %eax                                            #  6     0xe994b  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                               #  7     0xe994d  5      OPC=movl_r32_m32    
  nop                                                        #  8     0xe9952  1      OPC=nop             
  nop                                                        #  9     0xe9953  1      OPC=nop             
  nop                                                        #  10    0xe9954  1      OPC=nop             
  nop                                                        #  11    0xe9955  1      OPC=nop             
  nop                                                        #  12    0xe9956  1      OPC=nop             
  nop                                                        #  13    0xe9957  1      OPC=nop             
  andl $0xffffffe0, %eax                                     #  14    0xe9958  6      OPC=andl_r32_imm32  
  nop                                                        #  15    0xe995e  1      OPC=nop             
  nop                                                        #  16    0xe995f  1      OPC=nop             
  nop                                                        #  17    0xe9960  1      OPC=nop             
  addq %r15, %rax                                            #  18    0xe9961  3      OPC=addq_r64_r64    
  callq %rax                                                 #  19    0xe9964  2      OPC=callq_r64       
  movq %rax, %rcx                                            #  20    0xe9966  3      OPC=movq_r64_r64    
  movq %rax, %rdx                                            #  21    0xe9969  3      OPC=movq_r64_r64    
  xorl %eax, %eax                                            #  22    0xe996c  2      OPC=xorl_r32_r32    
  shrq $0x20, %rcx                                           #  23    0xe996e  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                            #  24    0xe9972  2      OPC=movl_r32_r32    
  cmpl %ecx, 0x4(%r15,%rbx,1)                                #  25    0xe9974  5      OPC=cmpl_m32_r32    
  je .L_e99a0                                                #  26    0xe9979  2      OPC=je_label        
  popq %rbx                                                  #  27    0xe997b  1      OPC=popq_r64_1      
  popq %r11                                                  #  28    0xe997c  2      OPC=popq_r64_1      
  nop                                                        #  29    0xe997e  1      OPC=nop             
  nop                                                        #  30    0xe997f  1      OPC=nop             
  nop                                                        #  31    0xe9980  1      OPC=nop             
  nop                                                        #  32    0xe9981  1      OPC=nop             
  nop                                                        #  33    0xe9982  1      OPC=nop             
  nop                                                        #  34    0xe9983  1      OPC=nop             
  nop                                                        #  35    0xe9984  1      OPC=nop             
  nop                                                        #  36    0xe9985  1      OPC=nop             
  andl $0xffffffe0, %r11d                                    #  37    0xe9986  7      OPC=andl_r32_imm32  
  nop                                                        #  38    0xe998d  1      OPC=nop             
  nop                                                        #  39    0xe998e  1      OPC=nop             
  nop                                                        #  40    0xe998f  1      OPC=nop             
  nop                                                        #  41    0xe9990  1      OPC=nop             
  addq %r15, %r11                                            #  42    0xe9991  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  43    0xe9994  3      OPC=jmpq_r64        
  nop                                                        #  44    0xe9997  1      OPC=nop             
  nop                                                        #  45    0xe9998  1      OPC=nop             
  nop                                                        #  46    0xe9999  1      OPC=nop             
  nop                                                        #  47    0xe999a  1      OPC=nop             
  nop                                                        #  48    0xe999b  1      OPC=nop             
  nop                                                        #  49    0xe999c  1      OPC=nop             
  nop                                                        #  50    0xe999d  1      OPC=nop             
  nop                                                        #  51    0xe999e  1      OPC=nop             
  nop                                                        #  52    0xe999f  1      OPC=nop             
  nop                                                        #  53    0xe99a0  1      OPC=nop             
  nop                                                        #  54    0xe99a1  1      OPC=nop             
  nop                                                        #  55    0xe99a2  1      OPC=nop             
  nop                                                        #  56    0xe99a3  1      OPC=nop             
  nop                                                        #  57    0xe99a4  1      OPC=nop             
  nop                                                        #  58    0xe99a5  1      OPC=nop             
  nop                                                        #  59    0xe99a6  1      OPC=nop             
  nop                                                        #  60    0xe99a7  1      OPC=nop             
  nop                                                        #  61    0xe99a8  1      OPC=nop             
  nop                                                        #  62    0xe99a9  1      OPC=nop             
  nop                                                        #  63    0xe99aa  1      OPC=nop             
  nop                                                        #  64    0xe99ab  1      OPC=nop             
  nop                                                        #  65    0xe99ac  1      OPC=nop             
.L_e99a0:                                                    #        0xe99ad  0      OPC=<label>         
  movl %ebx, %ebx                                            #  66    0xe99ad  2      OPC=movl_r32_r32    
  cmpl %edx, (%r15,%rbx,1)                                   #  67    0xe99af  4      OPC=cmpl_m32_r32    
  popq %rbx                                                  #  68    0xe99b3  1      OPC=popq_r64_1      
  popq %r11                                                  #  69    0xe99b4  2      OPC=popq_r64_1      
  sete %al                                                   #  70    0xe99b6  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d                                    #  71    0xe99b9  7      OPC=andl_r32_imm32  
  nop                                                        #  72    0xe99c0  1      OPC=nop             
  nop                                                        #  73    0xe99c1  1      OPC=nop             
  nop                                                        #  74    0xe99c2  1      OPC=nop             
  nop                                                        #  75    0xe99c3  1      OPC=nop             
  addq %r15, %r11                                            #  76    0xe99c4  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  77    0xe99c7  3      OPC=jmpq_r64        
  nop                                                        #  78    0xe99ca  1      OPC=nop             
  nop                                                        #  79    0xe99cb  1      OPC=nop             
  nop                                                        #  80    0xe99cc  1      OPC=nop             
  nop                                                        #  81    0xe99cd  1      OPC=nop             
  nop                                                        #  82    0xe99ce  1      OPC=nop             
  nop                                                        #  83    0xe99cf  1      OPC=nop             
  nop                                                        #  84    0xe99d0  1      OPC=nop             
  nop                                                        #  85    0xe99d1  1      OPC=nop             
  nop                                                        #  86    0xe99d2  1      OPC=nop             
  nop                                                        #  87    0xe99d3  1      OPC=nop             
                                                                                                          
.size _ZNKSt14error_category10equivalentEiRKSt15error_condition, .-_ZNKSt14error_category10equivalentEiRKSt15error_condition

