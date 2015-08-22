  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x16c740
#! rip-offset  0x12c740
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtol:                    #        0x12c740  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x12c740  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x12c745  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x12c74a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x12c74c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x12c751  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x12c754  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x12c757  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x12c75a  3      OPC=movl_r32_r32   
  nop                       #  9     0x12c75d  1      OPC=nop            
  nop                       #  10    0x12c75e  1      OPC=nop            
  nop                       #  11    0x12c75f  1      OPC=nop            
  nop                       #  12    0x12c760  1      OPC=nop            
  nop                       #  13    0x12c761  1      OPC=nop            
  nop                       #  14    0x12c762  1      OPC=nop            
  nop                       #  15    0x12c763  1      OPC=nop            
  nop                       #  16    0x12c764  1      OPC=nop            
  nop                       #  17    0x12c765  1      OPC=nop            
  nop                       #  18    0x12c766  1      OPC=nop            
  nop                       #  19    0x12c767  1      OPC=nop            
  nop                       #  20    0x12c768  1      OPC=nop            
  nop                       #  21    0x12c769  1      OPC=nop            
  nop                       #  22    0x12c76a  1      OPC=nop            
  nop                       #  23    0x12c76b  1      OPC=nop            
  nop                       #  24    0x12c76c  1      OPC=nop            
  nop                       #  25    0x12c76d  1      OPC=nop            
  nop                       #  26    0x12c76e  1      OPC=nop            
  nop                       #  27    0x12c76f  1      OPC=nop            
  nop                       #  28    0x12c770  1      OPC=nop            
  nop                       #  29    0x12c771  1      OPC=nop            
  nop                       #  30    0x12c772  1      OPC=nop            
  nop                       #  31    0x12c773  1      OPC=nop            
  nop                       #  32    0x12c774  1      OPC=nop            
  nop                       #  33    0x12c775  1      OPC=nop            
  nop                       #  34    0x12c776  1      OPC=nop            
  nop                       #  35    0x12c777  1      OPC=nop            
  nop                       #  36    0x12c778  1      OPC=nop            
  nop                       #  37    0x12c779  1      OPC=nop            
  nop                       #  38    0x12c77a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x12c77b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x12c780  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x12c787  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x12c78a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x12c78d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x12c78f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x12c794  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x12c798  5      OPC=movq_r64_m64   
  nop                       #  47    0x12c79d  1      OPC=nop            
  nop                       #  48    0x12c79e  1      OPC=nop            
  nop                       #  49    0x12c79f  1      OPC=nop            
  movl %eax, %eax           #  50    0x12c7a0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x12c7a2  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x12c7a6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x12c7a9  3      OPC=addq_r64_r64   
  jmpq ._strtol_r           #  54    0x12c7ac  5      OPC=jmpq_label_1   
  nop                       #  55    0x12c7b1  1      OPC=nop            
  nop                       #  56    0x12c7b2  1      OPC=nop            
  nop                       #  57    0x12c7b3  1      OPC=nop            
  nop                       #  58    0x12c7b4  1      OPC=nop            
  nop                       #  59    0x12c7b5  1      OPC=nop            
  nop                       #  60    0x12c7b6  1      OPC=nop            
  nop                       #  61    0x12c7b7  1      OPC=nop            
  nop                       #  62    0x12c7b8  1      OPC=nop            
  nop                       #  63    0x12c7b9  1      OPC=nop            
  nop                       #  64    0x12c7ba  1      OPC=nop            
  nop                       #  65    0x12c7bb  1      OPC=nop            
  nop                       #  66    0x12c7bc  1      OPC=nop            
  nop                       #  67    0x12c7bd  1      OPC=nop            
  nop                       #  68    0x12c7be  1      OPC=nop            
  nop                       #  69    0x12c7bf  1      OPC=nop            
                                                                         
.size strtol, .-strtol

