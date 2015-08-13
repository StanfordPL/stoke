  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, @function

#! file-offset 0x12a220
#! rip-offset  0xea220
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv:  #        0xea220  0      OPC=<label>         
  movl %edi, %edi                                               #  1     0xea220  2      OPC=movl_r32_r32    
  movl %edi, %edi                                               #  2     0xea222  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x70(%r15,%rdi,1)                                  #  3     0xea224  6      OPC=cmpb_m8_imm8    
  jne .L_ea280                                                  #  4     0xea22a  2      OPC=jne_label       
  movl %edi, %edi                                               #  5     0xea22c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                   #  6     0xea22e  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  7     0xea233  2      OPC=movl_r32_r32    
  movb $0x1, 0x70(%r15,%rdi,1)                                  #  8     0xea235  6      OPC=movb_m8_imm8    
  nop                                                           #  9     0xea23b  1      OPC=nop             
  nop                                                           #  10    0xea23c  1      OPC=nop             
  nop                                                           #  11    0xea23d  1      OPC=nop             
  nop                                                           #  12    0xea23e  1      OPC=nop             
  nop                                                           #  13    0xea23f  1      OPC=nop             
  movl %edi, %edi                                               #  14    0xea240  2      OPC=movl_r32_r32    
  movl %eax, 0x68(%r15,%rdi,1)                                  #  15    0xea242  5      OPC=movl_m32_r32    
  movl %edi, %edi                                               #  16    0xea247  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rdi,1), %eax                                   #  17    0xea249  5      OPC=movl_r32_m32    
  movl %edi, %edi                                               #  18    0xea24e  2      OPC=movl_r32_r32    
  movl %eax, 0x6c(%r15,%rdi,1)                                  #  19    0xea250  5      OPC=movl_m32_r32    
  leal 0x64(%rdi), %eax                                         #  20    0xea255  3      OPC=leal_r32_m16    
  movl %edi, %edi                                               #  21    0xea258  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)                                   #  22    0xea25a  5      OPC=movl_m32_r32    
  nop                                                           #  23    0xea25f  1      OPC=nop             
  movl %edi, %edi                                               #  24    0xea260  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                   #  25    0xea262  5      OPC=movl_m32_r32    
  addl $0x4, %eax                                               #  26    0xea267  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                               #  27    0xea26a  2      OPC=movl_r32_r32    
  movl %eax, 0xc(%r15,%rdi,1)                                   #  28    0xea26c  5      OPC=movl_m32_r32    
  nop                                                           #  29    0xea271  1      OPC=nop             
  nop                                                           #  30    0xea272  1      OPC=nop             
  nop                                                           #  31    0xea273  1      OPC=nop             
  nop                                                           #  32    0xea274  1      OPC=nop             
  nop                                                           #  33    0xea275  1      OPC=nop             
  nop                                                           #  34    0xea276  1      OPC=nop             
  nop                                                           #  35    0xea277  1      OPC=nop             
  nop                                                           #  36    0xea278  1      OPC=nop             
  nop                                                           #  37    0xea279  1      OPC=nop             
  nop                                                           #  38    0xea27a  1      OPC=nop             
  nop                                                           #  39    0xea27b  1      OPC=nop             
  nop                                                           #  40    0xea27c  1      OPC=nop             
  nop                                                           #  41    0xea27d  1      OPC=nop             
  nop                                                           #  42    0xea27e  1      OPC=nop             
  nop                                                           #  43    0xea27f  1      OPC=nop             
.L_ea280:                                                       #        0xea280  0      OPC=<label>         
  popq %r11                                                     #  44    0xea280  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                       #  45    0xea282  7      OPC=andl_r32_imm32  
  nop                                                           #  46    0xea289  1      OPC=nop             
  nop                                                           #  47    0xea28a  1      OPC=nop             
  nop                                                           #  48    0xea28b  1      OPC=nop             
  nop                                                           #  49    0xea28c  1      OPC=nop             
  addq %r15, %r11                                               #  50    0xea28d  3      OPC=addq_r64_r64    
  jmpq %r11                                                     #  51    0xea290  3      OPC=jmpq_r64        
  nop                                                           #  52    0xea293  1      OPC=nop             
  nop                                                           #  53    0xea294  1      OPC=nop             
  nop                                                           #  54    0xea295  1      OPC=nop             
  nop                                                           #  55    0xea296  1      OPC=nop             
  nop                                                           #  56    0xea297  1      OPC=nop             
  nop                                                           #  57    0xea298  1      OPC=nop             
  nop                                                           #  58    0xea299  1      OPC=nop             
  nop                                                           #  59    0xea29a  1      OPC=nop             
  nop                                                           #  60    0xea29b  1      OPC=nop             
  nop                                                           #  61    0xea29c  1      OPC=nop             
  nop                                                           #  62    0xea29d  1      OPC=nop             
  nop                                                           #  63    0xea29e  1      OPC=nop             
  nop                                                           #  64    0xea29f  1      OPC=nop             
  nop                                                           #  65    0xea2a0  1      OPC=nop             
  nop                                                           #  66    0xea2a1  1      OPC=nop             
  nop                                                           #  67    0xea2a2  1      OPC=nop             
  nop                                                           #  68    0xea2a3  1      OPC=nop             
  nop                                                           #  69    0xea2a4  1      OPC=nop             
  nop                                                           #  70    0xea2a5  1      OPC=nop             
  nop                                                           #  71    0xea2a6  1      OPC=nop             
                                                                                                             
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv

