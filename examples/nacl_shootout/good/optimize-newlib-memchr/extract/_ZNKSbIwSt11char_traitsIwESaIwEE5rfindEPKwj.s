  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj, @function

#! file-offset 0x1167e0
#! rip-offset  0xd67e0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj:         #        0xd67e0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                              #  1     0xd67e0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                    #  2     0xd67e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                              #  3     0xd67e8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                               #  4     0xd67ed  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                     #  5     0xd67f2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                    #  6     0xd67f4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                     #  7     0xd67f7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                    #  8     0xd67fa  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                    #  9     0xd67fd  3      OPC=movl_r32_r32   
  nop                                                 #  10    0xd6800  1      OPC=nop            
  nop                                                 #  11    0xd6801  1      OPC=nop            
  nop                                                 #  12    0xd6802  1      OPC=nop            
  nop                                                 #  13    0xd6803  1      OPC=nop            
  nop                                                 #  14    0xd6804  1      OPC=nop            
  nop                                                 #  15    0xd6805  1      OPC=nop            
  nop                                                 #  16    0xd6806  1      OPC=nop            
  nop                                                 #  17    0xd6807  1      OPC=nop            
  nop                                                 #  18    0xd6808  1      OPC=nop            
  nop                                                 #  19    0xd6809  1      OPC=nop            
  nop                                                 #  20    0xd680a  1      OPC=nop            
  nop                                                 #  21    0xd680b  1      OPC=nop            
  nop                                                 #  22    0xd680c  1      OPC=nop            
  nop                                                 #  23    0xd680d  1      OPC=nop            
  nop                                                 #  24    0xd680e  1      OPC=nop            
  nop                                                 #  25    0xd680f  1      OPC=nop            
  nop                                                 #  26    0xd6810  1      OPC=nop            
  nop                                                 #  27    0xd6811  1      OPC=nop            
  nop                                                 #  28    0xd6812  1      OPC=nop            
  nop                                                 #  29    0xd6813  1      OPC=nop            
  nop                                                 #  30    0xd6814  1      OPC=nop            
  nop                                                 #  31    0xd6815  1      OPC=nop            
  nop                                                 #  32    0xd6816  1      OPC=nop            
  nop                                                 #  33    0xd6817  1      OPC=nop            
  nop                                                 #  34    0xd6818  1      OPC=nop            
  nop                                                 #  35    0xd6819  1      OPC=nop            
  nop                                                 #  36    0xd681a  1      OPC=nop            
  callq .wcslen                                       #  37    0xd681b  5      OPC=callq_label    
  movl %r13d, %edx                                    #  38    0xd6820  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                    #  39    0xd6823  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                     #  40    0xd6826  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                #  41    0xd6828  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                   #  42    0xd682d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                     #  43    0xd6831  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                               #  44    0xd6833  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                    #  45    0xd6838  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                     #  46    0xd683b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                      #  47    0xd683e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwjj  #  48    0xd6840  5      OPC=jmpq_label_1   
  nop                                                 #  49    0xd6845  1      OPC=nop            
  nop                                                 #  50    0xd6846  1      OPC=nop            
  nop                                                 #  51    0xd6847  1      OPC=nop            
  nop                                                 #  52    0xd6848  1      OPC=nop            
  nop                                                 #  53    0xd6849  1      OPC=nop            
  nop                                                 #  54    0xd684a  1      OPC=nop            
  nop                                                 #  55    0xd684b  1      OPC=nop            
  nop                                                 #  56    0xd684c  1      OPC=nop            
  nop                                                 #  57    0xd684d  1      OPC=nop            
  nop                                                 #  58    0xd684e  1      OPC=nop            
  nop                                                 #  59    0xd684f  1      OPC=nop            
  nop                                                 #  60    0xd6850  1      OPC=nop            
  nop                                                 #  61    0xd6851  1      OPC=nop            
  nop                                                 #  62    0xd6852  1      OPC=nop            
  nop                                                 #  63    0xd6853  1      OPC=nop            
  nop                                                 #  64    0xd6854  1      OPC=nop            
  nop                                                 #  65    0xd6855  1      OPC=nop            
  nop                                                 #  66    0xd6856  1      OPC=nop            
  nop                                                 #  67    0xd6857  1      OPC=nop            
  nop                                                 #  68    0xd6858  1      OPC=nop            
  nop                                                 #  69    0xd6859  1      OPC=nop            
  nop                                                 #  70    0xd685a  1      OPC=nop            
  nop                                                 #  71    0xd685b  1      OPC=nop            
  nop                                                 #  72    0xd685c  1      OPC=nop            
  nop                                                 #  73    0xd685d  1      OPC=nop            
  nop                                                 #  74    0xd685e  1      OPC=nop            
  nop                                                 #  75    0xd685f  1      OPC=nop            
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj

