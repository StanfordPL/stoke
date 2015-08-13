  .text
  .globl wcstoul
  .type wcstoul, @function

#! file-offset 0x1832c0
#! rip-offset  0x1432c0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wcstoul:                   #        0x1432c0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x1432c0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x1432c5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x1432ca  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x1432cc  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x1432d1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x1432d4  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x1432d7  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x1432da  3      OPC=movl_r32_r32   
  nop                       #  9     0x1432dd  1      OPC=nop            
  nop                       #  10    0x1432de  1      OPC=nop            
  nop                       #  11    0x1432df  1      OPC=nop            
  nop                       #  12    0x1432e0  1      OPC=nop            
  nop                       #  13    0x1432e1  1      OPC=nop            
  nop                       #  14    0x1432e2  1      OPC=nop            
  nop                       #  15    0x1432e3  1      OPC=nop            
  nop                       #  16    0x1432e4  1      OPC=nop            
  nop                       #  17    0x1432e5  1      OPC=nop            
  nop                       #  18    0x1432e6  1      OPC=nop            
  nop                       #  19    0x1432e7  1      OPC=nop            
  nop                       #  20    0x1432e8  1      OPC=nop            
  nop                       #  21    0x1432e9  1      OPC=nop            
  nop                       #  22    0x1432ea  1      OPC=nop            
  nop                       #  23    0x1432eb  1      OPC=nop            
  nop                       #  24    0x1432ec  1      OPC=nop            
  nop                       #  25    0x1432ed  1      OPC=nop            
  nop                       #  26    0x1432ee  1      OPC=nop            
  nop                       #  27    0x1432ef  1      OPC=nop            
  nop                       #  28    0x1432f0  1      OPC=nop            
  nop                       #  29    0x1432f1  1      OPC=nop            
  nop                       #  30    0x1432f2  1      OPC=nop            
  nop                       #  31    0x1432f3  1      OPC=nop            
  nop                       #  32    0x1432f4  1      OPC=nop            
  nop                       #  33    0x1432f5  1      OPC=nop            
  nop                       #  34    0x1432f6  1      OPC=nop            
  nop                       #  35    0x1432f7  1      OPC=nop            
  nop                       #  36    0x1432f8  1      OPC=nop            
  nop                       #  37    0x1432f9  1      OPC=nop            
  nop                       #  38    0x1432fa  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x1432fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x143300  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x143307  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x14330a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x14330d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x14330f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x143314  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x143318  5      OPC=movq_r64_m64   
  nop                       #  47    0x14331d  1      OPC=nop            
  nop                       #  48    0x14331e  1      OPC=nop            
  nop                       #  49    0x14331f  1      OPC=nop            
  movl %eax, %eax           #  50    0x143320  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x143322  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x143326  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x143329  3      OPC=addq_r64_r64   
  jmpq ._wcstoul_r          #  54    0x14332c  5      OPC=jmpq_label_1   
  nop                       #  55    0x143331  1      OPC=nop            
  nop                       #  56    0x143332  1      OPC=nop            
  nop                       #  57    0x143333  1      OPC=nop            
  nop                       #  58    0x143334  1      OPC=nop            
  nop                       #  59    0x143335  1      OPC=nop            
  nop                       #  60    0x143336  1      OPC=nop            
  nop                       #  61    0x143337  1      OPC=nop            
  nop                       #  62    0x143338  1      OPC=nop            
  nop                       #  63    0x143339  1      OPC=nop            
  nop                       #  64    0x14333a  1      OPC=nop            
  nop                       #  65    0x14333b  1      OPC=nop            
  nop                       #  66    0x14333c  1      OPC=nop            
  nop                       #  67    0x14333d  1      OPC=nop            
  nop                       #  68    0x14333e  1      OPC=nop            
  nop                       #  69    0x14333f  1      OPC=nop            
                                                                         
.size wcstoul, .-wcstoul

