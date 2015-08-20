  .text
  .globl _ZNKSs5rfindEPKcj
  .type _ZNKSs5rfindEPKcj, @function

#! file-offset 0xebb20
#! rip-offset  0xabb20
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode             
._ZNKSs5rfindEPKcj:         #        0xabb20  0      OPC=<label>        
  movq %r12, -0x10(%rsp)    #  1     0xabb20  5      OPC=movq_m64_r64   
  movl %esi, %r12d          #  2     0xabb25  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)    #  3     0xabb28  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)     #  4     0xabb2d  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  5     0xabb32  2      OPC=movl_r32_r32   
  subl $0x18, %esp          #  6     0xabb34  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0xabb37  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0xabb3a  3      OPC=movl_r32_r32   
  movl %r12d, %edi          #  9     0xabb3d  3      OPC=movl_r32_r32   
  nop                       #  10    0xabb40  1      OPC=nop            
  nop                       #  11    0xabb41  1      OPC=nop            
  nop                       #  12    0xabb42  1      OPC=nop            
  nop                       #  13    0xabb43  1      OPC=nop            
  nop                       #  14    0xabb44  1      OPC=nop            
  nop                       #  15    0xabb45  1      OPC=nop            
  nop                       #  16    0xabb46  1      OPC=nop            
  nop                       #  17    0xabb47  1      OPC=nop            
  nop                       #  18    0xabb48  1      OPC=nop            
  nop                       #  19    0xabb49  1      OPC=nop            
  nop                       #  20    0xabb4a  1      OPC=nop            
  nop                       #  21    0xabb4b  1      OPC=nop            
  nop                       #  22    0xabb4c  1      OPC=nop            
  nop                       #  23    0xabb4d  1      OPC=nop            
  nop                       #  24    0xabb4e  1      OPC=nop            
  nop                       #  25    0xabb4f  1      OPC=nop            
  nop                       #  26    0xabb50  1      OPC=nop            
  nop                       #  27    0xabb51  1      OPC=nop            
  nop                       #  28    0xabb52  1      OPC=nop            
  nop                       #  29    0xabb53  1      OPC=nop            
  nop                       #  30    0xabb54  1      OPC=nop            
  nop                       #  31    0xabb55  1      OPC=nop            
  nop                       #  32    0xabb56  1      OPC=nop            
  nop                       #  33    0xabb57  1      OPC=nop            
  nop                       #  34    0xabb58  1      OPC=nop            
  nop                       #  35    0xabb59  1      OPC=nop            
  nop                       #  36    0xabb5a  1      OPC=nop            
  callq .strlen             #  37    0xabb5b  5      OPC=callq_label    
  movl %r13d, %edx          #  38    0xabb60  3      OPC=movl_r32_r32   
  movl %r12d, %esi          #  39    0xabb63  3      OPC=movl_r32_r32   
  movl %ebx, %edi           #  40    0xabb66  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  41    0xabb68  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  42    0xabb6d  4      OPC=movq_r64_m64   
  movl %eax, %ecx           #  43    0xabb71  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13     #  44    0xabb73  5      OPC=movq_r64_m64   
  addl $0x18, %esp          #  45    0xabb78  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  46    0xabb7b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax            #  47    0xabb7e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs5rfindEPKcjj  #  48    0xabb80  5      OPC=jmpq_label_1   
  nop                       #  49    0xabb85  1      OPC=nop            
  nop                       #  50    0xabb86  1      OPC=nop            
  nop                       #  51    0xabb87  1      OPC=nop            
  nop                       #  52    0xabb88  1      OPC=nop            
  nop                       #  53    0xabb89  1      OPC=nop            
  nop                       #  54    0xabb8a  1      OPC=nop            
  nop                       #  55    0xabb8b  1      OPC=nop            
  nop                       #  56    0xabb8c  1      OPC=nop            
  nop                       #  57    0xabb8d  1      OPC=nop            
  nop                       #  58    0xabb8e  1      OPC=nop            
  nop                       #  59    0xabb8f  1      OPC=nop            
  nop                       #  60    0xabb90  1      OPC=nop            
  nop                       #  61    0xabb91  1      OPC=nop            
  nop                       #  62    0xabb92  1      OPC=nop            
  nop                       #  63    0xabb93  1      OPC=nop            
  nop                       #  64    0xabb94  1      OPC=nop            
  nop                       #  65    0xabb95  1      OPC=nop            
  nop                       #  66    0xabb96  1      OPC=nop            
  nop                       #  67    0xabb97  1      OPC=nop            
  nop                       #  68    0xabb98  1      OPC=nop            
  nop                       #  69    0xabb99  1      OPC=nop            
  nop                       #  70    0xabb9a  1      OPC=nop            
  nop                       #  71    0xabb9b  1      OPC=nop            
  nop                       #  72    0xabb9c  1      OPC=nop            
  nop                       #  73    0xabb9d  1      OPC=nop            
  nop                       #  74    0xabb9e  1      OPC=nop            
  nop                       #  75    0xabb9f  1      OPC=nop            
                                                                        
.size _ZNKSs5rfindEPKcj, .-_ZNKSs5rfindEPKcj

