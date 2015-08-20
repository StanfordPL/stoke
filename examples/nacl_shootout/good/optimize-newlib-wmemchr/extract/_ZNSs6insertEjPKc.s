  .text
  .globl _ZNSs6insertEjPKc
  .type _ZNSs6insertEjPKc, @function

#! file-offset 0xefb20
#! rip-offset  0xafb20
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode             
._ZNSs6insertEjPKc:         #        0xafb20  0      OPC=<label>        
  movq %r13, -0x8(%rsp)     #  1     0xafb20  5      OPC=movq_m64_r64   
  movl %edx, %r13d          #  2     0xafb25  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)    #  3     0xafb28  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  4     0xafb2d  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  5     0xafb32  2      OPC=movl_r32_r32   
  subl $0x18, %esp          #  6     0xafb34  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0xafb37  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0xafb3a  3      OPC=movl_r32_r32   
  movl %r13d, %edi          #  9     0xafb3d  3      OPC=movl_r32_r32   
  nop                       #  10    0xafb40  1      OPC=nop            
  nop                       #  11    0xafb41  1      OPC=nop            
  nop                       #  12    0xafb42  1      OPC=nop            
  nop                       #  13    0xafb43  1      OPC=nop            
  nop                       #  14    0xafb44  1      OPC=nop            
  nop                       #  15    0xafb45  1      OPC=nop            
  nop                       #  16    0xafb46  1      OPC=nop            
  nop                       #  17    0xafb47  1      OPC=nop            
  nop                       #  18    0xafb48  1      OPC=nop            
  nop                       #  19    0xafb49  1      OPC=nop            
  nop                       #  20    0xafb4a  1      OPC=nop            
  nop                       #  21    0xafb4b  1      OPC=nop            
  nop                       #  22    0xafb4c  1      OPC=nop            
  nop                       #  23    0xafb4d  1      OPC=nop            
  nop                       #  24    0xafb4e  1      OPC=nop            
  nop                       #  25    0xafb4f  1      OPC=nop            
  nop                       #  26    0xafb50  1      OPC=nop            
  nop                       #  27    0xafb51  1      OPC=nop            
  nop                       #  28    0xafb52  1      OPC=nop            
  nop                       #  29    0xafb53  1      OPC=nop            
  nop                       #  30    0xafb54  1      OPC=nop            
  nop                       #  31    0xafb55  1      OPC=nop            
  nop                       #  32    0xafb56  1      OPC=nop            
  nop                       #  33    0xafb57  1      OPC=nop            
  nop                       #  34    0xafb58  1      OPC=nop            
  nop                       #  35    0xafb59  1      OPC=nop            
  nop                       #  36    0xafb5a  1      OPC=nop            
  callq .strlen             #  37    0xafb5b  5      OPC=callq_label    
  movl %r13d, %edx          #  38    0xafb60  3      OPC=movl_r32_r32   
  movl %r12d, %esi          #  39    0xafb63  3      OPC=movl_r32_r32   
  movl %ebx, %edi           #  40    0xafb66  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  41    0xafb68  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  42    0xafb6d  4      OPC=movq_r64_m64   
  movl %eax, %ecx           #  43    0xafb71  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13     #  44    0xafb73  5      OPC=movq_r64_m64   
  addl $0x18, %esp          #  45    0xafb78  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  46    0xafb7b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax            #  47    0xafb7e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNSs6insertEjPKcj  #  48    0xafb80  5      OPC=jmpq_label_1   
  nop                       #  49    0xafb85  1      OPC=nop            
  nop                       #  50    0xafb86  1      OPC=nop            
  nop                       #  51    0xafb87  1      OPC=nop            
  nop                       #  52    0xafb88  1      OPC=nop            
  nop                       #  53    0xafb89  1      OPC=nop            
  nop                       #  54    0xafb8a  1      OPC=nop            
  nop                       #  55    0xafb8b  1      OPC=nop            
  nop                       #  56    0xafb8c  1      OPC=nop            
  nop                       #  57    0xafb8d  1      OPC=nop            
  nop                       #  58    0xafb8e  1      OPC=nop            
  nop                       #  59    0xafb8f  1      OPC=nop            
  nop                       #  60    0xafb90  1      OPC=nop            
  nop                       #  61    0xafb91  1      OPC=nop            
  nop                       #  62    0xafb92  1      OPC=nop            
  nop                       #  63    0xafb93  1      OPC=nop            
  nop                       #  64    0xafb94  1      OPC=nop            
  nop                       #  65    0xafb95  1      OPC=nop            
  nop                       #  66    0xafb96  1      OPC=nop            
  nop                       #  67    0xafb97  1      OPC=nop            
  nop                       #  68    0xafb98  1      OPC=nop            
  nop                       #  69    0xafb99  1      OPC=nop            
  nop                       #  70    0xafb9a  1      OPC=nop            
  nop                       #  71    0xafb9b  1      OPC=nop            
  nop                       #  72    0xafb9c  1      OPC=nop            
  nop                       #  73    0xafb9d  1      OPC=nop            
  nop                       #  74    0xafb9e  1      OPC=nop            
  nop                       #  75    0xafb9f  1      OPC=nop            
                                                                        
.size _ZNSs6insertEjPKc, .-_ZNSs6insertEjPKc

