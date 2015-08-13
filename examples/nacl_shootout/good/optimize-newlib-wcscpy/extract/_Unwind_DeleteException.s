  .text
  .globl _Unwind_DeleteException
  .type _Unwind_DeleteException, @function

#! file-offset 0x149aa0
#! rip-offset  0x109aa0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
._Unwind_DeleteException:      #        0x109aa0  0      OPC=<label>         
  movl %edi, %esi              #  1     0x109aa0  2      OPC=movl_r32_r32    
  movl %esi, %esi              #  2     0x109aa2  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax  #  3     0x109aa4  5      OPC=movl_r32_m32    
  testq %rax, %rax             #  4     0x109aa9  3      OPC=testq_r64_r64   
  je .L_109ac0                 #  5     0x109aac  2      OPC=je_label        
  movl $0x1, %edi              #  6     0x109aae  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %eax       #  7     0x109ab3  6      OPC=andl_r32_imm32  
  nop                          #  8     0x109ab9  1      OPC=nop             
  nop                          #  9     0x109aba  1      OPC=nop             
  nop                          #  10    0x109abb  1      OPC=nop             
  addq %r15, %rax              #  11    0x109abc  3      OPC=addq_r64_r64    
  jmpq %rax                    #  12    0x109abf  2      OPC=jmpq_r64        
  nop                          #  13    0x109ac1  1      OPC=nop             
  nop                          #  14    0x109ac2  1      OPC=nop             
  nop                          #  15    0x109ac3  1      OPC=nop             
  nop                          #  16    0x109ac4  1      OPC=nop             
  nop                          #  17    0x109ac5  1      OPC=nop             
.L_109ac0:                     #        0x109ac6  0      OPC=<label>         
  popq %r11                    #  18    0x109ac6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x109ac8  7      OPC=andl_r32_imm32  
  nop                          #  20    0x109acf  1      OPC=nop             
  nop                          #  21    0x109ad0  1      OPC=nop             
  nop                          #  22    0x109ad1  1      OPC=nop             
  nop                          #  23    0x109ad2  1      OPC=nop             
  addq %r15, %r11              #  24    0x109ad3  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x109ad6  3      OPC=jmpq_r64        
  nop                          #  26    0x109ad9  1      OPC=nop             
  nop                          #  27    0x109ada  1      OPC=nop             
  nop                          #  28    0x109adb  1      OPC=nop             
  nop                          #  29    0x109adc  1      OPC=nop             
  nop                          #  30    0x109add  1      OPC=nop             
  nop                          #  31    0x109ade  1      OPC=nop             
  nop                          #  32    0x109adf  1      OPC=nop             
  nop                          #  33    0x109ae0  1      OPC=nop             
  nop                          #  34    0x109ae1  1      OPC=nop             
  nop                          #  35    0x109ae2  1      OPC=nop             
  nop                          #  36    0x109ae3  1      OPC=nop             
  nop                          #  37    0x109ae4  1      OPC=nop             
  nop                          #  38    0x109ae5  1      OPC=nop             
  nop                          #  39    0x109ae6  1      OPC=nop             
  nop                          #  40    0x109ae7  1      OPC=nop             
  nop                          #  41    0x109ae8  1      OPC=nop             
  nop                          #  42    0x109ae9  1      OPC=nop             
  nop                          #  43    0x109aea  1      OPC=nop             
  nop                          #  44    0x109aeb  1      OPC=nop             
  nop                          #  45    0x109aec  1      OPC=nop             
                                                                             
.size _Unwind_DeleteException, .-_Unwind_DeleteException

