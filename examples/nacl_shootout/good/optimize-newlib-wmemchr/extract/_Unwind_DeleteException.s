  .text
  .globl _Unwind_DeleteException
  .type _Unwind_DeleteException, @function

#! file-offset 0x149da0
#! rip-offset  0x109da0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
._Unwind_DeleteException:      #        0x109da0  0      OPC=<label>         
  movl %edi, %esi              #  1     0x109da0  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x109da2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax  #  3     0x109da4  5      OPC=movl_r32_m32    
  testq %rax, %rax             #  4     0x109da9  3      OPC=testq_r64_r64   
  je .L_109dc0                 #  5     0x109dac  2      OPC=je_label        
  movl $0x1, %edi              #  6     0x109dae  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax       #  7     0x109db3  6      OPC=andl_r32_imm32  
  nop                          #  8     0x109db9  1      OPC=nop             
  nop                          #  9     0x109dba  1      OPC=nop             
  nop                          #  10    0x109dbb  1      OPC=nop             
  addq %r15, %rax              #  11    0x109dbc  3      OPC=addq_r64_r64    
  jmpq %rax                    #  12    0x109dbf  2      OPC=jmpq_r64        
  nop                          #  13    0x109dc1  1      OPC=nop             
  nop                          #  14    0x109dc2  1      OPC=nop             
  nop                          #  15    0x109dc3  1      OPC=nop             
  nop                          #  16    0x109dc4  1      OPC=nop             
  nop                          #  17    0x109dc5  1      OPC=nop             
.L_109dc0:                     #        0x109dc6  0      OPC=<label>         
  popq %r11                    #  18    0x109dc6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x109dc8  7      OPC=andl_r32_imm32  
  nop                          #  20    0x109dcf  1      OPC=nop             
  nop                          #  21    0x109dd0  1      OPC=nop             
  nop                          #  22    0x109dd1  1      OPC=nop             
  nop                          #  23    0x109dd2  1      OPC=nop             
  addq %r15, %r11              #  24    0x109dd3  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x109dd6  3      OPC=jmpq_r64        
  nop                          #  26    0x109dd9  1      OPC=nop             
  nop                          #  27    0x109dda  1      OPC=nop             
  nop                          #  28    0x109ddb  1      OPC=nop             
  nop                          #  29    0x109ddc  1      OPC=nop             
  nop                          #  30    0x109ddd  1      OPC=nop             
  nop                          #  31    0x109dde  1      OPC=nop             
  nop                          #  32    0x109ddf  1      OPC=nop             
  nop                          #  33    0x109de0  1      OPC=nop             
  nop                          #  34    0x109de1  1      OPC=nop             
  nop                          #  35    0x109de2  1      OPC=nop             
  nop                          #  36    0x109de3  1      OPC=nop             
  nop                          #  37    0x109de4  1      OPC=nop             
  nop                          #  38    0x109de5  1      OPC=nop             
  nop                          #  39    0x109de6  1      OPC=nop             
  nop                          #  40    0x109de7  1      OPC=nop             
  nop                          #  41    0x109de8  1      OPC=nop             
  nop                          #  42    0x109de9  1      OPC=nop             
  nop                          #  43    0x109dea  1      OPC=nop             
  nop                          #  44    0x109deb  1      OPC=nop             
  nop                          #  45    0x109dec  1      OPC=nop             
                                                                             
.size _Unwind_DeleteException, .-_Unwind_DeleteException

