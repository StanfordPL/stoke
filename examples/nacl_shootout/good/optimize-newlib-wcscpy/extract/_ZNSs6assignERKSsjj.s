  .text
  .globl _ZNSs6assignERKSsjj
  .type _ZNSs6assignERKSsjj, @function

#! file-offset 0xee460
#! rip-offset  0xae460
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6assignERKSsjj:                   #        0xae460  0      OPC=<label>         
  movl %esi, %esi                       #  1     0xae460  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xae462  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xae465  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xae468  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  5     0xae46a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %esi              #  6     0xae46c  4      OPC=movl_r32_m32    
  leal -0xc(%rsi), %eax                 #  7     0xae470  3      OPC=leal_r32_m16    
  movl %eax, %eax                       #  8     0xae473  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xae475  4      OPC=movl_r32_m32    
  cmpl %eax, %edx                       #  10    0xae479  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xae47b  1      OPC=nop             
  nop                                   #  12    0xae47c  1      OPC=nop             
  nop                                   #  13    0xae47d  1      OPC=nop             
  nop                                   #  14    0xae47e  1      OPC=nop             
  nop                                   #  15    0xae47f  1      OPC=nop             
  ja .L_ae4a0                           #  16    0xae480  2      OPC=ja_label        
  subl %edx, %eax                       #  17    0xae482  2      OPC=subl_r32_r32    
  leal (%rdx,%rsi,1), %esi              #  18    0xae484  3      OPC=leal_r32_m16    
  cmpl %ecx, %eax                       #  19    0xae487  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %eax                     #  20    0xae489  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xae48c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xae48f  3      OPC=addq_r64_r64    
  movl %eax, %edx                       #  23    0xae492  2      OPC=movl_r32_r32    
  jmpq ._ZNSs6assignEPKcj               #  24    0xae494  5      OPC=jmpq_label_1    
  nop                                   #  25    0xae499  1      OPC=nop             
  nop                                   #  26    0xae49a  1      OPC=nop             
  nop                                   #  27    0xae49b  1      OPC=nop             
  nop                                   #  28    0xae49c  1      OPC=nop             
  nop                                   #  29    0xae49d  1      OPC=nop             
  nop                                   #  30    0xae49e  1      OPC=nop             
  nop                                   #  31    0xae49f  1      OPC=nop             
.L_ae4a0:                               #        0xae4a0  0      OPC=<label>         
  movl $0x1003bb2b, %edi                #  32    0xae4a0  5      OPC=movl_r32_imm32  
  nop                                   #  33    0xae4a5  1      OPC=nop             
  nop                                   #  34    0xae4a6  1      OPC=nop             
  nop                                   #  35    0xae4a7  1      OPC=nop             
  nop                                   #  36    0xae4a8  1      OPC=nop             
  nop                                   #  37    0xae4a9  1      OPC=nop             
  nop                                   #  38    0xae4aa  1      OPC=nop             
  nop                                   #  39    0xae4ab  1      OPC=nop             
  nop                                   #  40    0xae4ac  1      OPC=nop             
  nop                                   #  41    0xae4ad  1      OPC=nop             
  nop                                   #  42    0xae4ae  1      OPC=nop             
  nop                                   #  43    0xae4af  1      OPC=nop             
  nop                                   #  44    0xae4b0  1      OPC=nop             
  nop                                   #  45    0xae4b1  1      OPC=nop             
  nop                                   #  46    0xae4b2  1      OPC=nop             
  nop                                   #  47    0xae4b3  1      OPC=nop             
  nop                                   #  48    0xae4b4  1      OPC=nop             
  nop                                   #  49    0xae4b5  1      OPC=nop             
  nop                                   #  50    0xae4b6  1      OPC=nop             
  nop                                   #  51    0xae4b7  1      OPC=nop             
  nop                                   #  52    0xae4b8  1      OPC=nop             
  nop                                   #  53    0xae4b9  1      OPC=nop             
  nop                                   #  54    0xae4ba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xae4bb  5      OPC=callq_label     
                                                                                     
.size _ZNSs6assignERKSsjj, .-_ZNSs6assignERKSsjj

