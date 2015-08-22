  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x18aa60
#! rip-offset  0x14aa60
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Bfree:                        #        0x14aa60  0      OPC=<label>         
  movl %esi, %esi               #  1     0x14aa60  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x14aa62  2      OPC=movl_r32_r32    
  testq %rsi, %rsi              #  3     0x14aa64  3      OPC=testq_r64_r64   
  je .L_14aaa0                  #  4     0x14aa67  2      OPC=je_label        
  movl %esi, %esi               #  5     0x14aa69  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax   #  6     0x14aa6b  5      OPC=movl_r32_m32    
  shll $0x2, %eax               #  7     0x14aa70  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  8     0x14aa73  2      OPC=movl_r32_r32    
  addl 0x4c(%r15,%rdi,1), %eax  #  9     0x14aa75  5      OPC=addl_r32_m32    
  movl %eax, %eax               #  10    0x14aa7a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx      #  11    0x14aa7c  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  12    0x14aa80  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)      #  13    0x14aa82  4      OPC=movl_m32_r32    
  movl %eax, %eax               #  14    0x14aa86  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)      #  15    0x14aa88  4      OPC=movl_m32_r32    
  nop                           #  16    0x14aa8c  1      OPC=nop             
  nop                           #  17    0x14aa8d  1      OPC=nop             
  nop                           #  18    0x14aa8e  1      OPC=nop             
  nop                           #  19    0x14aa8f  1      OPC=nop             
  nop                           #  20    0x14aa90  1      OPC=nop             
  nop                           #  21    0x14aa91  1      OPC=nop             
  nop                           #  22    0x14aa92  1      OPC=nop             
  nop                           #  23    0x14aa93  1      OPC=nop             
  nop                           #  24    0x14aa94  1      OPC=nop             
  nop                           #  25    0x14aa95  1      OPC=nop             
  nop                           #  26    0x14aa96  1      OPC=nop             
  nop                           #  27    0x14aa97  1      OPC=nop             
  nop                           #  28    0x14aa98  1      OPC=nop             
  nop                           #  29    0x14aa99  1      OPC=nop             
  nop                           #  30    0x14aa9a  1      OPC=nop             
  nop                           #  31    0x14aa9b  1      OPC=nop             
  nop                           #  32    0x14aa9c  1      OPC=nop             
  nop                           #  33    0x14aa9d  1      OPC=nop             
  nop                           #  34    0x14aa9e  1      OPC=nop             
  nop                           #  35    0x14aa9f  1      OPC=nop             
.L_14aaa0:                      #        0x14aaa0  0      OPC=<label>         
  popq %r11                     #  36    0x14aaa0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  37    0x14aaa2  7      OPC=andl_r32_imm32  
  nop                           #  38    0x14aaa9  1      OPC=nop             
  nop                           #  39    0x14aaaa  1      OPC=nop             
  nop                           #  40    0x14aaab  1      OPC=nop             
  nop                           #  41    0x14aaac  1      OPC=nop             
  addq %r15, %r11               #  42    0x14aaad  3      OPC=addq_r64_r64    
  jmpq %r11                     #  43    0x14aab0  3      OPC=jmpq_r64        
  nop                           #  44    0x14aab3  1      OPC=nop             
  nop                           #  45    0x14aab4  1      OPC=nop             
  nop                           #  46    0x14aab5  1      OPC=nop             
  nop                           #  47    0x14aab6  1      OPC=nop             
  nop                           #  48    0x14aab7  1      OPC=nop             
  nop                           #  49    0x14aab8  1      OPC=nop             
  nop                           #  50    0x14aab9  1      OPC=nop             
  nop                           #  51    0x14aaba  1      OPC=nop             
  nop                           #  52    0x14aabb  1      OPC=nop             
  nop                           #  53    0x14aabc  1      OPC=nop             
  nop                           #  54    0x14aabd  1      OPC=nop             
  nop                           #  55    0x14aabe  1      OPC=nop             
  nop                           #  56    0x14aabf  1      OPC=nop             
  nop                           #  57    0x14aac0  1      OPC=nop             
  nop                           #  58    0x14aac1  1      OPC=nop             
  nop                           #  59    0x14aac2  1      OPC=nop             
  nop                           #  60    0x14aac3  1      OPC=nop             
  nop                           #  61    0x14aac4  1      OPC=nop             
  nop                           #  62    0x14aac5  1      OPC=nop             
  nop                           #  63    0x14aac6  1      OPC=nop             
                                                                              
.size _Bfree, .-_Bfree

