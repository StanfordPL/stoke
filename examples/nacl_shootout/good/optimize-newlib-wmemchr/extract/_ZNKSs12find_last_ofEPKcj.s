  .text
  .globl _ZNKSs12find_last_ofEPKcj
  .type _ZNKSs12find_last_ofEPKcj, @function

#! file-offset 0xebd20
#! rip-offset  0xabd20
#! capacity    128 bytes

# Text                              #  Line  RIP      Bytes  Opcode             
._ZNKSs12find_last_ofEPKcj:         #        0xabd20  0      OPC=<label>        
  movq %r12, -0x10(%rsp)            #  1     0xabd20  5      OPC=movq_m64_r64   
  movl %esi, %r12d                  #  2     0xabd25  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)            #  3     0xabd28  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)             #  4     0xabd2d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                   #  5     0xabd32  2      OPC=movl_r32_r32   
  subl $0x18, %esp                  #  6     0xabd34  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                   #  7     0xabd37  3      OPC=addq_r64_r64   
  movl %edx, %r13d                  #  8     0xabd3a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                  #  9     0xabd3d  3      OPC=movl_r32_r32   
  nop                               #  10    0xabd40  1      OPC=nop            
  nop                               #  11    0xabd41  1      OPC=nop            
  nop                               #  12    0xabd42  1      OPC=nop            
  nop                               #  13    0xabd43  1      OPC=nop            
  nop                               #  14    0xabd44  1      OPC=nop            
  nop                               #  15    0xabd45  1      OPC=nop            
  nop                               #  16    0xabd46  1      OPC=nop            
  nop                               #  17    0xabd47  1      OPC=nop            
  nop                               #  18    0xabd48  1      OPC=nop            
  nop                               #  19    0xabd49  1      OPC=nop            
  nop                               #  20    0xabd4a  1      OPC=nop            
  nop                               #  21    0xabd4b  1      OPC=nop            
  nop                               #  22    0xabd4c  1      OPC=nop            
  nop                               #  23    0xabd4d  1      OPC=nop            
  nop                               #  24    0xabd4e  1      OPC=nop            
  nop                               #  25    0xabd4f  1      OPC=nop            
  nop                               #  26    0xabd50  1      OPC=nop            
  nop                               #  27    0xabd51  1      OPC=nop            
  nop                               #  28    0xabd52  1      OPC=nop            
  nop                               #  29    0xabd53  1      OPC=nop            
  nop                               #  30    0xabd54  1      OPC=nop            
  nop                               #  31    0xabd55  1      OPC=nop            
  nop                               #  32    0xabd56  1      OPC=nop            
  nop                               #  33    0xabd57  1      OPC=nop            
  nop                               #  34    0xabd58  1      OPC=nop            
  nop                               #  35    0xabd59  1      OPC=nop            
  nop                               #  36    0xabd5a  1      OPC=nop            
  callq .strlen                     #  37    0xabd5b  5      OPC=callq_label    
  movl %r13d, %edx                  #  38    0xabd60  3      OPC=movl_r32_r32   
  movl %r12d, %esi                  #  39    0xabd63  3      OPC=movl_r32_r32   
  movl %ebx, %edi                   #  40    0xabd66  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12              #  41    0xabd68  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                 #  42    0xabd6d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                   #  43    0xabd71  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13             #  44    0xabd73  5      OPC=movq_r64_m64   
  addl $0x18, %esp                  #  45    0xabd78  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                   #  46    0xabd7b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                    #  47    0xabd7e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs12find_last_ofEPKcjj  #  48    0xabd80  5      OPC=jmpq_label_1   
  nop                               #  49    0xabd85  1      OPC=nop            
  nop                               #  50    0xabd86  1      OPC=nop            
  nop                               #  51    0xabd87  1      OPC=nop            
  nop                               #  52    0xabd88  1      OPC=nop            
  nop                               #  53    0xabd89  1      OPC=nop            
  nop                               #  54    0xabd8a  1      OPC=nop            
  nop                               #  55    0xabd8b  1      OPC=nop            
  nop                               #  56    0xabd8c  1      OPC=nop            
  nop                               #  57    0xabd8d  1      OPC=nop            
  nop                               #  58    0xabd8e  1      OPC=nop            
  nop                               #  59    0xabd8f  1      OPC=nop            
  nop                               #  60    0xabd90  1      OPC=nop            
  nop                               #  61    0xabd91  1      OPC=nop            
  nop                               #  62    0xabd92  1      OPC=nop            
  nop                               #  63    0xabd93  1      OPC=nop            
  nop                               #  64    0xabd94  1      OPC=nop            
  nop                               #  65    0xabd95  1      OPC=nop            
  nop                               #  66    0xabd96  1      OPC=nop            
  nop                               #  67    0xabd97  1      OPC=nop            
  nop                               #  68    0xabd98  1      OPC=nop            
  nop                               #  69    0xabd99  1      OPC=nop            
  nop                               #  70    0xabd9a  1      OPC=nop            
  nop                               #  71    0xabd9b  1      OPC=nop            
  nop                               #  72    0xabd9c  1      OPC=nop            
  nop                               #  73    0xabd9d  1      OPC=nop            
  nop                               #  74    0xabd9e  1      OPC=nop            
  nop                               #  75    0xabd9f  1      OPC=nop            
                                                                                
.size _ZNKSs12find_last_ofEPKcj, .-_ZNKSs12find_last_ofEPKcj

