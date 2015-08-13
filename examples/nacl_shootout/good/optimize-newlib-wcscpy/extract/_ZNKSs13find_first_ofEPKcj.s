  .text
  .globl _ZNKSs13find_first_ofEPKcj
  .type _ZNKSs13find_first_ofEPKcj, @function

#! file-offset 0xebaa0
#! rip-offset  0xabaa0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode             
._ZNKSs13find_first_ofEPKcj:         #        0xabaa0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)             #  1     0xabaa0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                   #  2     0xabaa5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)             #  3     0xabaa8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)              #  4     0xabaad  5      OPC=movq_m64_r64   
  movl %edi, %ebx                    #  5     0xabab2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                   #  6     0xabab4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                    #  7     0xabab7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                   #  8     0xababa  3      OPC=movl_r32_r32   
  movl %r12d, %edi                   #  9     0xababd  3      OPC=movl_r32_r32   
  nop                                #  10    0xabac0  1      OPC=nop            
  nop                                #  11    0xabac1  1      OPC=nop            
  nop                                #  12    0xabac2  1      OPC=nop            
  nop                                #  13    0xabac3  1      OPC=nop            
  nop                                #  14    0xabac4  1      OPC=nop            
  nop                                #  15    0xabac5  1      OPC=nop            
  nop                                #  16    0xabac6  1      OPC=nop            
  nop                                #  17    0xabac7  1      OPC=nop            
  nop                                #  18    0xabac8  1      OPC=nop            
  nop                                #  19    0xabac9  1      OPC=nop            
  nop                                #  20    0xabaca  1      OPC=nop            
  nop                                #  21    0xabacb  1      OPC=nop            
  nop                                #  22    0xabacc  1      OPC=nop            
  nop                                #  23    0xabacd  1      OPC=nop            
  nop                                #  24    0xabace  1      OPC=nop            
  nop                                #  25    0xabacf  1      OPC=nop            
  nop                                #  26    0xabad0  1      OPC=nop            
  nop                                #  27    0xabad1  1      OPC=nop            
  nop                                #  28    0xabad2  1      OPC=nop            
  nop                                #  29    0xabad3  1      OPC=nop            
  nop                                #  30    0xabad4  1      OPC=nop            
  nop                                #  31    0xabad5  1      OPC=nop            
  nop                                #  32    0xabad6  1      OPC=nop            
  nop                                #  33    0xabad7  1      OPC=nop            
  nop                                #  34    0xabad8  1      OPC=nop            
  nop                                #  35    0xabad9  1      OPC=nop            
  nop                                #  36    0xabada  1      OPC=nop            
  callq .strlen                      #  37    0xabadb  5      OPC=callq_label    
  movl %r13d, %edx                   #  38    0xabae0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                   #  39    0xabae3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                    #  40    0xabae6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12               #  41    0xabae8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                  #  42    0xabaed  4      OPC=movq_r64_m64   
  movl %eax, %ecx                    #  43    0xabaf1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13              #  44    0xabaf3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                   #  45    0xabaf8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                    #  46    0xabafb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                     #  47    0xabafe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs13find_first_ofEPKcjj  #  48    0xabb00  5      OPC=jmpq_label_1   
  nop                                #  49    0xabb05  1      OPC=nop            
  nop                                #  50    0xabb06  1      OPC=nop            
  nop                                #  51    0xabb07  1      OPC=nop            
  nop                                #  52    0xabb08  1      OPC=nop            
  nop                                #  53    0xabb09  1      OPC=nop            
  nop                                #  54    0xabb0a  1      OPC=nop            
  nop                                #  55    0xabb0b  1      OPC=nop            
  nop                                #  56    0xabb0c  1      OPC=nop            
  nop                                #  57    0xabb0d  1      OPC=nop            
  nop                                #  58    0xabb0e  1      OPC=nop            
  nop                                #  59    0xabb0f  1      OPC=nop            
  nop                                #  60    0xabb10  1      OPC=nop            
  nop                                #  61    0xabb11  1      OPC=nop            
  nop                                #  62    0xabb12  1      OPC=nop            
  nop                                #  63    0xabb13  1      OPC=nop            
  nop                                #  64    0xabb14  1      OPC=nop            
  nop                                #  65    0xabb15  1      OPC=nop            
  nop                                #  66    0xabb16  1      OPC=nop            
  nop                                #  67    0xabb17  1      OPC=nop            
  nop                                #  68    0xabb18  1      OPC=nop            
  nop                                #  69    0xabb19  1      OPC=nop            
  nop                                #  70    0xabb1a  1      OPC=nop            
  nop                                #  71    0xabb1b  1      OPC=nop            
  nop                                #  72    0xabb1c  1      OPC=nop            
  nop                                #  73    0xabb1d  1      OPC=nop            
  nop                                #  74    0xabb1e  1      OPC=nop            
  nop                                #  75    0xabb1f  1      OPC=nop            
                                                                                 
.size _ZNKSs13find_first_ofEPKcj, .-_ZNKSs13find_first_ofEPKcj

