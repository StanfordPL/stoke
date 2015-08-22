  .text
  .globl _ZNKSs5rfindEPKcj
  .type _ZNKSs5rfindEPKcj, @function

#! file-offset 0xec240
#! rip-offset  0xac240
#! capacity    128 bytes

# Text                      #  Line  RIP      Bytes  Opcode             
._ZNKSs5rfindEPKcj:         #        0xac240  0      OPC=<label>        
  movq %r12, -0x10(%rsp)    #  1     0xac240  5      OPC=movq_m64_r64   
  movl %esi, %r12d          #  2     0xac245  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)    #  3     0xac248  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)     #  4     0xac24d  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  5     0xac252  2      OPC=movl_r32_r32   
  subl $0x18, %esp          #  6     0xac254  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0xac257  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0xac25a  3      OPC=movl_r32_r32   
  movl %r12d, %edi          #  9     0xac25d  3      OPC=movl_r32_r32   
  nop                       #  10    0xac260  1      OPC=nop            
  nop                       #  11    0xac261  1      OPC=nop            
  nop                       #  12    0xac262  1      OPC=nop            
  nop                       #  13    0xac263  1      OPC=nop            
  nop                       #  14    0xac264  1      OPC=nop            
  nop                       #  15    0xac265  1      OPC=nop            
  nop                       #  16    0xac266  1      OPC=nop            
  nop                       #  17    0xac267  1      OPC=nop            
  nop                       #  18    0xac268  1      OPC=nop            
  nop                       #  19    0xac269  1      OPC=nop            
  nop                       #  20    0xac26a  1      OPC=nop            
  nop                       #  21    0xac26b  1      OPC=nop            
  nop                       #  22    0xac26c  1      OPC=nop            
  nop                       #  23    0xac26d  1      OPC=nop            
  nop                       #  24    0xac26e  1      OPC=nop            
  nop                       #  25    0xac26f  1      OPC=nop            
  nop                       #  26    0xac270  1      OPC=nop            
  nop                       #  27    0xac271  1      OPC=nop            
  nop                       #  28    0xac272  1      OPC=nop            
  nop                       #  29    0xac273  1      OPC=nop            
  nop                       #  30    0xac274  1      OPC=nop            
  nop                       #  31    0xac275  1      OPC=nop            
  nop                       #  32    0xac276  1      OPC=nop            
  nop                       #  33    0xac277  1      OPC=nop            
  nop                       #  34    0xac278  1      OPC=nop            
  nop                       #  35    0xac279  1      OPC=nop            
  nop                       #  36    0xac27a  1      OPC=nop            
  callq .strlen             #  37    0xac27b  5      OPC=callq_label    
  movl %r13d, %edx          #  38    0xac280  3      OPC=movl_r32_r32   
  movl %r12d, %esi          #  39    0xac283  3      OPC=movl_r32_r32   
  movl %ebx, %edi           #  40    0xac286  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  41    0xac288  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  42    0xac28d  4      OPC=movq_r64_m64   
  movl %eax, %ecx           #  43    0xac291  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13     #  44    0xac293  5      OPC=movq_r64_m64   
  addl $0x18, %esp          #  45    0xac298  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  46    0xac29b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax            #  47    0xac29e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs5rfindEPKcjj  #  48    0xac2a0  5      OPC=jmpq_label_1   
  nop                       #  49    0xac2a5  1      OPC=nop            
  nop                       #  50    0xac2a6  1      OPC=nop            
  nop                       #  51    0xac2a7  1      OPC=nop            
  nop                       #  52    0xac2a8  1      OPC=nop            
  nop                       #  53    0xac2a9  1      OPC=nop            
  nop                       #  54    0xac2aa  1      OPC=nop            
  nop                       #  55    0xac2ab  1      OPC=nop            
  nop                       #  56    0xac2ac  1      OPC=nop            
  nop                       #  57    0xac2ad  1      OPC=nop            
  nop                       #  58    0xac2ae  1      OPC=nop            
  nop                       #  59    0xac2af  1      OPC=nop            
  nop                       #  60    0xac2b0  1      OPC=nop            
  nop                       #  61    0xac2b1  1      OPC=nop            
  nop                       #  62    0xac2b2  1      OPC=nop            
  nop                       #  63    0xac2b3  1      OPC=nop            
  nop                       #  64    0xac2b4  1      OPC=nop            
  nop                       #  65    0xac2b5  1      OPC=nop            
  nop                       #  66    0xac2b6  1      OPC=nop            
  nop                       #  67    0xac2b7  1      OPC=nop            
  nop                       #  68    0xac2b8  1      OPC=nop            
  nop                       #  69    0xac2b9  1      OPC=nop            
  nop                       #  70    0xac2ba  1      OPC=nop            
  nop                       #  71    0xac2bb  1      OPC=nop            
  nop                       #  72    0xac2bc  1      OPC=nop            
  nop                       #  73    0xac2bd  1      OPC=nop            
  nop                       #  74    0xac2be  1      OPC=nop            
  nop                       #  75    0xac2bf  1      OPC=nop            
                                                                        
.size _ZNKSs5rfindEPKcj, .-_ZNKSs5rfindEPKcj

