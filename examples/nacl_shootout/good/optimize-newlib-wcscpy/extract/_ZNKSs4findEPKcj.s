  .text
  .globl _ZNKSs4findEPKcj
  .type _ZNKSs4findEPKcj, @function

#! file-offset 0xeb8a0
#! rip-offset  0xab8a0
#! capacity    128 bytes

# Text                     #  Line  RIP      Bytes  Opcode             
._ZNKSs4findEPKcj:         #        0xab8a0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)   #  1     0xab8a0  5      OPC=movq_m64_r64   
  movl %esi, %r12d         #  2     0xab8a5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)   #  3     0xab8a8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)    #  4     0xab8ad  5      OPC=movq_m64_r64   
  movl %edi, %ebx          #  5     0xab8b2  2      OPC=movl_r32_r32   
  subl $0x18, %esp         #  6     0xab8b4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp          #  7     0xab8b7  3      OPC=addq_r64_r64   
  movl %edx, %r13d         #  8     0xab8ba  3      OPC=movl_r32_r32   
  movl %r12d, %edi         #  9     0xab8bd  3      OPC=movl_r32_r32   
  nop                      #  10    0xab8c0  1      OPC=nop            
  nop                      #  11    0xab8c1  1      OPC=nop            
  nop                      #  12    0xab8c2  1      OPC=nop            
  nop                      #  13    0xab8c3  1      OPC=nop            
  nop                      #  14    0xab8c4  1      OPC=nop            
  nop                      #  15    0xab8c5  1      OPC=nop            
  nop                      #  16    0xab8c6  1      OPC=nop            
  nop                      #  17    0xab8c7  1      OPC=nop            
  nop                      #  18    0xab8c8  1      OPC=nop            
  nop                      #  19    0xab8c9  1      OPC=nop            
  nop                      #  20    0xab8ca  1      OPC=nop            
  nop                      #  21    0xab8cb  1      OPC=nop            
  nop                      #  22    0xab8cc  1      OPC=nop            
  nop                      #  23    0xab8cd  1      OPC=nop            
  nop                      #  24    0xab8ce  1      OPC=nop            
  nop                      #  25    0xab8cf  1      OPC=nop            
  nop                      #  26    0xab8d0  1      OPC=nop            
  nop                      #  27    0xab8d1  1      OPC=nop            
  nop                      #  28    0xab8d2  1      OPC=nop            
  nop                      #  29    0xab8d3  1      OPC=nop            
  nop                      #  30    0xab8d4  1      OPC=nop            
  nop                      #  31    0xab8d5  1      OPC=nop            
  nop                      #  32    0xab8d6  1      OPC=nop            
  nop                      #  33    0xab8d7  1      OPC=nop            
  nop                      #  34    0xab8d8  1      OPC=nop            
  nop                      #  35    0xab8d9  1      OPC=nop            
  nop                      #  36    0xab8da  1      OPC=nop            
  callq .strlen            #  37    0xab8db  5      OPC=callq_label    
  movl %r13d, %edx         #  38    0xab8e0  3      OPC=movl_r32_r32   
  movl %r12d, %esi         #  39    0xab8e3  3      OPC=movl_r32_r32   
  movl %ebx, %edi          #  40    0xab8e6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12     #  41    0xab8e8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx        #  42    0xab8ed  4      OPC=movq_r64_m64   
  movl %eax, %ecx          #  43    0xab8f1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13    #  44    0xab8f3  5      OPC=movq_r64_m64   
  addl $0x18, %esp         #  45    0xab8f8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp          #  46    0xab8fb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax           #  47    0xab8fe  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSs4findEPKcjj  #  48    0xab900  5      OPC=jmpq_label_1   
  nop                      #  49    0xab905  1      OPC=nop            
  nop                      #  50    0xab906  1      OPC=nop            
  nop                      #  51    0xab907  1      OPC=nop            
  nop                      #  52    0xab908  1      OPC=nop            
  nop                      #  53    0xab909  1      OPC=nop            
  nop                      #  54    0xab90a  1      OPC=nop            
  nop                      #  55    0xab90b  1      OPC=nop            
  nop                      #  56    0xab90c  1      OPC=nop            
  nop                      #  57    0xab90d  1      OPC=nop            
  nop                      #  58    0xab90e  1      OPC=nop            
  nop                      #  59    0xab90f  1      OPC=nop            
  nop                      #  60    0xab910  1      OPC=nop            
  nop                      #  61    0xab911  1      OPC=nop            
  nop                      #  62    0xab912  1      OPC=nop            
  nop                      #  63    0xab913  1      OPC=nop            
  nop                      #  64    0xab914  1      OPC=nop            
  nop                      #  65    0xab915  1      OPC=nop            
  nop                      #  66    0xab916  1      OPC=nop            
  nop                      #  67    0xab917  1      OPC=nop            
  nop                      #  68    0xab918  1      OPC=nop            
  nop                      #  69    0xab919  1      OPC=nop            
  nop                      #  70    0xab91a  1      OPC=nop            
  nop                      #  71    0xab91b  1      OPC=nop            
  nop                      #  72    0xab91c  1      OPC=nop            
  nop                      #  73    0xab91d  1      OPC=nop            
  nop                      #  74    0xab91e  1      OPC=nop            
  nop                      #  75    0xab91f  1      OPC=nop            
                                                                       
.size _ZNKSs4findEPKcj, .-_ZNKSs4findEPKcj

