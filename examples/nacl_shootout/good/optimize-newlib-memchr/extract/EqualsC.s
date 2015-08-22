  .text
  .globl EqualsC
  .type EqualsC, @function

#! file-offset 0x68fc0
#! rip-offset  0x28fc0
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.EqualsC:                        #        0x28fc0  0      OPC=<label>         
  pushq %r13                     #  1     0x28fc0  2      OPC=pushq_r64_1     
  pushq %r12                     #  2     0x28fc2  2      OPC=pushq_r64_1     
  pushq %rbx                     #  3     0x28fc4  1      OPC=pushq_r64_1     
  movl %edi, %r12d               #  4     0x28fc5  3      OPC=movl_r32_r32    
  movl %esi, %ebx                #  5     0x28fc8  2      OPC=movl_r32_r32    
  movl %edx, %esi                #  6     0x28fca  2      OPC=movl_r32_r32    
  movl $0x2, %edi                #  7     0x28fcc  5      OPC=movl_r32_imm32  
  nop                            #  8     0x28fd1  1      OPC=nop             
  nop                            #  9     0x28fd2  1      OPC=nop             
  nop                            #  10    0x28fd3  1      OPC=nop             
  nop                            #  11    0x28fd4  1      OPC=nop             
  nop                            #  12    0x28fd5  1      OPC=nop             
  nop                            #  13    0x28fd6  1      OPC=nop             
  nop                            #  14    0x28fd7  1      OPC=nop             
  nop                            #  15    0x28fd8  1      OPC=nop             
  nop                            #  16    0x28fd9  1      OPC=nop             
  nop                            #  17    0x28fda  1      OPC=nop             
  callq .Constraint_Create       #  18    0x28fdb  5      OPC=callq_label     
  movl %eax, %r13d               #  19    0x28fe0  3      OPC=movl_r32_r32    
  movl %r13d, %r13d              #  20    0x28fe3  3      OPC=movl_r32_r32    
  movl $0x26cc0, (%r15,%r13,1)   #  21    0x28fe6  8      OPC=movl_m32_imm32  
  movl %r13d, %r13d              #  22    0x28fee  3      OPC=movl_r32_r32    
  movl %r12d, 0x18(%r15,%r13,1)  #  23    0x28ff1  5      OPC=movl_m32_r32    
  movl %r13d, %r13d              #  24    0x28ff6  3      OPC=movl_r32_r32    
  movl %ebx, 0x1c(%r15,%r13,1)   #  25    0x28ff9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  26    0x28ffe  2      OPC=xchgw_ax_r16    
  movl %r13d, %r13d              #  27    0x29000  3      OPC=movl_r32_r32    
  movb $0x2, 0xd(%r15,%r13,1)    #  28    0x29003  6      OPC=movb_m8_imm8    
  movl %r13d, %r13d              #  29    0x29009  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r13,1)    #  30    0x2900c  6      OPC=movb_m8_imm8    
  movl %r13d, %r13d              #  31    0x29012  3      OPC=movl_r32_r32    
  movb $0x1, 0x10(%r15,%r13,1)   #  32    0x29015  6      OPC=movb_m8_imm8    
  movl %r13d, %edi               #  33    0x2901b  3      OPC=movl_r32_r32    
  xchgw %ax, %ax                 #  34    0x2901e  2      OPC=xchgw_ax_r16    
  nop                            #  35    0x29020  1      OPC=nop             
  nop                            #  36    0x29021  1      OPC=nop             
  nop                            #  37    0x29022  1      OPC=nop             
  nop                            #  38    0x29023  1      OPC=nop             
  nop                            #  39    0x29024  1      OPC=nop             
  nop                            #  40    0x29025  1      OPC=nop             
  nop                            #  41    0x29026  1      OPC=nop             
  nop                            #  42    0x29027  1      OPC=nop             
  nop                            #  43    0x29028  1      OPC=nop             
  nop                            #  44    0x29029  1      OPC=nop             
  nop                            #  45    0x2902a  1      OPC=nop             
  nop                            #  46    0x2902b  1      OPC=nop             
  nop                            #  47    0x2902c  1      OPC=nop             
  nop                            #  48    0x2902d  1      OPC=nop             
  nop                            #  49    0x2902e  1      OPC=nop             
  nop                            #  50    0x2902f  1      OPC=nop             
  nop                            #  51    0x29030  1      OPC=nop             
  nop                            #  52    0x29031  1      OPC=nop             
  nop                            #  53    0x29032  1      OPC=nop             
  nop                            #  54    0x29033  1      OPC=nop             
  nop                            #  55    0x29034  1      OPC=nop             
  nop                            #  56    0x29035  1      OPC=nop             
  nop                            #  57    0x29036  1      OPC=nop             
  nop                            #  58    0x29037  1      OPC=nop             
  nop                            #  59    0x29038  1      OPC=nop             
  nop                            #  60    0x29039  1      OPC=nop             
  nop                            #  61    0x2903a  1      OPC=nop             
  callq .AddConstraint           #  62    0x2903b  5      OPC=callq_label     
  movl %r13d, %eax               #  63    0x29040  3      OPC=movl_r32_r32    
  popq %rbx                      #  64    0x29043  1      OPC=popq_r64_1      
  popq %r12                      #  65    0x29044  2      OPC=popq_r64_1      
  popq %r13                      #  66    0x29046  2      OPC=popq_r64_1      
  popq %r11                      #  67    0x29048  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  68    0x2904a  7      OPC=andl_r32_imm32  
  nop                            #  69    0x29051  1      OPC=nop             
  nop                            #  70    0x29052  1      OPC=nop             
  nop                            #  71    0x29053  1      OPC=nop             
  nop                            #  72    0x29054  1      OPC=nop             
  addq %r15, %r11                #  73    0x29055  3      OPC=addq_r64_r64    
  jmpq %r11                      #  74    0x29058  3      OPC=jmpq_r64        
  nop                            #  75    0x2905b  1      OPC=nop             
  nop                            #  76    0x2905c  1      OPC=nop             
  nop                            #  77    0x2905d  1      OPC=nop             
  nop                            #  78    0x2905e  1      OPC=nop             
  nop                            #  79    0x2905f  1      OPC=nop             
  nop                            #  80    0x29060  1      OPC=nop             
  nop                            #  81    0x29061  1      OPC=nop             
  nop                            #  82    0x29062  1      OPC=nop             
  nop                            #  83    0x29063  1      OPC=nop             
  nop                            #  84    0x29064  1      OPC=nop             
  nop                            #  85    0x29065  1      OPC=nop             
  nop                            #  86    0x29066  1      OPC=nop             
                                                                              
.size EqualsC, .-EqualsC

