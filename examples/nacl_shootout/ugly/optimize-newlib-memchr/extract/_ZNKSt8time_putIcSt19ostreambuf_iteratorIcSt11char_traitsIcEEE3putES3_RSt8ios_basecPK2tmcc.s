  .text
  .globl _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc
  .type _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc, @function

#! file-offset 0xb9400
#! rip-offset  0x79400
#! capacity    96 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc:  #        0x79400  0      OPC=<label>         
  subl $0x18, %esp                                                                            #  1     0x79400  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  2     0x79403  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  3     0x79406  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                                             #  4     0x79408  2      OPC=movl_r32_r32    
  movsbl 0x20(%rsp), %r10d                                                                    #  5     0x7940a  6      OPC=movsbl_r32_m8   
  movl %edi, %edi                                                                             #  6     0x79410  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  7     0x79412  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                            #  8     0x79416  3      OPC=movsbl_r32_r8   
  movsbl %r9b, %r9d                                                                           #  9     0x79419  4      OPC=movsbl_r32_r8   
  nop                                                                                         #  10    0x7941d  1      OPC=nop             
  nop                                                                                         #  11    0x7941e  1      OPC=nop             
  nop                                                                                         #  12    0x7941f  1      OPC=nop             
  movl %r10d, (%rsp)                                                                          #  13    0x79420  4      OPC=movl_m32_r32    
  movl %eax, %eax                                                                             #  14    0x79424  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                 #  15    0x79426  5      OPC=movl_r32_m32    
  nop                                                                                         #  16    0x7942b  1      OPC=nop             
  nop                                                                                         #  17    0x7942c  1      OPC=nop             
  nop                                                                                         #  18    0x7942d  1      OPC=nop             
  nop                                                                                         #  19    0x7942e  1      OPC=nop             
  nop                                                                                         #  20    0x7942f  1      OPC=nop             
  nop                                                                                         #  21    0x79430  1      OPC=nop             
  nop                                                                                         #  22    0x79431  1      OPC=nop             
  nop                                                                                         #  23    0x79432  1      OPC=nop             
  nop                                                                                         #  24    0x79433  1      OPC=nop             
  nop                                                                                         #  25    0x79434  1      OPC=nop             
  nop                                                                                         #  26    0x79435  1      OPC=nop             
  nop                                                                                         #  27    0x79436  1      OPC=nop             
  nop                                                                                         #  28    0x79437  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  29    0x79438  6      OPC=andl_r32_imm32  
  nop                                                                                         #  30    0x7943e  1      OPC=nop             
  nop                                                                                         #  31    0x7943f  1      OPC=nop             
  nop                                                                                         #  32    0x79440  1      OPC=nop             
  addq %r15, %rax                                                                             #  33    0x79441  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  34    0x79444  2      OPC=callq_r64       
  addl $0x18, %esp                                                                            #  35    0x79446  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  36    0x79449  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  37    0x7944c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  38    0x7944e  7      OPC=andl_r32_imm32  
  nop                                                                                         #  39    0x79455  1      OPC=nop             
  nop                                                                                         #  40    0x79456  1      OPC=nop             
  nop                                                                                         #  41    0x79457  1      OPC=nop             
  nop                                                                                         #  42    0x79458  1      OPC=nop             
  addq %r15, %r11                                                                             #  43    0x79459  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  44    0x7945c  3      OPC=jmpq_r64        
  nop                                                                                         #  45    0x7945f  1      OPC=nop             
  nop                                                                                         #  46    0x79460  1      OPC=nop             
  nop                                                                                         #  47    0x79461  1      OPC=nop             
  nop                                                                                         #  48    0x79462  1      OPC=nop             
  nop                                                                                         #  49    0x79463  1      OPC=nop             
  nop                                                                                         #  50    0x79464  1      OPC=nop             
  nop                                                                                         #  51    0x79465  1      OPC=nop             
  nop                                                                                         #  52    0x79466  1      OPC=nop             
  nop                                                                                         #  53    0x79467  1      OPC=nop             
  nop                                                                                         #  54    0x79468  1      OPC=nop             
  nop                                                                                         #  55    0x79469  1      OPC=nop             
  nop                                                                                         #  56    0x7946a  1      OPC=nop             
  nop                                                                                         #  57    0x7946b  1      OPC=nop             
  nop                                                                                         #  58    0x7946c  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc, .-_ZNKSt8time_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecPK2tmcc

