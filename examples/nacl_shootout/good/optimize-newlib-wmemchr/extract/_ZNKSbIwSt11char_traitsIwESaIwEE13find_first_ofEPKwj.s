  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj, @function

#! file-offset 0x1168e0
#! rip-offset  0xd68e0
#! capacity    128 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj:         #        0xd68e0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                       #  1     0xd68e0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                             #  2     0xd68e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                       #  3     0xd68e8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                        #  4     0xd68ed  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                              #  5     0xd68f2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                             #  6     0xd68f4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                              #  7     0xd68f7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                             #  8     0xd68fa  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                             #  9     0xd68fd  3      OPC=movl_r32_r32   
  nop                                                          #  10    0xd6900  1      OPC=nop            
  nop                                                          #  11    0xd6901  1      OPC=nop            
  nop                                                          #  12    0xd6902  1      OPC=nop            
  nop                                                          #  13    0xd6903  1      OPC=nop            
  nop                                                          #  14    0xd6904  1      OPC=nop            
  nop                                                          #  15    0xd6905  1      OPC=nop            
  nop                                                          #  16    0xd6906  1      OPC=nop            
  nop                                                          #  17    0xd6907  1      OPC=nop            
  nop                                                          #  18    0xd6908  1      OPC=nop            
  nop                                                          #  19    0xd6909  1      OPC=nop            
  nop                                                          #  20    0xd690a  1      OPC=nop            
  nop                                                          #  21    0xd690b  1      OPC=nop            
  nop                                                          #  22    0xd690c  1      OPC=nop            
  nop                                                          #  23    0xd690d  1      OPC=nop            
  nop                                                          #  24    0xd690e  1      OPC=nop            
  nop                                                          #  25    0xd690f  1      OPC=nop            
  nop                                                          #  26    0xd6910  1      OPC=nop            
  nop                                                          #  27    0xd6911  1      OPC=nop            
  nop                                                          #  28    0xd6912  1      OPC=nop            
  nop                                                          #  29    0xd6913  1      OPC=nop            
  nop                                                          #  30    0xd6914  1      OPC=nop            
  nop                                                          #  31    0xd6915  1      OPC=nop            
  nop                                                          #  32    0xd6916  1      OPC=nop            
  nop                                                          #  33    0xd6917  1      OPC=nop            
  nop                                                          #  34    0xd6918  1      OPC=nop            
  nop                                                          #  35    0xd6919  1      OPC=nop            
  nop                                                          #  36    0xd691a  1      OPC=nop            
  callq .wcslen                                                #  37    0xd691b  5      OPC=callq_label    
  movl %r13d, %edx                                             #  38    0xd6920  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                             #  39    0xd6923  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                              #  40    0xd6926  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                         #  41    0xd6928  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                            #  42    0xd692d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                              #  43    0xd6931  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                        #  44    0xd6933  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                             #  45    0xd6938  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                              #  46    0xd693b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                               #  47    0xd693e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwjj  #  48    0xd6940  5      OPC=jmpq_label_1   
  nop                                                          #  49    0xd6945  1      OPC=nop            
  nop                                                          #  50    0xd6946  1      OPC=nop            
  nop                                                          #  51    0xd6947  1      OPC=nop            
  nop                                                          #  52    0xd6948  1      OPC=nop            
  nop                                                          #  53    0xd6949  1      OPC=nop            
  nop                                                          #  54    0xd694a  1      OPC=nop            
  nop                                                          #  55    0xd694b  1      OPC=nop            
  nop                                                          #  56    0xd694c  1      OPC=nop            
  nop                                                          #  57    0xd694d  1      OPC=nop            
  nop                                                          #  58    0xd694e  1      OPC=nop            
  nop                                                          #  59    0xd694f  1      OPC=nop            
  nop                                                          #  60    0xd6950  1      OPC=nop            
  nop                                                          #  61    0xd6951  1      OPC=nop            
  nop                                                          #  62    0xd6952  1      OPC=nop            
  nop                                                          #  63    0xd6953  1      OPC=nop            
  nop                                                          #  64    0xd6954  1      OPC=nop            
  nop                                                          #  65    0xd6955  1      OPC=nop            
  nop                                                          #  66    0xd6956  1      OPC=nop            
  nop                                                          #  67    0xd6957  1      OPC=nop            
  nop                                                          #  68    0xd6958  1      OPC=nop            
  nop                                                          #  69    0xd6959  1      OPC=nop            
  nop                                                          #  70    0xd695a  1      OPC=nop            
  nop                                                          #  71    0xd695b  1      OPC=nop            
  nop                                                          #  72    0xd695c  1      OPC=nop            
  nop                                                          #  73    0xd695d  1      OPC=nop            
  nop                                                          #  74    0xd695e  1      OPC=nop            
  nop                                                          #  75    0xd695f  1      OPC=nop            
                                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj

