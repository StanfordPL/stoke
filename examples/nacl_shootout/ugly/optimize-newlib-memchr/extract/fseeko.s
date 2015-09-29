  .text
  .globl fseeko
  .type fseeko, @function

#! file-offset 0x15d2e0
#! rip-offset  0x11d2e0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fseeko:                    #        0x11d2e0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x11d2e0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x11d2e5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11d2ea  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x11d2ec  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x11d2f1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x11d2f4  3      OPC=addq_r64_r64   
  movq %rsi, %r12           #  7     0x11d2f7  3      OPC=movq_r64_r64   
  movl %edx, %r13d          #  8     0x11d2fa  3      OPC=movl_r32_r32   
  nop                       #  9     0x11d2fd  1      OPC=nop            
  nop                       #  10    0x11d2fe  1      OPC=nop            
  nop                       #  11    0x11d2ff  1      OPC=nop            
  nop                       #  12    0x11d300  1      OPC=nop            
  nop                       #  13    0x11d301  1      OPC=nop            
  nop                       #  14    0x11d302  1      OPC=nop            
  nop                       #  15    0x11d303  1      OPC=nop            
  nop                       #  16    0x11d304  1      OPC=nop            
  nop                       #  17    0x11d305  1      OPC=nop            
  nop                       #  18    0x11d306  1      OPC=nop            
  nop                       #  19    0x11d307  1      OPC=nop            
  nop                       #  20    0x11d308  1      OPC=nop            
  nop                       #  21    0x11d309  1      OPC=nop            
  nop                       #  22    0x11d30a  1      OPC=nop            
  nop                       #  23    0x11d30b  1      OPC=nop            
  nop                       #  24    0x11d30c  1      OPC=nop            
  nop                       #  25    0x11d30d  1      OPC=nop            
  nop                       #  26    0x11d30e  1      OPC=nop            
  nop                       #  27    0x11d30f  1      OPC=nop            
  nop                       #  28    0x11d310  1      OPC=nop            
  nop                       #  29    0x11d311  1      OPC=nop            
  nop                       #  30    0x11d312  1      OPC=nop            
  nop                       #  31    0x11d313  1      OPC=nop            
  nop                       #  32    0x11d314  1      OPC=nop            
  nop                       #  33    0x11d315  1      OPC=nop            
  nop                       #  34    0x11d316  1      OPC=nop            
  nop                       #  35    0x11d317  1      OPC=nop            
  nop                       #  36    0x11d318  1      OPC=nop            
  nop                       #  37    0x11d319  1      OPC=nop            
  nop                       #  38    0x11d31a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x11d31b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x11d320  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x11d327  3      OPC=movl_r32_r32   
  movq %r12, %rdx           #  42    0x11d32a  3      OPC=movq_r64_r64   
  movl %ebx, %esi           #  43    0x11d32d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x11d32f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x11d334  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x11d338  5      OPC=movq_r64_m64   
  nop                       #  47    0x11d33d  1      OPC=nop            
  nop                       #  48    0x11d33e  1      OPC=nop            
  nop                       #  49    0x11d33f  1      OPC=nop            
  movl %eax, %eax           #  50    0x11d340  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x11d342  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x11d346  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x11d349  3      OPC=addq_r64_r64   
  jmpq ._fseeko_r           #  54    0x11d34c  5      OPC=jmpq_label_1   
  nop                       #  55    0x11d351  1      OPC=nop            
  nop                       #  56    0x11d352  1      OPC=nop            
  nop                       #  57    0x11d353  1      OPC=nop            
  nop                       #  58    0x11d354  1      OPC=nop            
  nop                       #  59    0x11d355  1      OPC=nop            
  nop                       #  60    0x11d356  1      OPC=nop            
  nop                       #  61    0x11d357  1      OPC=nop            
  nop                       #  62    0x11d358  1      OPC=nop            
  nop                       #  63    0x11d359  1      OPC=nop            
  nop                       #  64    0x11d35a  1      OPC=nop            
  nop                       #  65    0x11d35b  1      OPC=nop            
  nop                       #  66    0x11d35c  1      OPC=nop            
  nop                       #  67    0x11d35d  1      OPC=nop            
  nop                       #  68    0x11d35e  1      OPC=nop            
  nop                       #  69    0x11d35f  1      OPC=nop            
                                                                         
.size fseeko, .-fseeko

