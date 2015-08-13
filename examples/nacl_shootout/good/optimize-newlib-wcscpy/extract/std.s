  .text
  .globl std
  .type std, @function

#! file-offset 0x15a460
#! rip-offset  0x11a460
#! capacity    192 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.std:                                #        0x11a460  0      OPC=<label>         
  pushq %rbx                         #  1     0x11a460  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0x11a461  2      OPC=movl_r32_r32    
  leal 0x70(%rbx), %edi              #  3     0x11a463  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                    #  4     0x11a466  2      OPC=movl_r32_r32    
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x11a468  6      OPC=movw_m16_r16    
  movl %ebx, %ebx                    #  6     0x11a46e  2      OPC=movl_r32_r32    
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x11a470  6      OPC=movw_m16_r16    
  movl %ebx, %ebx                    #  8     0x11a476  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)           #  9     0x11a478  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  10    0x11a480  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x11a482  9      OPC=movl_m32_imm32  
  movl $0x8, %edx                    #  12    0x11a48b  5      OPC=movl_r32_imm32  
  movl %ebx, %ebx                    #  13    0x11a490  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x11a492  9      OPC=movl_m32_imm32  
  nop                                #  15    0x11a49b  1      OPC=nop             
  nop                                #  16    0x11a49c  1      OPC=nop             
  nop                                #  17    0x11a49d  1      OPC=nop             
  nop                                #  18    0x11a49e  1      OPC=nop             
  nop                                #  19    0x11a49f  1      OPC=nop             
  movl %ebx, %ebx                    #  20    0x11a4a0  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)       #  21    0x11a4a2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                    #  22    0x11a4ab  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                    #  23    0x11a4ad  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)       #  24    0x11a4af  9      OPC=movl_m32_imm32  
  nop                                #  25    0x11a4b8  1      OPC=nop             
  nop                                #  26    0x11a4b9  1      OPC=nop             
  nop                                #  27    0x11a4ba  1      OPC=nop             
  nop                                #  28    0x11a4bb  1      OPC=nop             
  nop                                #  29    0x11a4bc  1      OPC=nop             
  nop                                #  30    0x11a4bd  1      OPC=nop             
  nop                                #  31    0x11a4be  1      OPC=nop             
  nop                                #  32    0x11a4bf  1      OPC=nop             
  movl %ebx, %ebx                    #  33    0x11a4c0  2      OPC=movl_r32_r32    
  movl $0x0, 0x14(%r15,%rbx,1)       #  34    0x11a4c2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  35    0x11a4cb  2      OPC=movl_r32_r32    
  movl $0x0, 0x18(%r15,%rbx,1)       #  36    0x11a4cd  9      OPC=movl_m32_imm32  
  nop                                #  37    0x11a4d6  1      OPC=nop             
  nop                                #  38    0x11a4d7  1      OPC=nop             
  nop                                #  39    0x11a4d8  1      OPC=nop             
  nop                                #  40    0x11a4d9  1      OPC=nop             
  nop                                #  41    0x11a4da  1      OPC=nop             
  callq .memset                      #  42    0x11a4db  5      OPC=callq_label     
  movl %ebx, %ebx                    #  43    0x11a4e0  2      OPC=movl_r32_r32    
  movl %ebx, 0x1c(%r15,%rbx,1)       #  44    0x11a4e2  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                    #  45    0x11a4e7  2      OPC=movl_r32_r32    
  movl $0x126360, 0x20(%r15,%rbx,1)  #  46    0x11a4e9  9      OPC=movl_m32_imm32  
  leal 0x5c(%rbx), %edi              #  47    0x11a4f2  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                    #  48    0x11a4f5  2      OPC=movl_r32_r32    
  movl $0x1262c0, 0x24(%r15,%rbx,1)  #  49    0x11a4f7  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  50    0x11a500  2      OPC=movl_r32_r32    
  movl $0x126240, 0x28(%r15,%rbx,1)  #  51    0x11a502  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  52    0x11a50b  2      OPC=movl_r32_r32    
  movl $0x126220, 0x2c(%r15,%rbx,1)  #  53    0x11a50d  9      OPC=movl_m32_imm32  
  popq %rbx                          #  54    0x11a516  1      OPC=popq_r64_1      
  jmpq .__local_lock_init_recursive  #  55    0x11a517  5      OPC=jmpq_label_1    
  nop                                #  56    0x11a51c  1      OPC=nop             
  nop                                #  57    0x11a51d  1      OPC=nop             
  nop                                #  58    0x11a51e  1      OPC=nop             
  nop                                #  59    0x11a51f  1      OPC=nop             
                                                                                   
.size std, .-std

