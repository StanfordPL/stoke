  .text
  .globl _ZNKSs17find_first_not_ofEPKcj
  .type _ZNKSs17find_first_not_ofEPKcj, @function

#! file-offset 0xebca0
#! rip-offset  0xabca0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode             
._ZNKSs17find_first_not_ofEPKcj:         #        0xabca0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                 #  1     0xabca0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                       #  2     0xabca5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                 #  3     0xabca8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                  #  4     0xabcad  5      OPC=movq_m64_r64   
  movl %edi, %ebx                        #  5     0xabcb2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                       #  6     0xabcb4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                        #  7     0xabcb7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                       #  8     0xabcba  3      OPC=movl_r32_r32   
  movl %r12d, %edi                       #  9     0xabcbd  3      OPC=movl_r32_r32   
  nop                                    #  10    0xabcc0  1      OPC=nop            
  nop                                    #  11    0xabcc1  1      OPC=nop            
  nop                                    #  12    0xabcc2  1      OPC=nop            
  nop                                    #  13    0xabcc3  1      OPC=nop            
  nop                                    #  14    0xabcc4  1      OPC=nop            
  nop                                    #  15    0xabcc5  1      OPC=nop            
  nop                                    #  16    0xabcc6  1      OPC=nop            
  nop                                    #  17    0xabcc7  1      OPC=nop            
  nop                                    #  18    0xabcc8  1      OPC=nop            
  nop                                    #  19    0xabcc9  1      OPC=nop            
  nop                                    #  20    0xabcca  1      OPC=nop            
  nop                                    #  21    0xabccb  1      OPC=nop            
  nop                                    #  22    0xabccc  1      OPC=nop            
  nop                                    #  23    0xabccd  1      OPC=nop            
  nop                                    #  24    0xabcce  1      OPC=nop            
  nop                                    #  25    0xabccf  1      OPC=nop            
  nop                                    #  26    0xabcd0  1      OPC=nop            
  nop                                    #  27    0xabcd1  1      OPC=nop            
  nop                                    #  28    0xabcd2  1      OPC=nop            
  nop                                    #  29    0xabcd3  1      OPC=nop            
  nop                                    #  30    0xabcd4  1      OPC=nop            
  nop                                    #  31    0xabcd5  1      OPC=nop            
  nop                                    #  32    0xabcd6  1      OPC=nop            
  nop                                    #  33    0xabcd7  1      OPC=nop            
  nop                                    #  34    0xabcd8  1      OPC=nop            
  nop                                    #  35    0xabcd9  1      OPC=nop            
  nop                                    #  36    0xabcda  1      OPC=nop            
  callq .strlen                          #  37    0xabcdb  5      OPC=callq_label    
  movl %r13d, %edx                       #  38    0xabce0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                       #  39    0xabce3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                        #  40    0xabce6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                   #  41    0xabce8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                      #  42    0xabced  4      OPC=movq_r64_m64   
  movl %eax, %ecx                        #  43    0xabcf1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                  #  44    0xabcf3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                       #  45    0xabcf8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                        #  46    0xabcfb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                         #  47    0xabcfe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs17find_first_not_ofEPKcjj  #  48    0xabd00  5      OPC=jmpq_label_1   
  nop                                    #  49    0xabd05  1      OPC=nop            
  nop                                    #  50    0xabd06  1      OPC=nop            
  nop                                    #  51    0xabd07  1      OPC=nop            
  nop                                    #  52    0xabd08  1      OPC=nop            
  nop                                    #  53    0xabd09  1      OPC=nop            
  nop                                    #  54    0xabd0a  1      OPC=nop            
  nop                                    #  55    0xabd0b  1      OPC=nop            
  nop                                    #  56    0xabd0c  1      OPC=nop            
  nop                                    #  57    0xabd0d  1      OPC=nop            
  nop                                    #  58    0xabd0e  1      OPC=nop            
  nop                                    #  59    0xabd0f  1      OPC=nop            
  nop                                    #  60    0xabd10  1      OPC=nop            
  nop                                    #  61    0xabd11  1      OPC=nop            
  nop                                    #  62    0xabd12  1      OPC=nop            
  nop                                    #  63    0xabd13  1      OPC=nop            
  nop                                    #  64    0xabd14  1      OPC=nop            
  nop                                    #  65    0xabd15  1      OPC=nop            
  nop                                    #  66    0xabd16  1      OPC=nop            
  nop                                    #  67    0xabd17  1      OPC=nop            
  nop                                    #  68    0xabd18  1      OPC=nop            
  nop                                    #  69    0xabd19  1      OPC=nop            
  nop                                    #  70    0xabd1a  1      OPC=nop            
  nop                                    #  71    0xabd1b  1      OPC=nop            
  nop                                    #  72    0xabd1c  1      OPC=nop            
  nop                                    #  73    0xabd1d  1      OPC=nop            
  nop                                    #  74    0xabd1e  1      OPC=nop            
  nop                                    #  75    0xabd1f  1      OPC=nop            
                                                                                     
.size _ZNKSs17find_first_not_ofEPKcj, .-_ZNKSs17find_first_not_ofEPKcj

