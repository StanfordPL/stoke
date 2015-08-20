  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0xefba0
#! rip-offset  0xafba0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEjRKSsjj:                  #        0xafba0  0      OPC=<label>         
  movl %edx, %edx                       #  1     0xafba0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xafba2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xafba5  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xafba8  2      OPC=movl_r32_r32    
  movl %edx, %edx                       #  5     0xafbaa  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx              #  6     0xafbac  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %eax                 #  7     0xafbb0  3      OPC=leal_r32_m16    
  movl %eax, %eax                       #  8     0xafbb3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xafbb5  4      OPC=movl_r32_m32    
  cmpl %eax, %ecx                       #  10    0xafbb9  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xafbbb  1      OPC=nop             
  nop                                   #  12    0xafbbc  1      OPC=nop             
  nop                                   #  13    0xafbbd  1      OPC=nop             
  nop                                   #  14    0xafbbe  1      OPC=nop             
  nop                                   #  15    0xafbbf  1      OPC=nop             
  ja .L_afbe0                           #  16    0xafbc0  2      OPC=ja_label        
  subl %ecx, %eax                       #  17    0xafbc2  2      OPC=subl_r32_r32    
  leal (%rcx,%rdx,1), %edx              #  18    0xafbc4  3      OPC=leal_r32_m16    
  cmpl %r8d, %eax                       #  19    0xafbc7  3      OPC=cmpl_r32_r32    
  cmoval %r8d, %eax                     #  20    0xafbca  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xafbce  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xafbd1  3      OPC=addq_r64_r64    
  movl %eax, %ecx                       #  23    0xafbd4  2      OPC=movl_r32_r32    
  jmpq ._ZNSs6insertEjPKcj              #  24    0xafbd6  5      OPC=jmpq_label_1    
  nop                                   #  25    0xafbdb  1      OPC=nop             
  nop                                   #  26    0xafbdc  1      OPC=nop             
  nop                                   #  27    0xafbdd  1      OPC=nop             
  nop                                   #  28    0xafbde  1      OPC=nop             
  nop                                   #  29    0xafbdf  1      OPC=nop             
.L_afbe0:                               #        0xafbe0  0      OPC=<label>         
  movl $0x1003bb73, %edi                #  30    0xafbe0  5      OPC=movl_r32_imm32  
  nop                                   #  31    0xafbe5  1      OPC=nop             
  nop                                   #  32    0xafbe6  1      OPC=nop             
  nop                                   #  33    0xafbe7  1      OPC=nop             
  nop                                   #  34    0xafbe8  1      OPC=nop             
  nop                                   #  35    0xafbe9  1      OPC=nop             
  nop                                   #  36    0xafbea  1      OPC=nop             
  nop                                   #  37    0xafbeb  1      OPC=nop             
  nop                                   #  38    0xafbec  1      OPC=nop             
  nop                                   #  39    0xafbed  1      OPC=nop             
  nop                                   #  40    0xafbee  1      OPC=nop             
  nop                                   #  41    0xafbef  1      OPC=nop             
  nop                                   #  42    0xafbf0  1      OPC=nop             
  nop                                   #  43    0xafbf1  1      OPC=nop             
  nop                                   #  44    0xafbf2  1      OPC=nop             
  nop                                   #  45    0xafbf3  1      OPC=nop             
  nop                                   #  46    0xafbf4  1      OPC=nop             
  nop                                   #  47    0xafbf5  1      OPC=nop             
  nop                                   #  48    0xafbf6  1      OPC=nop             
  nop                                   #  49    0xafbf7  1      OPC=nop             
  nop                                   #  50    0xafbf8  1      OPC=nop             
  nop                                   #  51    0xafbf9  1      OPC=nop             
  nop                                   #  52    0xafbfa  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  53    0xafbfb  5      OPC=callq_label     
                                                                                     
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

