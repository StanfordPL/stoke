  .text
  .globl _ZNSs6insertEjjc
  .type _ZNSs6insertEjjc, @function

#! file-offset 0xeea40
#! rip-offset  0xaea40
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEjjc:                      #        0xaea40  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xaea40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaea42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaea45  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaea48  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax              #  5     0xaea4a  4      OPC=movl_r32_m32    
  subl $0xc, %eax                       #  6     0xaea4e  3      OPC=subl_r32_imm8   
  movl %eax, %eax                       #  7     0xaea51  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi              #  8     0xaea53  4      OPC=cmpl_r32_m32    
  ja .L_aea80                           #  9     0xaea57  2      OPC=ja_label        
  movsbl %cl, %r8d                      #  10    0xaea59  4      OPC=movsbl_r32_r8   
  nop                                   #  11    0xaea5d  1      OPC=nop             
  nop                                   #  12    0xaea5e  1      OPC=nop             
  nop                                   #  13    0xaea5f  1      OPC=nop             
  addl $0x8, %esp                       #  14    0xaea60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  15    0xaea63  3      OPC=addq_r64_r64    
  movl %edx, %ecx                       #  16    0xaea66  2      OPC=movl_r32_r32    
  xorl %edx, %edx                       #  17    0xaea68  2      OPC=xorl_r32_r32    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  18    0xaea6a  5      OPC=jmpq_label_1    
  xchgw %ax, %ax                        #  19    0xaea6f  2      OPC=xchgw_ax_r16    
  nop                                   #  20    0xaea71  1      OPC=nop             
  nop                                   #  21    0xaea72  1      OPC=nop             
  nop                                   #  22    0xaea73  1      OPC=nop             
  nop                                   #  23    0xaea74  1      OPC=nop             
  nop                                   #  24    0xaea75  1      OPC=nop             
  nop                                   #  25    0xaea76  1      OPC=nop             
  nop                                   #  26    0xaea77  1      OPC=nop             
  nop                                   #  27    0xaea78  1      OPC=nop             
  nop                                   #  28    0xaea79  1      OPC=nop             
  nop                                   #  29    0xaea7a  1      OPC=nop             
  nop                                   #  30    0xaea7b  1      OPC=nop             
  nop                                   #  31    0xaea7c  1      OPC=nop             
  nop                                   #  32    0xaea7d  1      OPC=nop             
  nop                                   #  33    0xaea7e  1      OPC=nop             
  nop                                   #  34    0xaea7f  1      OPC=nop             
.L_aea80:                               #        0xaea80  0      OPC=<label>         
  movl $0x1003bb73, %edi                #  35    0xaea80  5      OPC=movl_r32_imm32  
  nop                                   #  36    0xaea85  1      OPC=nop             
  nop                                   #  37    0xaea86  1      OPC=nop             
  nop                                   #  38    0xaea87  1      OPC=nop             
  nop                                   #  39    0xaea88  1      OPC=nop             
  nop                                   #  40    0xaea89  1      OPC=nop             
  nop                                   #  41    0xaea8a  1      OPC=nop             
  nop                                   #  42    0xaea8b  1      OPC=nop             
  nop                                   #  43    0xaea8c  1      OPC=nop             
  nop                                   #  44    0xaea8d  1      OPC=nop             
  nop                                   #  45    0xaea8e  1      OPC=nop             
  nop                                   #  46    0xaea8f  1      OPC=nop             
  nop                                   #  47    0xaea90  1      OPC=nop             
  nop                                   #  48    0xaea91  1      OPC=nop             
  nop                                   #  49    0xaea92  1      OPC=nop             
  nop                                   #  50    0xaea93  1      OPC=nop             
  nop                                   #  51    0xaea94  1      OPC=nop             
  nop                                   #  52    0xaea95  1      OPC=nop             
  nop                                   #  53    0xaea96  1      OPC=nop             
  nop                                   #  54    0xaea97  1      OPC=nop             
  nop                                   #  55    0xaea98  1      OPC=nop             
  nop                                   #  56    0xaea99  1      OPC=nop             
  nop                                   #  57    0xaea9a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  58    0xaea9b  5      OPC=callq_label     
                                                                                     
.size _ZNSs6insertEjjc, .-_ZNSs6insertEjjc

