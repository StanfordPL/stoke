  .text
  .globl wcsrtombs
  .type wcsrtombs, @function

#! file-offset 0x1831e0
#! rip-offset  0x1431e0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode                
.wcsrtombs:                 #        0x1431e0  0      OPC=<label>           
  movq %rbx, -0x20(%rsp)    #  1     0x1431e0  5      OPC=movq_m64_r64      
  movq %r12, -0x18(%rsp)    #  2     0x1431e5  5      OPC=movq_m64_r64      
  movl %edi, %ebx           #  3     0x1431ea  2      OPC=movl_r32_r32      
  movq %r13, -0x10(%rsp)    #  4     0x1431ec  5      OPC=movq_m64_r64      
  movq %r14, -0x8(%rsp)     #  5     0x1431f1  5      OPC=movq_m64_r64      
  subl $0x28, %esp          #  6     0x1431f6  3      OPC=subl_r32_imm8     
  addq %r15, %rsp           #  7     0x1431f9  3      OPC=addq_r64_r64      
  movl %edx, %r13d          #  8     0x1431fc  3      OPC=movl_r32_r32      
  nop                       #  9     0x1431ff  1      OPC=nop               
  movl %esi, %r12d          #  10    0x143200  3      OPC=movl_r32_r32      
  movl %ecx, %r14d          #  11    0x143203  3      OPC=movl_r32_r32      
  nop                       #  12    0x143206  1      OPC=nop               
  nop                       #  13    0x143207  1      OPC=nop               
  nop                       #  14    0x143208  1      OPC=nop               
  nop                       #  15    0x143209  1      OPC=nop               
  nop                       #  16    0x14320a  1      OPC=nop               
  nop                       #  17    0x14320b  1      OPC=nop               
  nop                       #  18    0x14320c  1      OPC=nop               
  nop                       #  19    0x14320d  1      OPC=nop               
  nop                       #  20    0x14320e  1      OPC=nop               
  nop                       #  21    0x14320f  1      OPC=nop               
  nop                       #  22    0x143210  1      OPC=nop               
  nop                       #  23    0x143211  1      OPC=nop               
  nop                       #  24    0x143212  1      OPC=nop               
  nop                       #  25    0x143213  1      OPC=nop               
  nop                       #  26    0x143214  1      OPC=nop               
  nop                       #  27    0x143215  1      OPC=nop               
  nop                       #  28    0x143216  1      OPC=nop               
  nop                       #  29    0x143217  1      OPC=nop               
  nop                       #  30    0x143218  1      OPC=nop               
  nop                       #  31    0x143219  1      OPC=nop               
  nop                       #  32    0x14321a  1      OPC=nop               
  callq .__nacl_read_tp     #  33    0x14321b  5      OPC=callq_label       
  leaq -0x480(%rax), %rax   #  34    0x143220  7      OPC=leaq_r64_m16      
  movl %r14d, %r9d          #  35    0x143227  3      OPC=movl_r32_r32      
  movl %r13d, %r8d          #  36    0x14322a  3      OPC=movl_r32_r32      
  movl %r12d, %edx          #  37    0x14322d  3      OPC=movl_r32_r32      
  movl %ebx, %esi           #  38    0x143230  2      OPC=movl_r32_r32      
  movq 0x10(%rsp), %r12     #  39    0x143232  5      OPC=movq_r64_m64      
  movq 0x8(%rsp), %rbx      #  40    0x143237  5      OPC=movq_r64_m64      
  nop                       #  41    0x14323c  1      OPC=nop               
  nop                       #  42    0x14323d  1      OPC=nop               
  nop                       #  43    0x14323e  1      OPC=nop               
  nop                       #  44    0x14323f  1      OPC=nop               
  movq 0x18(%rsp), %r13     #  45    0x143240  5      OPC=movq_r64_m64      
  movl $0xffffffff, %ecx    #  46    0x143245  6      OPC=movl_r32_imm32_1  
  movq 0x20(%rsp), %r14     #  47    0x14324b  5      OPC=movq_r64_m64      
  movl %eax, %eax           #  48    0x143250  2      OPC=movl_r32_r32      
  movl (%r15,%rax,1), %edi  #  49    0x143252  4      OPC=movl_r32_m32      
  addl $0x28, %esp          #  50    0x143256  3      OPC=addl_r32_imm8     
  addq %r15, %rsp           #  51    0x143259  3      OPC=addq_r64_r64      
  jmpq ._wcsnrtombs_r       #  52    0x14325c  5      OPC=jmpq_label_1      
                                                                            
.size wcsrtombs, .-wcsrtombs

