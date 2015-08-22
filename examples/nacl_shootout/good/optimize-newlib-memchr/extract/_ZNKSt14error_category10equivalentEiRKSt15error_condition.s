  .text
  .globl _ZNKSt14error_category10equivalentEiRKSt15error_condition
  .type _ZNKSt14error_category10equivalentEiRKSt15error_condition, @function

#! file-offset 0x12a360
#! rip-offset  0xea360
#! capacity    128 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category10equivalentEiRKSt15error_condition:  #        0xea360  0      OPC=<label>         
  movl %edi, %edi                                            #  1     0xea360  2      OPC=movl_r32_r32    
  pushq %rbx                                                 #  2     0xea362  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                            #  3     0xea363  2      OPC=movl_r32_r32    
  movl %edi, %edi                                            #  4     0xea365  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  5     0xea367  4      OPC=movl_r32_m32    
  movl %eax, %eax                                            #  6     0xea36b  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                               #  7     0xea36d  5      OPC=movl_r32_m32    
  nop                                                        #  8     0xea372  1      OPC=nop             
  nop                                                        #  9     0xea373  1      OPC=nop             
  nop                                                        #  10    0xea374  1      OPC=nop             
  nop                                                        #  11    0xea375  1      OPC=nop             
  nop                                                        #  12    0xea376  1      OPC=nop             
  nop                                                        #  13    0xea377  1      OPC=nop             
  andl $0xffffffe0, %eax                                     #  14    0xea378  6      OPC=andl_r32_imm32  
  nop                                                        #  15    0xea37e  1      OPC=nop             
  nop                                                        #  16    0xea37f  1      OPC=nop             
  nop                                                        #  17    0xea380  1      OPC=nop             
  addq %r15, %rax                                            #  18    0xea381  3      OPC=addq_r64_r64    
  callq %rax                                                 #  19    0xea384  2      OPC=callq_r64       
  movq %rax, %rcx                                            #  20    0xea386  3      OPC=movq_r64_r64    
  movq %rax, %rdx                                            #  21    0xea389  3      OPC=movq_r64_r64    
  xorl %eax, %eax                                            #  22    0xea38c  2      OPC=xorl_r32_r32    
  shrq $0x20, %rcx                                           #  23    0xea38e  4      OPC=shrq_r64_imm8   
  movl %ebx, %ebx                                            #  24    0xea392  2      OPC=movl_r32_r32    
  cmpl %ecx, 0x4(%r15,%rbx,1)                                #  25    0xea394  5      OPC=cmpl_m32_r32    
  je .L_ea3c0                                                #  26    0xea399  2      OPC=je_label        
  popq %rbx                                                  #  27    0xea39b  1      OPC=popq_r64_1      
  popq %r11                                                  #  28    0xea39c  2      OPC=popq_r64_1      
  nop                                                        #  29    0xea39e  1      OPC=nop             
  nop                                                        #  30    0xea39f  1      OPC=nop             
  nop                                                        #  31    0xea3a0  1      OPC=nop             
  nop                                                        #  32    0xea3a1  1      OPC=nop             
  nop                                                        #  33    0xea3a2  1      OPC=nop             
  nop                                                        #  34    0xea3a3  1      OPC=nop             
  nop                                                        #  35    0xea3a4  1      OPC=nop             
  nop                                                        #  36    0xea3a5  1      OPC=nop             
  andl $0xffffffe0, %r11d                                    #  37    0xea3a6  7      OPC=andl_r32_imm32  
  nop                                                        #  38    0xea3ad  1      OPC=nop             
  nop                                                        #  39    0xea3ae  1      OPC=nop             
  nop                                                        #  40    0xea3af  1      OPC=nop             
  nop                                                        #  41    0xea3b0  1      OPC=nop             
  addq %r15, %r11                                            #  42    0xea3b1  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  43    0xea3b4  3      OPC=jmpq_r64        
  nop                                                        #  44    0xea3b7  1      OPC=nop             
  nop                                                        #  45    0xea3b8  1      OPC=nop             
  nop                                                        #  46    0xea3b9  1      OPC=nop             
  nop                                                        #  47    0xea3ba  1      OPC=nop             
  nop                                                        #  48    0xea3bb  1      OPC=nop             
  nop                                                        #  49    0xea3bc  1      OPC=nop             
  nop                                                        #  50    0xea3bd  1      OPC=nop             
  nop                                                        #  51    0xea3be  1      OPC=nop             
  nop                                                        #  52    0xea3bf  1      OPC=nop             
  nop                                                        #  53    0xea3c0  1      OPC=nop             
  nop                                                        #  54    0xea3c1  1      OPC=nop             
  nop                                                        #  55    0xea3c2  1      OPC=nop             
  nop                                                        #  56    0xea3c3  1      OPC=nop             
  nop                                                        #  57    0xea3c4  1      OPC=nop             
  nop                                                        #  58    0xea3c5  1      OPC=nop             
  nop                                                        #  59    0xea3c6  1      OPC=nop             
  nop                                                        #  60    0xea3c7  1      OPC=nop             
  nop                                                        #  61    0xea3c8  1      OPC=nop             
  nop                                                        #  62    0xea3c9  1      OPC=nop             
  nop                                                        #  63    0xea3ca  1      OPC=nop             
  nop                                                        #  64    0xea3cb  1      OPC=nop             
  nop                                                        #  65    0xea3cc  1      OPC=nop             
.L_ea3c0:                                                    #        0xea3cd  0      OPC=<label>         
  movl %ebx, %ebx                                            #  66    0xea3cd  2      OPC=movl_r32_r32    
  cmpl %edx, (%r15,%rbx,1)                                   #  67    0xea3cf  4      OPC=cmpl_m32_r32    
  popq %rbx                                                  #  68    0xea3d3  1      OPC=popq_r64_1      
  popq %r11                                                  #  69    0xea3d4  2      OPC=popq_r64_1      
  sete %al                                                   #  70    0xea3d6  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d                                    #  71    0xea3d9  7      OPC=andl_r32_imm32  
  nop                                                        #  72    0xea3e0  1      OPC=nop             
  nop                                                        #  73    0xea3e1  1      OPC=nop             
  nop                                                        #  74    0xea3e2  1      OPC=nop             
  nop                                                        #  75    0xea3e3  1      OPC=nop             
  addq %r15, %r11                                            #  76    0xea3e4  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  77    0xea3e7  3      OPC=jmpq_r64        
  nop                                                        #  78    0xea3ea  1      OPC=nop             
  nop                                                        #  79    0xea3eb  1      OPC=nop             
  nop                                                        #  80    0xea3ec  1      OPC=nop             
  nop                                                        #  81    0xea3ed  1      OPC=nop             
  nop                                                        #  82    0xea3ee  1      OPC=nop             
  nop                                                        #  83    0xea3ef  1      OPC=nop             
  nop                                                        #  84    0xea3f0  1      OPC=nop             
  nop                                                        #  85    0xea3f1  1      OPC=nop             
  nop                                                        #  86    0xea3f2  1      OPC=nop             
  nop                                                        #  87    0xea3f3  1      OPC=nop             
                                                                                                          
.size _ZNKSt14error_category10equivalentEiRKSt15error_condition, .-_ZNKSt14error_category10equivalentEiRKSt15error_condition

