  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x18a340
#! rip-offset  0x14a340
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Bfree:                        #        0x14a340  0      OPC=<label>         
  movl %esi, %esi               #  1     0x14a340  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x14a342  2      OPC=movl_r32_r32    
  testq %rsi, %rsi              #  3     0x14a344  3      OPC=testq_r64_r64   
  je .L_14a380                  #  4     0x14a347  2      OPC=je_label        
  movl %esi, %esi               #  5     0x14a349  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax   #  6     0x14a34b  5      OPC=movl_r32_m32    
  shll $0x2, %eax               #  7     0x14a350  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  8     0x14a353  2      OPC=movl_r32_r32    
  addl 0x4c(%r15,%rdi,1), %eax  #  9     0x14a355  5      OPC=addl_r32_m32    
  movl %eax, %eax               #  10    0x14a35a  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx      #  11    0x14a35c  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  12    0x14a360  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)      #  13    0x14a362  4      OPC=movl_m32_r32    
  movl %eax, %eax               #  14    0x14a366  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)      #  15    0x14a368  4      OPC=movl_m32_r32    
  nop                           #  16    0x14a36c  1      OPC=nop             
  nop                           #  17    0x14a36d  1      OPC=nop             
  nop                           #  18    0x14a36e  1      OPC=nop             
  nop                           #  19    0x14a36f  1      OPC=nop             
  nop                           #  20    0x14a370  1      OPC=nop             
  nop                           #  21    0x14a371  1      OPC=nop             
  nop                           #  22    0x14a372  1      OPC=nop             
  nop                           #  23    0x14a373  1      OPC=nop             
  nop                           #  24    0x14a374  1      OPC=nop             
  nop                           #  25    0x14a375  1      OPC=nop             
  nop                           #  26    0x14a376  1      OPC=nop             
  nop                           #  27    0x14a377  1      OPC=nop             
  nop                           #  28    0x14a378  1      OPC=nop             
  nop                           #  29    0x14a379  1      OPC=nop             
  nop                           #  30    0x14a37a  1      OPC=nop             
  nop                           #  31    0x14a37b  1      OPC=nop             
  nop                           #  32    0x14a37c  1      OPC=nop             
  nop                           #  33    0x14a37d  1      OPC=nop             
  nop                           #  34    0x14a37e  1      OPC=nop             
  nop                           #  35    0x14a37f  1      OPC=nop             
.L_14a380:                      #        0x14a380  0      OPC=<label>         
  popq %r11                     #  36    0x14a380  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  37    0x14a382  7      OPC=andl_r32_imm32  
  nop                           #  38    0x14a389  1      OPC=nop             
  nop                           #  39    0x14a38a  1      OPC=nop             
  nop                           #  40    0x14a38b  1      OPC=nop             
  nop                           #  41    0x14a38c  1      OPC=nop             
  addq %r15, %r11               #  42    0x14a38d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  43    0x14a390  3      OPC=jmpq_r64        
  nop                           #  44    0x14a393  1      OPC=nop             
  nop                           #  45    0x14a394  1      OPC=nop             
  nop                           #  46    0x14a395  1      OPC=nop             
  nop                           #  47    0x14a396  1      OPC=nop             
  nop                           #  48    0x14a397  1      OPC=nop             
  nop                           #  49    0x14a398  1      OPC=nop             
  nop                           #  50    0x14a399  1      OPC=nop             
  nop                           #  51    0x14a39a  1      OPC=nop             
  nop                           #  52    0x14a39b  1      OPC=nop             
  nop                           #  53    0x14a39c  1      OPC=nop             
  nop                           #  54    0x14a39d  1      OPC=nop             
  nop                           #  55    0x14a39e  1      OPC=nop             
  nop                           #  56    0x14a39f  1      OPC=nop             
  nop                           #  57    0x14a3a0  1      OPC=nop             
  nop                           #  58    0x14a3a1  1      OPC=nop             
  nop                           #  59    0x14a3a2  1      OPC=nop             
  nop                           #  60    0x14a3a3  1      OPC=nop             
  nop                           #  61    0x14a3a4  1      OPC=nop             
  nop                           #  62    0x14a3a5  1      OPC=nop             
  nop                           #  63    0x14a3a6  1      OPC=nop             
                                                                              
.size _Bfree, .-_Bfree

