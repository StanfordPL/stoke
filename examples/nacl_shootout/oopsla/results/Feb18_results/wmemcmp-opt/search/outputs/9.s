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
  nop                           #  6     0x14f2a6  1      OPC=nop             
  je .L_14f300                  #  7     0x14f2a7  2      OPC=je_label        
  nop                           #  8     0x14f2a9  1      OPC=nop             
  nop                           #  9     0x14f2aa  1      OPC=nop             
  xorl %eax, %eax               #  10    0x14f2ab  2      OPC=xorl_r32_r32    
  nop                           #  11    0x14f2ad  1      OPC=nop             
  nop                           #  12    0x14f2ae  1      OPC=nop             
  nop                           #  13    0x14f2af  1      OPC=nop             
  andl %edi, %edi               #  14    0x14f2b0  2      OPC=andl_r32_r32_1  
  movl (%r15,%rdi,1), %r8d      #  15    0x14f2b2  4      OPC=movl_r32_m32    
  nop                           #  16    0x14f2b6  1      OPC=nop             
  orl %esi, %esi                #  17    0x14f2b7  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %ecx      #  18    0x14f2b9  4      OPC=movl_r32_m32    
  nop                           #  19    0x14f2bd  1      OPC=nop             
  shlb $0x1, %al                #  20    0x14f2be  2      OPC=shlb_r8_one     
  cmpl %ecx, %r8d               #  21    0x14f2c0  3      OPC=cmpl_r32_r32    
  nop                           #  22    0x14f2c3  1      OPC=nop             
  nop                           #  23    0x14f2c4  1      OPC=nop             
  nop                           #  24    0x14f2c5  1      OPC=nop             
  je .L_14f2e0                  #  25    0x14f2c6  2      OPC=je_label        
  jmpq .L_14f320                #  26    0x14f2c8  2      OPC=jmpq_label      
.L_14f2c0:                      #        0x14f2ca  0      OPC=<label>         
  addl $0x4, %edi               #  27    0x14f2ca  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  28    0x14f2cd  4      OPC=movl_r32_m32    
  addl $0x4, %esi               #  29    0x14f2d1  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  30    0x14f2d4  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  31    0x14f2d8  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  32    0x14f2db  2      OPC=jne_label       
  nop                           #  33    0x14f2dd  1      OPC=nop             
  nop                           #  34    0x14f2de  1      OPC=nop             
  nop                           #  35    0x14f2df  1      OPC=nop             
  nop                           #  36    0x14f2e0  1      OPC=nop             
  nop                           #  37    0x14f2e1  1      OPC=nop             
  nop                           #  38    0x14f2e2  1      OPC=nop             
  nop                           #  39    0x14f2e3  1      OPC=nop             
.L_14f2e0:                      #        0x14f2e4  0      OPC=<label>         
  addl $0x1, %eax               #  40    0x14f2e4  5      OPC=addl_eax_imm32  
  cmpl %eax, %edx               #  41    0x14f2e9  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  42    0x14f2eb  2      OPC=ja_label        
  nop                           #  43    0x14f2ed  1      OPC=nop             
  nopl %eax                     #  44    0x14f2ee  3      OPC=nopl_r32        
  nop                           #  45    0x14f2f1  1      OPC=nop             
  nop                           #  46    0x14f2f2  1      OPC=nop             
  nopl %eax                     #  47    0x14f2f3  3      OPC=nopl_r32        
  nop                           #  48    0x14f2f6  1      OPC=nop             
.L_14f300:                      #        0x14f2f7  0      OPC=<label>         
  nop                           #  49    0x14f2f7  1      OPC=nop             
  nop                           #  50    0x14f2f8  1      OPC=nop             
  nop                           #  51    0x14f2f9  1      OPC=nop             
  nop                           #  52    0x14f2fa  1      OPC=nop             
  nop                           #  53    0x14f2fb  1      OPC=nop             
  nop                           #  54    0x14f2fc  1      OPC=nop             
  nop                           #  55    0x14f2fd  1      OPC=nop             
  xorl %eax, %eax               #  56    0x14f2fe  2      OPC=xorl_r32_r32    
  nop                           #  57    0x14f300  1      OPC=nop             
  nop                           #  58    0x14f301  1      OPC=nop             
  nop                           #  59    0x14f302  1      OPC=nop             
  nop                           #  60    0x14f303  1      OPC=nop             
  nop                           #  61    0x14f304  1      OPC=nop             
  nop                           #  62    0x14f305  1      OPC=nop             
  addb %ah, %ah                 #  63    0x14f306  2      OPC=addb_rh_rh_1    
  nop                           #  64    0x14f308  1      OPC=nop             
  retq                          #  65    0x14f309  1      OPC=retq            
  nop                           #  66    0x14f30a  1      OPC=nop             
  nop                           #  67    0x14f30b  1      OPC=nop             
  nop                           #  68    0x14f30c  1      OPC=nop             
  nop                           #  69    0x14f30d  1      OPC=nop             
  nop                           #  70    0x14f30e  1      OPC=nop             
.L_14f320:                      #        0x14f30f  0      OPC=<label>         
  nop                           #  71    0x14f30f  1      OPC=nop             
  nop                           #  72    0x14f310  1      OPC=nop             
  nop                           #  73    0x14f311  1      OPC=nop             
  nop                           #  74    0x14f312  1      OPC=nop             
  subl %eax, %eax               #  75    0x14f313  2      OPC=subl_r32_r32_1  
  nop                           #  76    0x14f315  1      OPC=nop             
  nop                           #  77    0x14f316  1      OPC=nop             
  nop                           #  78    0x14f317  1      OPC=nop             
  nop                           #  79    0x14f318  1      OPC=nop             
  cmpl %ecx, %r8d               #  80    0x14f319  3      OPC=cmpl_r32_r32    
  nop                           #  81    0x14f31c  1      OPC=nop             
  nop                           #  82    0x14f31d  1      OPC=nop             
  nop                           #  83    0x14f31e  1      OPC=nop             
  nop                           #  84    0x14f31f  1      OPC=nop             
  nop                           #  85    0x14f320  1      OPC=nop             
  nop                           #  86    0x14f321  1      OPC=nop             
  setg %al                      #  87    0x14f322  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  88    0x14f325  4      OPC=leal_r32_m32    
  retq                          #  89    0x14f329  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
