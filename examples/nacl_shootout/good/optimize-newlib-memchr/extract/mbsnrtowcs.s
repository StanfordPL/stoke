  .text
  .globl mbsnrtowcs
  .type mbsnrtowcs, @function

#! file-offset 0x198b80
#! rip-offset  0x158b80
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.mbsnrtowcs:                #        0x158b80  0      OPC=<label>        
  movl %r8d, %r9d           #  1     0x158b80  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)    #  2     0x158b83  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  3     0x158b88  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)    #  4     0x158b8d  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x158b92  5      OPC=movq_m64_r64   
  subl $0x38, %esp          #  6     0x158b97  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x158b9a  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  8     0x158b9d  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  9     0x158ba0  3      OPC=movl_r32_r32   
  movl %edi, %ebx           #  10    0x158ba3  2      OPC=movl_r32_r32   
  movl %esi, %r12d          #  11    0x158ba5  3      OPC=movl_r32_r32   
  movq %r9, 0x8(%rsp)       #  12    0x158ba8  5      OPC=movq_m64_r64   
  nop                       #  13    0x158bad  1      OPC=nop            
  nop                       #  14    0x158bae  1      OPC=nop            
  nop                       #  15    0x158baf  1      OPC=nop            
  nop                       #  16    0x158bb0  1      OPC=nop            
  nop                       #  17    0x158bb1  1      OPC=nop            
  nop                       #  18    0x158bb2  1      OPC=nop            
  nop                       #  19    0x158bb3  1      OPC=nop            
  nop                       #  20    0x158bb4  1      OPC=nop            
  nop                       #  21    0x158bb5  1      OPC=nop            
  nop                       #  22    0x158bb6  1      OPC=nop            
  nop                       #  23    0x158bb7  1      OPC=nop            
  nop                       #  24    0x158bb8  1      OPC=nop            
  nop                       #  25    0x158bb9  1      OPC=nop            
  nop                       #  26    0x158bba  1      OPC=nop            
  callq .__nacl_read_tp     #  27    0x158bbb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  28    0x158bc0  7      OPC=leaq_r64_m16   
  movq 0x8(%rsp), %r9       #  29    0x158bc7  5      OPC=movq_r64_m64   
  movl %r14d, %r8d          #  30    0x158bcc  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  31    0x158bcf  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  32    0x158bd2  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  33    0x158bd5  2      OPC=movl_r32_r32   
  movq 0x20(%rsp), %r12     #  34    0x158bd7  5      OPC=movq_r64_m64   
  nop                       #  35    0x158bdc  1      OPC=nop            
  nop                       #  36    0x158bdd  1      OPC=nop            
  nop                       #  37    0x158bde  1      OPC=nop            
  nop                       #  38    0x158bdf  1      OPC=nop            
  movq 0x18(%rsp), %rbx     #  39    0x158be0  5      OPC=movq_r64_m64   
  movq 0x28(%rsp), %r13     #  40    0x158be5  5      OPC=movq_r64_m64   
  movq 0x30(%rsp), %r14     #  41    0x158bea  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  42    0x158bef  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  43    0x158bf1  4      OPC=movl_r32_m32   
  addl $0x38, %esp          #  44    0x158bf5  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  45    0x158bf8  3      OPC=addq_r64_r64   
  jmpq ._mbsnrtowcs_r       #  46    0x158bfb  5      OPC=jmpq_label_1   
                                                                         
.size mbsnrtowcs, .-mbsnrtowcs

