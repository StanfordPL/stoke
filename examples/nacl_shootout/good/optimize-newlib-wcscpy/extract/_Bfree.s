  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x189fa0
#! rip-offset  0x149fa0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._Bfree:                        #        0x149fa0  0      OPC=<label>         
  movl %esi, %esi               #  1     0x149fa0  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  2     0x149fa2  2      OPC=movl_r32_r32    
  testq %rsi, %rsi              #  3     0x149fa4  3      OPC=testq_r64_r64   
  je .L_149fe0                  #  4     0x149fa7  2      OPC=je_label        
  movl %esi, %esi               #  5     0x149fa9  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rsi,1), %eax   #  6     0x149fab  5      OPC=movl_r32_m32    
  shll $0x2, %eax               #  7     0x149fb0  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  8     0x149fb3  2      OPC=movl_r32_r32    
  addl 0x4c(%r15,%rdi,1), %eax  #  9     0x149fb5  5      OPC=addl_r32_m32    
  movl %eax, %eax               #  10    0x149fba  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx      #  11    0x149fbc  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  12    0x149fc0  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)      #  13    0x149fc2  4      OPC=movl_m32_r32    
  movl %eax, %eax               #  14    0x149fc6  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)      #  15    0x149fc8  4      OPC=movl_m32_r32    
  nop                           #  16    0x149fcc  1      OPC=nop             
  nop                           #  17    0x149fcd  1      OPC=nop             
  nop                           #  18    0x149fce  1      OPC=nop             
  nop                           #  19    0x149fcf  1      OPC=nop             
  nop                           #  20    0x149fd0  1      OPC=nop             
  nop                           #  21    0x149fd1  1      OPC=nop             
  nop                           #  22    0x149fd2  1      OPC=nop             
  nop                           #  23    0x149fd3  1      OPC=nop             
  nop                           #  24    0x149fd4  1      OPC=nop             
  nop                           #  25    0x149fd5  1      OPC=nop             
  nop                           #  26    0x149fd6  1      OPC=nop             
  nop                           #  27    0x149fd7  1      OPC=nop             
  nop                           #  28    0x149fd8  1      OPC=nop             
  nop                           #  29    0x149fd9  1      OPC=nop             
  nop                           #  30    0x149fda  1      OPC=nop             
  nop                           #  31    0x149fdb  1      OPC=nop             
  nop                           #  32    0x149fdc  1      OPC=nop             
  nop                           #  33    0x149fdd  1      OPC=nop             
  nop                           #  34    0x149fde  1      OPC=nop             
  nop                           #  35    0x149fdf  1      OPC=nop             
.L_149fe0:                      #        0x149fe0  0      OPC=<label>         
  popq %r11                     #  36    0x149fe0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  37    0x149fe2  7      OPC=andl_r32_imm32  
  nop                           #  38    0x149fe9  1      OPC=nop             
  nop                           #  39    0x149fea  1      OPC=nop             
  nop                           #  40    0x149feb  1      OPC=nop             
  nop                           #  41    0x149fec  1      OPC=nop             
  addq %r15, %r11               #  42    0x149fed  3      OPC=addq_r64_r64    
  jmpq %r11                     #  43    0x149ff0  3      OPC=jmpq_r64        
  nop                           #  44    0x149ff3  1      OPC=nop             
  nop                           #  45    0x149ff4  1      OPC=nop             
  nop                           #  46    0x149ff5  1      OPC=nop             
  nop                           #  47    0x149ff6  1      OPC=nop             
  nop                           #  48    0x149ff7  1      OPC=nop             
  nop                           #  49    0x149ff8  1      OPC=nop             
  nop                           #  50    0x149ff9  1      OPC=nop             
  nop                           #  51    0x149ffa  1      OPC=nop             
  nop                           #  52    0x149ffb  1      OPC=nop             
  nop                           #  53    0x149ffc  1      OPC=nop             
  nop                           #  54    0x149ffd  1      OPC=nop             
  nop                           #  55    0x149ffe  1      OPC=nop             
  nop                           #  56    0x149fff  1      OPC=nop             
  nop                           #  57    0x14a000  1      OPC=nop             
  nop                           #  58    0x14a001  1      OPC=nop             
  nop                           #  59    0x14a002  1      OPC=nop             
  nop                           #  60    0x14a003  1      OPC=nop             
  nop                           #  61    0x14a004  1      OPC=nop             
  nop                           #  62    0x14a005  1      OPC=nop             
  nop                           #  63    0x14a006  1      OPC=nop             
                                                                              
.size _Bfree, .-_Bfree

