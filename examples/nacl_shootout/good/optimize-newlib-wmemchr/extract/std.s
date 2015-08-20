  .text
  .globl std
  .type std, @function

#! file-offset 0x15a760
#! rip-offset  0x11a760
#! capacity    192 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.std:                                #        0x11a760  0      OPC=<label>         
  pushq %rbx                         #  1     0x11a760  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0x11a761  2      OPC=movl_r32_r32    
  leal 0x70(%rbx), %edi              #  3     0x11a763  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                    #  4     0x11a766  2      OPC=movl_r32_r32    
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x11a768  6      OPC=movw_m16_r16    
  movl %ebx, %ebx                    #  6     0x11a76e  2      OPC=movl_r32_r32    
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x11a770  6      OPC=movw_m16_r16    
  movl %ebx, %ebx                    #  8     0x11a776  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)           #  9     0x11a778  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  10    0x11a780  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x11a782  9      OPC=movl_m32_imm32  
  movl $0x8, %edx                    #  12    0x11a78b  5      OPC=movl_r32_imm32  
  movl %ebx, %ebx                    #  13    0x11a790  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x11a792  9      OPC=movl_m32_imm32  
  nop                                #  15    0x11a79b  1      OPC=nop             
  nop                                #  16    0x11a79c  1      OPC=nop             
  nop                                #  17    0x11a79d  1      OPC=nop             
  nop                                #  18    0x11a79e  1      OPC=nop             
  nop                                #  19    0x11a79f  1      OPC=nop             
  movl %ebx, %ebx                    #  20    0x11a7a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)       #  21    0x11a7a2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                    #  22    0x11a7ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                    #  23    0x11a7ad  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)       #  24    0x11a7af  9      OPC=movl_m32_imm32  
  nop                                #  25    0x11a7b8  1      OPC=nop             
  nop                                #  26    0x11a7b9  1      OPC=nop             
  nop                                #  27    0x11a7ba  1      OPC=nop             
  nop                                #  28    0x11a7bb  1      OPC=nop             
  nop                                #  29    0x11a7bc  1      OPC=nop             
  nop                                #  30    0x11a7bd  1      OPC=nop             
  nop                                #  31    0x11a7be  1      OPC=nop             
  nop                                #  32    0x11a7bf  1      OPC=nop             
  movl %ebx, %ebx                    #  33    0x11a7c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x14(%r15,%rbx,1)       #  34    0x11a7c2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  35    0x11a7cb  2      OPC=movl_r32_r32    
  movl $0x0, 0x18(%r15,%rbx,1)       #  36    0x11a7cd  9      OPC=movl_m32_imm32  
  nop                                #  37    0x11a7d6  1      OPC=nop             
  nop                                #  38    0x11a7d7  1      OPC=nop             
  nop                                #  39    0x11a7d8  1      OPC=nop             
  nop                                #  40    0x11a7d9  1      OPC=nop             
  nop                                #  41    0x11a7da  1      OPC=nop             
  callq .memset                      #  42    0x11a7db  5      OPC=callq_label     
  movl %ebx, %ebx                    #  43    0x11a7e0  2      OPC=movl_r32_r32    
  movl %ebx, 0x1c(%r15,%rbx,1)       #  44    0x11a7e2  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                    #  45    0x11a7e7  2      OPC=movl_r32_r32    
  movl $0x126660, 0x20(%r15,%rbx,1)  #  46    0x11a7e9  9      OPC=movl_m32_imm32  
  leal 0x5c(%rbx), %edi              #  47    0x11a7f2  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                    #  48    0x11a7f5  2      OPC=movl_r32_r32    
  movl $0x1265c0, 0x24(%r15,%rbx,1)  #  49    0x11a7f7  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  50    0x11a800  2      OPC=movl_r32_r32    
  movl $0x126540, 0x28(%r15,%rbx,1)  #  51    0x11a802  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  52    0x11a80b  2      OPC=movl_r32_r32    
  movl $0x126520, 0x2c(%r15,%rbx,1)  #  53    0x11a80d  9      OPC=movl_m32_imm32  
  popq %rbx                          #  54    0x11a816  1      OPC=popq_r64_1      
  jmpq .__local_lock_init_recursive  #  55    0x11a817  5      OPC=jmpq_label_1    
  nop                                #  56    0x11a81c  1      OPC=nop             
  nop                                #  57    0x11a81d  1      OPC=nop             
  nop                                #  58    0x11a81e  1      OPC=nop             
  nop                                #  59    0x11a81f  1      OPC=nop             
                                                                                   
.size std, .-std

