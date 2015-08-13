  .text
  .globl _ZNKSs12find_last_ofEPKcj
  .type _ZNKSs12find_last_ofEPKcj, @function

#! file-offset 0xeba20
#! rip-offset  0xaba20
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode             
._ZNKSs12find_last_ofEPKcj:         #        0xaba20  0      OPC=<label>        
  movq %r12, -0x10(%rsp)            #  1     0xaba20  5      OPC=movq_m64_r64   
  movl %esi, %r12d                  #  2     0xaba25  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)            #  3     0xaba28  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)             #  4     0xaba2d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                   #  5     0xaba32  2      OPC=movl_r32_r32   
  subl $0x18, %esp                  #  6     0xaba34  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                   #  7     0xaba37  3      OPC=addq_r64_r64   
  movl %edx, %r13d                  #  8     0xaba3a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                  #  9     0xaba3d  3      OPC=movl_r32_r32   
  nop                               #  10    0xaba40  1      OPC=nop            
  nop                               #  11    0xaba41  1      OPC=nop            
  nop                               #  12    0xaba42  1      OPC=nop            
  nop                               #  13    0xaba43  1      OPC=nop            
  nop                               #  14    0xaba44  1      OPC=nop            
  nop                               #  15    0xaba45  1      OPC=nop            
  nop                               #  16    0xaba46  1      OPC=nop            
  nop                               #  17    0xaba47  1      OPC=nop            
  nop                               #  18    0xaba48  1      OPC=nop            
  nop                               #  19    0xaba49  1      OPC=nop            
  nop                               #  20    0xaba4a  1      OPC=nop            
  nop                               #  21    0xaba4b  1      OPC=nop            
  nop                               #  22    0xaba4c  1      OPC=nop            
  nop                               #  23    0xaba4d  1      OPC=nop            
  nop                               #  24    0xaba4e  1      OPC=nop            
  nop                               #  25    0xaba4f  1      OPC=nop            
  nop                               #  26    0xaba50  1      OPC=nop            
  nop                               #  27    0xaba51  1      OPC=nop            
  nop                               #  28    0xaba52  1      OPC=nop            
  nop                               #  29    0xaba53  1      OPC=nop            
  nop                               #  30    0xaba54  1      OPC=nop            
  nop                               #  31    0xaba55  1      OPC=nop            
  nop                               #  32    0xaba56  1      OPC=nop            
  nop                               #  33    0xaba57  1      OPC=nop            
  nop                               #  34    0xaba58  1      OPC=nop            
  nop                               #  35    0xaba59  1      OPC=nop            
  nop                               #  36    0xaba5a  1      OPC=nop            
  callq .strlen                     #  37    0xaba5b  5      OPC=callq_label    
  movl %r13d, %edx                  #  38    0xaba60  3      OPC=movl_r32_r32   
  movl %r12d, %esi                  #  39    0xaba63  3      OPC=movl_r32_r32   
  movl %ebx, %edi                   #  40    0xaba66  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12              #  41    0xaba68  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                 #  42    0xaba6d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                   #  43    0xaba71  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13             #  44    0xaba73  5      OPC=movq_r64_m64   
  addl $0x18, %esp                  #  45    0xaba78  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                   #  46    0xaba7b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                    #  47    0xaba7e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  48    0xaba80  5      OPC=jmpq_label_1   
  nop                               #  49    0xaba85  1      OPC=nop            
  nop                               #  50    0xaba86  1      OPC=nop            
  nop                               #  51    0xaba87  1      OPC=nop            
  nop                               #  52    0xaba88  1      OPC=nop            
  nop                               #  53    0xaba89  1      OPC=nop            
  nop                               #  54    0xaba8a  1      OPC=nop            
  nop                               #  55    0xaba8b  1      OPC=nop            
  nop                               #  56    0xaba8c  1      OPC=nop            
  nop                               #  57    0xaba8d  1      OPC=nop            
  nop                               #  58    0xaba8e  1      OPC=nop            
  nop                               #  59    0xaba8f  1      OPC=nop            
  nop                               #  60    0xaba90  1      OPC=nop            
  nop                               #  61    0xaba91  1      OPC=nop            
  nop                               #  62    0xaba92  1      OPC=nop            
  nop                               #  63    0xaba93  1      OPC=nop            
  nop                               #  64    0xaba94  1      OPC=nop            
  nop                               #  65    0xaba95  1      OPC=nop            
  nop                               #  66    0xaba96  1      OPC=nop            
  nop                               #  67    0xaba97  1      OPC=nop            
  nop                               #  68    0xaba98  1      OPC=nop            
  nop                               #  69    0xaba99  1      OPC=nop            
  nop                               #  70    0xaba9a  1      OPC=nop            
  nop                               #  71    0xaba9b  1      OPC=nop            
  nop                               #  72    0xaba9c  1      OPC=nop            
  nop                               #  73    0xaba9d  1      OPC=nop            
  nop                               #  74    0xaba9e  1      OPC=nop            
  nop                               #  75    0xaba9f  1      OPC=nop            
                                                                                
.size _ZNKSs12find_last_ofEPKcj, .-_ZNKSs12find_last_ofEPKcj

