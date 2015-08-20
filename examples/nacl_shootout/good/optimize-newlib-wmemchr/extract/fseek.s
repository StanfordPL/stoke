  .text
  .globl fseek
  .type fseek, @function

#! file-offset 0x15c0e0
#! rip-offset  0x11c0e0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fseek:                     #        0x11c0e0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x11c0e0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x11c0e5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11c0ea  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x11c0ec  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x11c0f1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x11c0f4  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x11c0f7  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x11c0fa  3      OPC=movl_r32_r32   
  nop                       #  9     0x11c0fd  1      OPC=nop            
  nop                       #  10    0x11c0fe  1      OPC=nop            
  nop                       #  11    0x11c0ff  1      OPC=nop            
  nop                       #  12    0x11c100  1      OPC=nop            
  nop                       #  13    0x11c101  1      OPC=nop            
  nop                       #  14    0x11c102  1      OPC=nop            
  nop                       #  15    0x11c103  1      OPC=nop            
  nop                       #  16    0x11c104  1      OPC=nop            
  nop                       #  17    0x11c105  1      OPC=nop            
  nop                       #  18    0x11c106  1      OPC=nop            
  nop                       #  19    0x11c107  1      OPC=nop            
  nop                       #  20    0x11c108  1      OPC=nop            
  nop                       #  21    0x11c109  1      OPC=nop            
  nop                       #  22    0x11c10a  1      OPC=nop            
  nop                       #  23    0x11c10b  1      OPC=nop            
  nop                       #  24    0x11c10c  1      OPC=nop            
  nop                       #  25    0x11c10d  1      OPC=nop            
  nop                       #  26    0x11c10e  1      OPC=nop            
  nop                       #  27    0x11c10f  1      OPC=nop            
  nop                       #  28    0x11c110  1      OPC=nop            
  nop                       #  29    0x11c111  1      OPC=nop            
  nop                       #  30    0x11c112  1      OPC=nop            
  nop                       #  31    0x11c113  1      OPC=nop            
  nop                       #  32    0x11c114  1      OPC=nop            
  nop                       #  33    0x11c115  1      OPC=nop            
  nop                       #  34    0x11c116  1      OPC=nop            
  nop                       #  35    0x11c117  1      OPC=nop            
  nop                       #  36    0x11c118  1      OPC=nop            
  nop                       #  37    0x11c119  1      OPC=nop            
  nop                       #  38    0x11c11a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x11c11b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x11c120  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x11c127  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x11c12a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x11c12d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x11c12f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x11c134  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x11c138  5      OPC=movq_r64_m64   
  nop                       #  47    0x11c13d  1      OPC=nop            
  nop                       #  48    0x11c13e  1      OPC=nop            
  nop                       #  49    0x11c13f  1      OPC=nop            
  movl %eax, %eax           #  50    0x11c140  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x11c142  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x11c146  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x11c149  3      OPC=addq_r64_r64   
  jmpq ._fseek_r            #  54    0x11c14c  5      OPC=jmpq_label_1   
  nop                       #  55    0x11c151  1      OPC=nop            
  nop                       #  56    0x11c152  1      OPC=nop            
  nop                       #  57    0x11c153  1      OPC=nop            
  nop                       #  58    0x11c154  1      OPC=nop            
  nop                       #  59    0x11c155  1      OPC=nop            
  nop                       #  60    0x11c156  1      OPC=nop            
  nop                       #  61    0x11c157  1      OPC=nop            
  nop                       #  62    0x11c158  1      OPC=nop            
  nop                       #  63    0x11c159  1      OPC=nop            
  nop                       #  64    0x11c15a  1      OPC=nop            
  nop                       #  65    0x11c15b  1      OPC=nop            
  nop                       #  66    0x11c15c  1      OPC=nop            
  nop                       #  67    0x11c15d  1      OPC=nop            
  nop                       #  68    0x11c15e  1      OPC=nop            
  nop                       #  69    0x11c15f  1      OPC=nop            
                                                                         
.size fseek, .-fseek

