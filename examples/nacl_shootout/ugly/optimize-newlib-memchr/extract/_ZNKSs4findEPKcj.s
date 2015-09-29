  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0xec2c0
#! rip-offset  0xac2c0
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNKSs4findEPKcj:         #        0xac2c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)   #  1     0xac2c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xac2c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)   #  3     0xac2c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)    #  4     0xac2cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx          #  5     0xac2d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp         #  6     0xac2d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  7     0xac2d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d         #  8     0xac2da  3      OPC=movl_r32_r32   
  movl %r12d, %edi         #  9     0xac2dd  3      OPC=movl_r32_r32   
  nop                      #  10    0xac2e0  1      OPC=nop            
  nop                      #  11    0xac2e1  1      OPC=nop            
  nop                      #  12    0xac2e2  1      OPC=nop            
  nop                      #  13    0xac2e3  1      OPC=nop            
  nop                      #  14    0xac2e4  1      OPC=nop            
  nop                      #  15    0xac2e5  1      OPC=nop            
  nop                      #  16    0xac2e6  1      OPC=nop            
  nop                      #  17    0xac2e7  1      OPC=nop            
  nop                      #  18    0xac2e8  1      OPC=nop            
  nop                      #  19    0xac2e9  1      OPC=nop            
  nop                      #  20    0xac2ea  1      OPC=nop            
  nop                      #  21    0xac2eb  1      OPC=nop            
  nop                      #  22    0xac2ec  1      OPC=nop            
  nop                      #  23    0xac2ed  1      OPC=nop            
  nop                      #  24    0xac2ee  1      OPC=nop            
  nop                      #  25    0xac2ef  1      OPC=nop            
  nop                      #  26    0xac2f0  1      OPC=nop            
  nop                      #  27    0xac2f1  1      OPC=nop            
  nop                      #  28    0xac2f2  1      OPC=nop            
  nop                      #  29    0xac2f3  1      OPC=nop            
  nop                      #  30    0xac2f4  1      OPC=nop            
  nop                      #  31    0xac2f5  1      OPC=nop            
  nop                      #  32    0xac2f6  1      OPC=nop            
  nop                      #  33    0xac2f7  1      OPC=nop            
  nop                      #  34    0xac2f8  1      OPC=nop            
  nop                      #  35    0xac2f9  1      OPC=nop            
  nop                      #  36    0xac2fa  1      OPC=nop            
  callq .strlen            #  37    0xac2fb  5      OPC=callq_label    
  movl %r13d, %edx         #  38    0xac300  3      OPC=movl_r32_r32   
  movl %r12d, %esi         #  39    0xac303  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  40    0xac306  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12     #  41    0xac308  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx        #  42    0xac30d  4      OPC=movq_r64_m64   
  movl %eax, %ecx          #  43    0xac311  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13    #  44    0xac313  5      OPC=movq_r64_m64   
  addl $0x18, %esp         #  45    0xac318  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  46    0xac31b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax           #  47    0xac31e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs4findEPKcjj  #  48    0xac320  5      OPC=jmpq_label_1   
  nop                      #  49    0xac325  1      OPC=nop            
  nop                      #  50    0xac326  1      OPC=nop            
  nop                      #  51    0xac327  1      OPC=nop            
  nop                      #  52    0xac328  1      OPC=nop            
  nop                      #  53    0xac329  1      OPC=nop            
  nop                      #  54    0xac32a  1      OPC=nop            
  nop                      #  55    0xac32b  1      OPC=nop            
  nop                      #  56    0xac32c  1      OPC=nop            
  nop                      #  57    0xac32d  1      OPC=nop            
  nop                      #  58    0xac32e  1      OPC=nop            
  nop                      #  59    0xac32f  1      OPC=nop            
  nop                      #  60    0xac330  1      OPC=nop            
  nop                      #  61    0xac331  1      OPC=nop            
  nop                      #  62    0xac332  1      OPC=nop            
  nop                      #  63    0xac333  1      OPC=nop            
  nop                      #  64    0xac334  1      OPC=nop            
  nop                      #  65    0xac335  1      OPC=nop            
  nop                      #  66    0xac336  1      OPC=nop            
  nop                      #  67    0xac337  1      OPC=nop            
  nop                      #  68    0xac338  1      OPC=nop            
  nop                      #  69    0xac339  1      OPC=nop            
  nop                      #  70    0xac33a  1      OPC=nop            
  nop                      #  71    0xac33b  1      OPC=nop            
  nop                      #  72    0xac33c  1      OPC=nop            
  nop                      #  73    0xac33d  1      OPC=nop            
  nop                      #  74    0xac33e  1      OPC=nop            
  nop                      #  75    0xac33f  1      OPC=nop            
                                                                       
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj

