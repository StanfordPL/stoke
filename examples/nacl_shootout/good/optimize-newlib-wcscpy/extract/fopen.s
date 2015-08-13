  .text
  .globl fopen
  .type fopen, @function

#! file-offset 0x15b0e0
#! rip-offset  0x11b0e0
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fopen:                     #        0x11b0e0  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)    #  1     0x11b0e0  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)     #  2     0x11b0e5  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  3     0x11b0ea  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  4     0x11b0ed  3      OPC=addq_r64_r64   
  movl %edi, %ebx           #  5     0x11b0f0  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  6     0x11b0f2  3      OPC=movl_r32_r32   
  nop                       #  7     0x11b0f5  1      OPC=nop            
  nop                       #  8     0x11b0f6  1      OPC=nop            
  nop                       #  9     0x11b0f7  1      OPC=nop            
  nop                       #  10    0x11b0f8  1      OPC=nop            
  nop                       #  11    0x11b0f9  1      OPC=nop            
  nop                       #  12    0x11b0fa  1      OPC=nop            
  callq .__nacl_read_tp     #  13    0x11b0fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  14    0x11b100  7      OPC=leaq_r64_m16   
  movl %r12d, %edx          #  15    0x11b107  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  16    0x11b10a  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  17    0x11b10c  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  18    0x11b111  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  19    0x11b116  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  20    0x11b118  4      OPC=movl_r32_m32   
  nop                       #  21    0x11b11c  1      OPC=nop            
  nop                       #  22    0x11b11d  1      OPC=nop            
  nop                       #  23    0x11b11e  1      OPC=nop            
  nop                       #  24    0x11b11f  1      OPC=nop            
  addl $0x18, %esp          #  25    0x11b120  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  26    0x11b123  3      OPC=addq_r64_r64   
  jmpq ._fopen_r            #  27    0x11b126  5      OPC=jmpq_label_1   
  nop                       #  28    0x11b12b  1      OPC=nop            
  nop                       #  29    0x11b12c  1      OPC=nop            
  nop                       #  30    0x11b12d  1      OPC=nop            
  nop                       #  31    0x11b12e  1      OPC=nop            
  nop                       #  32    0x11b12f  1      OPC=nop            
  nop                       #  33    0x11b130  1      OPC=nop            
  nop                       #  34    0x11b131  1      OPC=nop            
  nop                       #  35    0x11b132  1      OPC=nop            
  nop                       #  36    0x11b133  1      OPC=nop            
  nop                       #  37    0x11b134  1      OPC=nop            
  nop                       #  38    0x11b135  1      OPC=nop            
  nop                       #  39    0x11b136  1      OPC=nop            
  nop                       #  40    0x11b137  1      OPC=nop            
  nop                       #  41    0x11b138  1      OPC=nop            
  nop                       #  42    0x11b139  1      OPC=nop            
  nop                       #  43    0x11b13a  1      OPC=nop            
  nop                       #  44    0x11b13b  1      OPC=nop            
  nop                       #  45    0x11b13c  1      OPC=nop            
  nop                       #  46    0x11b13d  1      OPC=nop            
  nop                       #  47    0x11b13e  1      OPC=nop            
  nop                       #  48    0x11b13f  1      OPC=nop            
                                                                         
.size fopen, .-fopen

