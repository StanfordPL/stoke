  .text
  .globl _ZNKSs16find_last_not_ofEPKcj
  .type _ZNKSs16find_last_not_ofEPKcj, @function

#! file-offset 0xebc20
#! rip-offset  0xabc20
#! capacity    128 bytes

# Text                                  #  Line  RIP      Bytes  Opcode             
._ZNKSs16find_last_not_ofEPKcj:         #        0xabc20  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                #  1     0xabc20  5      OPC=movq_m64_r64   
  movl %esi, %r12d                      #  2     0xabc25  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                #  3     0xabc28  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                 #  4     0xabc2d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                       #  5     0xabc32  2      OPC=movl_r32_r32   
  subl $0x18, %esp                      #  6     0xabc34  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                       #  7     0xabc37  3      OPC=addq_r64_r64   
  movl %edx, %r13d                      #  8     0xabc3a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                      #  9     0xabc3d  3      OPC=movl_r32_r32   
  nop                                   #  10    0xabc40  1      OPC=nop            
  nop                                   #  11    0xabc41  1      OPC=nop            
  nop                                   #  12    0xabc42  1      OPC=nop            
  nop                                   #  13    0xabc43  1      OPC=nop            
  nop                                   #  14    0xabc44  1      OPC=nop            
  nop                                   #  15    0xabc45  1      OPC=nop            
  nop                                   #  16    0xabc46  1      OPC=nop            
  nop                                   #  17    0xabc47  1      OPC=nop            
  nop                                   #  18    0xabc48  1      OPC=nop            
  nop                                   #  19    0xabc49  1      OPC=nop            
  nop                                   #  20    0xabc4a  1      OPC=nop            
  nop                                   #  21    0xabc4b  1      OPC=nop            
  nop                                   #  22    0xabc4c  1      OPC=nop            
  nop                                   #  23    0xabc4d  1      OPC=nop            
  nop                                   #  24    0xabc4e  1      OPC=nop            
  nop                                   #  25    0xabc4f  1      OPC=nop            
  nop                                   #  26    0xabc50  1      OPC=nop            
  nop                                   #  27    0xabc51  1      OPC=nop            
  nop                                   #  28    0xabc52  1      OPC=nop            
  nop                                   #  29    0xabc53  1      OPC=nop            
  nop                                   #  30    0xabc54  1      OPC=nop            
  nop                                   #  31    0xabc55  1      OPC=nop            
  nop                                   #  32    0xabc56  1      OPC=nop            
  nop                                   #  33    0xabc57  1      OPC=nop            
  nop                                   #  34    0xabc58  1      OPC=nop            
  nop                                   #  35    0xabc59  1      OPC=nop            
  nop                                   #  36    0xabc5a  1      OPC=nop            
  callq .strlen                         #  37    0xabc5b  5      OPC=callq_label    
  movl %r13d, %edx                      #  38    0xabc60  3      OPC=movl_r32_r32   
  movl %r12d, %esi                      #  39    0xabc63  3      OPC=movl_r32_r32   
  movl %ebx, %edi                       #  40    0xabc66  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                  #  41    0xabc68  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                     #  42    0xabc6d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                       #  43    0xabc71  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                 #  44    0xabc73  5      OPC=movq_r64_m64   
  addl $0x18, %esp                      #  45    0xabc78  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                       #  46    0xabc7b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                        #  47    0xabc7e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs16find_last_not_ofEPKcjj  #  48    0xabc80  5      OPC=jmpq_label_1   
  nop                                   #  49    0xabc85  1      OPC=nop            
  nop                                   #  50    0xabc86  1      OPC=nop            
  nop                                   #  51    0xabc87  1      OPC=nop            
  nop                                   #  52    0xabc88  1      OPC=nop            
  nop                                   #  53    0xabc89  1      OPC=nop            
  nop                                   #  54    0xabc8a  1      OPC=nop            
  nop                                   #  55    0xabc8b  1      OPC=nop            
  nop                                   #  56    0xabc8c  1      OPC=nop            
  nop                                   #  57    0xabc8d  1      OPC=nop            
  nop                                   #  58    0xabc8e  1      OPC=nop            
  nop                                   #  59    0xabc8f  1      OPC=nop            
  nop                                   #  60    0xabc90  1      OPC=nop            
  nop                                   #  61    0xabc91  1      OPC=nop            
  nop                                   #  62    0xabc92  1      OPC=nop            
  nop                                   #  63    0xabc93  1      OPC=nop            
  nop                                   #  64    0xabc94  1      OPC=nop            
  nop                                   #  65    0xabc95  1      OPC=nop            
  nop                                   #  66    0xabc96  1      OPC=nop            
  nop                                   #  67    0xabc97  1      OPC=nop            
  nop                                   #  68    0xabc98  1      OPC=nop            
  nop                                   #  69    0xabc99  1      OPC=nop            
  nop                                   #  70    0xabc9a  1      OPC=nop            
  nop                                   #  71    0xabc9b  1      OPC=nop            
  nop                                   #  72    0xabc9c  1      OPC=nop            
  nop                                   #  73    0xabc9d  1      OPC=nop            
  nop                                   #  74    0xabc9e  1      OPC=nop            
  nop                                   #  75    0xabc9f  1      OPC=nop            
                                                                                    
.size _ZNKSs16find_last_not_ofEPKcj, .-_ZNKSs16find_last_not_ofEPKcj

