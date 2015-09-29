  .text
  .globl _ZNKSs15_M_check_lengthEjjPKc
  .type _ZNKSs15_M_check_lengthEjjPKc, @function

#! file-offset 0xeb500
#! rip-offset  0xab500
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSs15_M_check_lengthEjjPKc:         #        0xab500  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xab500  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xab502  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xab505  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                       #  4     0xab508  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xab50a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  6     0xab50c  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  7     0xab510  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  8     0xab513  2      OPC=movl_r32_r32    
  subl (%r15,%rax,1), %esi              #  9     0xab515  4      OPC=subl_r32_m32    
  addl $0x3ffffffc, %esi                #  10    0xab519  6      OPC=addl_r32_imm32  
  nop                                   #  11    0xab51f  1      OPC=nop             
  cmpl %edx, %esi                       #  12    0xab520  2      OPC=cmpl_r32_r32    
  jb .L_ab540                           #  13    0xab522  2      OPC=jb_label        
  addl $0x8, %esp                       #  14    0xab524  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  15    0xab527  3      OPC=addq_r64_r64    
  popq %r11                             #  16    0xab52a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  17    0xab52c  7      OPC=andl_r32_imm32  
  nop                                   #  18    0xab533  1      OPC=nop             
  nop                                   #  19    0xab534  1      OPC=nop             
  nop                                   #  20    0xab535  1      OPC=nop             
  nop                                   #  21    0xab536  1      OPC=nop             
  addq %r15, %r11                       #  22    0xab537  3      OPC=addq_r64_r64    
  jmpq %r11                             #  23    0xab53a  3      OPC=jmpq_r64        
  nop                                   #  24    0xab53d  1      OPC=nop             
  nop                                   #  25    0xab53e  1      OPC=nop             
  nop                                   #  26    0xab53f  1      OPC=nop             
  nop                                   #  27    0xab540  1      OPC=nop             
  nop                                   #  28    0xab541  1      OPC=nop             
  nop                                   #  29    0xab542  1      OPC=nop             
  nop                                   #  30    0xab543  1      OPC=nop             
  nop                                   #  31    0xab544  1      OPC=nop             
  nop                                   #  32    0xab545  1      OPC=nop             
  nop                                   #  33    0xab546  1      OPC=nop             
.L_ab540:                               #        0xab547  0      OPC=<label>         
  movl %ecx, %edi                       #  34    0xab547  2      OPC=movl_r32_r32    
  nop                                   #  35    0xab549  1      OPC=nop             
  nop                                   #  36    0xab54a  1      OPC=nop             
  nop                                   #  37    0xab54b  1      OPC=nop             
  nop                                   #  38    0xab54c  1      OPC=nop             
  nop                                   #  39    0xab54d  1      OPC=nop             
  nop                                   #  40    0xab54e  1      OPC=nop             
  nop                                   #  41    0xab54f  1      OPC=nop             
  nop                                   #  42    0xab550  1      OPC=nop             
  nop                                   #  43    0xab551  1      OPC=nop             
  nop                                   #  44    0xab552  1      OPC=nop             
  nop                                   #  45    0xab553  1      OPC=nop             
  nop                                   #  46    0xab554  1      OPC=nop             
  nop                                   #  47    0xab555  1      OPC=nop             
  nop                                   #  48    0xab556  1      OPC=nop             
  nop                                   #  49    0xab557  1      OPC=nop             
  nop                                   #  50    0xab558  1      OPC=nop             
  nop                                   #  51    0xab559  1      OPC=nop             
  nop                                   #  52    0xab55a  1      OPC=nop             
  nop                                   #  53    0xab55b  1      OPC=nop             
  nop                                   #  54    0xab55c  1      OPC=nop             
  nop                                   #  55    0xab55d  1      OPC=nop             
  nop                                   #  56    0xab55e  1      OPC=nop             
  nop                                   #  57    0xab55f  1      OPC=nop             
  nop                                   #  58    0xab560  1      OPC=nop             
  nop                                   #  59    0xab561  1      OPC=nop             
  callq ._ZSt20__throw_length_errorPKc  #  60    0xab562  5      OPC=callq_label     
                                                                                     
.size _ZNKSs15_M_check_lengthEjjPKc, .-_ZNKSs15_M_check_lengthEjjPKc

