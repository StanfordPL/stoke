  .text
  .globl _ZNKSs15_M_check_lengthEjjPKc
  .type _ZNKSs15_M_check_lengthEjjPKc, @function

#! file-offset 0xeade0
#! rip-offset  0xaade0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs15_M_check_lengthEjjPKc:         #        0xaade0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaade0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaade2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaade5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                       #  4     0xaade8  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xaadea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  6     0xaadec  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  7     0xaadf0  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  8     0xaadf3  2      OPC=movl_r32_r32    
  subl (%r15,%rax,1), %esi              #  9     0xaadf5  4      OPC=subl_r32_m32    
  addl $0x3ffffffc, %esi                #  10    0xaadf9  6      OPC=addl_r32_imm32  
  nop                                   #  11    0xaadff  1      OPC=nop             
  cmpl %edx, %esi                       #  12    0xaae00  2      OPC=cmpl_r32_r32    
  jb .L_aae20                           #  13    0xaae02  2      OPC=jb_label        
  addl $0x8, %esp                       #  14    0xaae04  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  15    0xaae07  3      OPC=addq_r64_r64    
  popq %r11                             #  16    0xaae0a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  17    0xaae0c  7      OPC=andl_r32_imm32  
  nop                                   #  18    0xaae13  1      OPC=nop             
  nop                                   #  19    0xaae14  1      OPC=nop             
  nop                                   #  20    0xaae15  1      OPC=nop             
  nop                                   #  21    0xaae16  1      OPC=nop             
  addq %r15, %r11                       #  22    0xaae17  3      OPC=addq_r64_r64    
  jmpq %r11                             #  23    0xaae1a  3      OPC=jmpq_r64        
  nop                                   #  24    0xaae1d  1      OPC=nop             
  nop                                   #  25    0xaae1e  1      OPC=nop             
  nop                                   #  26    0xaae1f  1      OPC=nop             
  nop                                   #  27    0xaae20  1      OPC=nop             
  nop                                   #  28    0xaae21  1      OPC=nop             
  nop                                   #  29    0xaae22  1      OPC=nop             
  nop                                   #  30    0xaae23  1      OPC=nop             
  nop                                   #  31    0xaae24  1      OPC=nop             
  nop                                   #  32    0xaae25  1      OPC=nop             
  nop                                   #  33    0xaae26  1      OPC=nop             
.L_aae20:                               #        0xaae27  0      OPC=<label>         
  movl %ecx, %edi                       #  34    0xaae27  2      OPC=movl_r32_r32    
  nop                                   #  35    0xaae29  1      OPC=nop             
  nop                                   #  36    0xaae2a  1      OPC=nop             
  nop                                   #  37    0xaae2b  1      OPC=nop             
  nop                                   #  38    0xaae2c  1      OPC=nop             
  nop                                   #  39    0xaae2d  1      OPC=nop             
  nop                                   #  40    0xaae2e  1      OPC=nop             
  nop                                   #  41    0xaae2f  1      OPC=nop             
  nop                                   #  42    0xaae30  1      OPC=nop             
  nop                                   #  43    0xaae31  1      OPC=nop             
  nop                                   #  44    0xaae32  1      OPC=nop             
  nop                                   #  45    0xaae33  1      OPC=nop             
  nop                                   #  46    0xaae34  1      OPC=nop             
  nop                                   #  47    0xaae35  1      OPC=nop             
  nop                                   #  48    0xaae36  1      OPC=nop             
  nop                                   #  49    0xaae37  1      OPC=nop             
  nop                                   #  50    0xaae38  1      OPC=nop             
  nop                                   #  51    0xaae39  1      OPC=nop             
  nop                                   #  52    0xaae3a  1      OPC=nop             
  nop                                   #  53    0xaae3b  1      OPC=nop             
  nop                                   #  54    0xaae3c  1      OPC=nop             
  nop                                   #  55    0xaae3d  1      OPC=nop             
  nop                                   #  56    0xaae3e  1      OPC=nop             
  nop                                   #  57    0xaae3f  1      OPC=nop             
  nop                                   #  58    0xaae40  1      OPC=nop             
  nop                                   #  59    0xaae41  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc  #  60    0xaae42  5      OPC=callq_label     
                                                                                     
.size _ZNKSs15_M_check_lengthEjjPKc, .-_ZNKSs15_M_check_lengthEjjPKc

