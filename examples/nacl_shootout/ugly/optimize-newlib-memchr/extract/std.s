  .text
  .globl std
  .type std, @function

#! file-offset 0x15ae80
#! rip-offset  0x11ae80
#! capacity    192 bytes

# Text                               #  Line  RIP       Bytes  Opcode              
.std:                                #        0x11ae80  0      OPC=<label>         
  pushq %rbx                         #  1     0x11ae80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                    #  2     0x11ae81  2      OPC=movl_r32_r32    
  leal 0x70(%rbx), %edi              #  3     0x11ae83  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                    #  4     0x11ae86  2      OPC=movl_r32_r32    
  movw %si, 0xc(%r15,%rbx,1)         #  5     0x11ae88  6      OPC=movw_m16_r16    
  movl %ebx, %ebx                    #  6     0x11ae8e  2      OPC=movl_r32_r32    
  movw %dx, 0xe(%r15,%rbx,1)         #  7     0x11ae90  6      OPC=movw_m16_r16    
  movl %ebx, %ebx                    #  8     0x11ae96  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rbx,1)           #  9     0x11ae98  8      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  10    0x11aea0  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rbx,1)        #  11    0x11aea2  9      OPC=movl_m32_imm32  
  movl $0x8, %edx                    #  12    0x11aeab  5      OPC=movl_r32_imm32  
  movl %ebx, %ebx                    #  13    0x11aeb0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)        #  14    0x11aeb2  9      OPC=movl_m32_imm32  
  nop                                #  15    0x11aebb  1      OPC=nop             
  nop                                #  16    0x11aebc  1      OPC=nop             
  nop                                #  17    0x11aebd  1      OPC=nop             
  nop                                #  18    0x11aebe  1      OPC=nop             
  nop                                #  19    0x11aebf  1      OPC=nop             
  movl %ebx, %ebx                    #  20    0x11aec0  2      OPC=movl_r32_r32    
  movl $0x0, 0x78(%r15,%rbx,1)       #  21    0x11aec2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                    #  22    0x11aecb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                    #  23    0x11aecd  2      OPC=movl_r32_r32    
  movl $0x0, 0x10(%r15,%rbx,1)       #  24    0x11aecf  9      OPC=movl_m32_imm32  
  nop                                #  25    0x11aed8  1      OPC=nop             
  nop                                #  26    0x11aed9  1      OPC=nop             
  nop                                #  27    0x11aeda  1      OPC=nop             
  nop                                #  28    0x11aedb  1      OPC=nop             
  nop                                #  29    0x11aedc  1      OPC=nop             
  nop                                #  30    0x11aedd  1      OPC=nop             
  nop                                #  31    0x11aede  1      OPC=nop             
  nop                                #  32    0x11aedf  1      OPC=nop             
  movl %ebx, %ebx                    #  33    0x11aee0  2      OPC=movl_r32_r32    
  movl $0x0, 0x14(%r15,%rbx,1)       #  34    0x11aee2  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  35    0x11aeeb  2      OPC=movl_r32_r32    
  movl $0x0, 0x18(%r15,%rbx,1)       #  36    0x11aeed  9      OPC=movl_m32_imm32  
  nop                                #  37    0x11aef6  1      OPC=nop             
  nop                                #  38    0x11aef7  1      OPC=nop             
  nop                                #  39    0x11aef8  1      OPC=nop             
  nop                                #  40    0x11aef9  1      OPC=nop             
  nop                                #  41    0x11aefa  1      OPC=nop             
  callq .memset                      #  42    0x11aefb  5      OPC=callq_label     
  movl %ebx, %ebx                    #  43    0x11af00  2      OPC=movl_r32_r32    
  movl %ebx, 0x1c(%r15,%rbx,1)       #  44    0x11af02  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                    #  45    0x11af07  2      OPC=movl_r32_r32    
  movl $0x126d80, 0x20(%r15,%rbx,1)  #  46    0x11af09  9      OPC=movl_m32_imm32  
  leal 0x5c(%rbx), %edi              #  47    0x11af12  3      OPC=leal_r32_m16    
  movl %ebx, %ebx                    #  48    0x11af15  2      OPC=movl_r32_r32    
  movl $0x126ce0, 0x24(%r15,%rbx,1)  #  49    0x11af17  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  50    0x11af20  2      OPC=movl_r32_r32    
  movl $0x126c60, 0x28(%r15,%rbx,1)  #  51    0x11af22  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                    #  52    0x11af2b  2      OPC=movl_r32_r32    
  movl $0x126c40, 0x2c(%r15,%rbx,1)  #  53    0x11af2d  9      OPC=movl_m32_imm32  
  popq %rbx                          #  54    0x11af36  1      OPC=popq_r64_1      
  jmpq .__local_lock_init_recursive  #  55    0x11af37  5      OPC=jmpq_label_1    
  nop                                #  56    0x11af3c  1      OPC=nop             
  nop                                #  57    0x11af3d  1      OPC=nop             
  nop                                #  58    0x11af3e  1      OPC=nop             
  nop                                #  59    0x11af3f  1      OPC=nop             
                                                                                   
.size std, .-std

