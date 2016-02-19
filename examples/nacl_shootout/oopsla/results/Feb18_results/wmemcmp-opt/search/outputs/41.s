  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>         
  nop                           #  1     0x14f2a0  1      OPC=nop             
  nop                           #  2     0x14f2a1  1      OPC=nop             
  nop                           #  3     0x14f2a2  1      OPC=nop             
  testl %edx, %edx              #  4     0x14f2a3  2      OPC=testl_r32_r32   
  nop                           #  5     0x14f2a5  1      OPC=nop             
  je .L_14f300                  #  6     0x14f2a6  2      OPC=je_label        
  nop                           #  7     0x14f2a8  1      OPC=nop             
  movl %edi, %edi               #  8     0x14f2a9  2      OPC=movl_r32_r32_1  
  movl (%r15,%rdi,1), %r8d      #  9     0x14f2ab  4      OPC=movl_r32_m32    
  nop                           #  10    0x14f2af  1      OPC=nop             
  nop                           #  11    0x14f2b0  1      OPC=nop             
  nop                           #  12    0x14f2b1  1      OPC=nop             
  nop                           #  13    0x14f2b2  1      OPC=nop             
  xorl %eax, %eax               #  14    0x14f2b3  2      OPC=xorl_r32_r32    
  movl %esi, %esi               #  15    0x14f2b5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  16    0x14f2b7  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  17    0x14f2bb  3      OPC=cmpl_r32_r32    
  nop                           #  18    0x14f2be  1      OPC=nop             
  nop                           #  19    0x14f2bf  1      OPC=nop             
  je .L_14f2e0                  #  20    0x14f2c0  2      OPC=je_label        
  nop                           #  21    0x14f2c2  1      OPC=nop             
  nop                           #  22    0x14f2c3  1      OPC=nop             
  nop                           #  23    0x14f2c4  1      OPC=nop             
  nop                           #  24    0x14f2c5  1      OPC=nop             
  nop                           #  25    0x14f2c6  1      OPC=nop             
  nop                           #  26    0x14f2c7  1      OPC=nop             
  jmpq .L_14f320                #  27    0x14f2c8  2      OPC=jmpq_label      
  nop                           #  28    0x14f2ca  1      OPC=nop             
  nop                           #  29    0x14f2cb  1      OPC=nop             
  nop                           #  30    0x14f2cc  1      OPC=nop             
.L_14f2c0:                      #        0x14f2cd  0      OPC=<label>         
  addl $0x4, %esi               #  31    0x14f2cd  3      OPC=addl_r32_imm8   
  addl $0x4, %edi               #  32    0x14f2d0  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  33    0x14f2d3  4      OPC=movl_r32_m32    
  andl %esi, %esi               #  34    0x14f2d7  2      OPC=andl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx      #  35    0x14f2d9  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  36    0x14f2dd  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  37    0x14f2e0  2      OPC=jne_label       
  nop                           #  38    0x14f2e2  1      OPC=nop             
  nop                           #  39    0x14f2e3  1      OPC=nop             
  nop                           #  40    0x14f2e4  1      OPC=nop             
  nop                           #  41    0x14f2e5  1      OPC=nop             
.L_14f2e0:                      #        0x14f2e6  0      OPC=<label>         
  addl $0x1, %eax               #  42    0x14f2e6  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  43    0x14f2e9  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  44    0x14f2eb  2      OPC=ja_label        
  nop                           #  45    0x14f2ed  1      OPC=nop             
  nop                           #  46    0x14f2ee  1      OPC=nop             
  nop                           #  47    0x14f2ef  1      OPC=nop             
  nop                           #  48    0x14f2f0  1      OPC=nop             
  nop                           #  49    0x14f2f1  1      OPC=nop             
  nop                           #  50    0x14f2f2  1      OPC=nop             
  nop                           #  51    0x14f2f3  1      OPC=nop             
  nop                           #  52    0x14f2f4  1      OPC=nop             
  nop                           #  53    0x14f2f5  1      OPC=nop             
  nop                           #  54    0x14f2f6  1      OPC=nop             
  nop                           #  55    0x14f2f7  1      OPC=nop             
  nop                           #  56    0x14f2f8  1      OPC=nop             
  nop                           #  57    0x14f2f9  1      OPC=nop             
  nop                           #  58    0x14f2fa  1      OPC=nop             
  nop                           #  59    0x14f2fb  1      OPC=nop             
  nop                           #  60    0x14f2fc  1      OPC=nop             
  nop                           #  61    0x14f2fd  1      OPC=nop             
  nop                           #  62    0x14f2fe  1      OPC=nop             
  nop                           #  63    0x14f2ff  1      OPC=nop             
.L_14f300:                      #        0x14f300  0      OPC=<label>         
  nop                           #  64    0x14f300  1      OPC=nop             
  xorq %rax, %rax               #  65    0x14f301  3      OPC=xorq_r64_r64    
  nop                           #  66    0x14f304  1      OPC=nop             
  nop                           #  67    0x14f305  1      OPC=nop             
  andl $0xfe, %eax              #  68    0x14f306  3      OPC=andl_r32_imm8   
  nop                           #  69    0x14f309  1      OPC=nop             
  retq                          #  70    0x14f30a  1      OPC=retq            
  nop                           #  71    0x14f30b  1      OPC=nop             
  nop                           #  72    0x14f30c  1      OPC=nop             
  nop                           #  73    0x14f30d  1      OPC=nop             
  nop                           #  74    0x14f30e  1      OPC=nop             
  nop                           #  75    0x14f30f  1      OPC=nop             
.L_14f320:                      #        0x14f310  0      OPC=<label>         
  xorl %eax, %eax               #  76    0x14f310  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  77    0x14f312  3      OPC=cmpl_r32_r32    
  setg %al                      #  78    0x14f315  3      OPC=setg_r8         
  nop                           #  79    0x14f318  1      OPC=nop             
  leal -0x1(%rax,%rax,1), %eax  #  80    0x14f319  4      OPC=leal_r32_m16    
  nop                           #  81    0x14f31d  1      OPC=nop             
  retq                          #  82    0x14f31e  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
