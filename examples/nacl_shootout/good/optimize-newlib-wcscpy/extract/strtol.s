  .text
  .globl strtol
  .type strtol, @function

#! file-offset 0x16bd20
#! rip-offset  0x12bd20
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.strtol:                    #        0x12bd20  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x12bd20  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x12bd25  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x12bd2a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x12bd2c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x12bd31  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x12bd34  3      OPC=addq_r64_r64   
  movl %edx, %r13d          #  7     0x12bd37  3      OPC=movl_r32_r32   
  movl %esi, %r12d          #  8     0x12bd3a  3      OPC=movl_r32_r32   
  nop                       #  9     0x12bd3d  1      OPC=nop            
  nop                       #  10    0x12bd3e  1      OPC=nop            
  nop                       #  11    0x12bd3f  1      OPC=nop            
  nop                       #  12    0x12bd40  1      OPC=nop            
  nop                       #  13    0x12bd41  1      OPC=nop            
  nop                       #  14    0x12bd42  1      OPC=nop            
  nop                       #  15    0x12bd43  1      OPC=nop            
  nop                       #  16    0x12bd44  1      OPC=nop            
  nop                       #  17    0x12bd45  1      OPC=nop            
  nop                       #  18    0x12bd46  1      OPC=nop            
  nop                       #  19    0x12bd47  1      OPC=nop            
  nop                       #  20    0x12bd48  1      OPC=nop            
  nop                       #  21    0x12bd49  1      OPC=nop            
  nop                       #  22    0x12bd4a  1      OPC=nop            
  nop                       #  23    0x12bd4b  1      OPC=nop            
  nop                       #  24    0x12bd4c  1      OPC=nop            
  nop                       #  25    0x12bd4d  1      OPC=nop            
  nop                       #  26    0x12bd4e  1      OPC=nop            
  nop                       #  27    0x12bd4f  1      OPC=nop            
  nop                       #  28    0x12bd50  1      OPC=nop            
  nop                       #  29    0x12bd51  1      OPC=nop            
  nop                       #  30    0x12bd52  1      OPC=nop            
  nop                       #  31    0x12bd53  1      OPC=nop            
  nop                       #  32    0x12bd54  1      OPC=nop            
  nop                       #  33    0x12bd55  1      OPC=nop            
  nop                       #  34    0x12bd56  1      OPC=nop            
  nop                       #  35    0x12bd57  1      OPC=nop            
  nop                       #  36    0x12bd58  1      OPC=nop            
  nop                       #  37    0x12bd59  1      OPC=nop            
  nop                       #  38    0x12bd5a  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x12bd5b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x12bd60  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x12bd67  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x12bd6a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x12bd6d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x12bd6f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x12bd74  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x12bd78  5      OPC=movq_r64_m64   
  nop                       #  47    0x12bd7d  1      OPC=nop            
  nop                       #  48    0x12bd7e  1      OPC=nop            
  nop                       #  49    0x12bd7f  1      OPC=nop            
  movl %eax, %eax           #  50    0x12bd80  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x12bd82  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x12bd86  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x12bd89  3      OPC=addq_r64_r64   
  jmpq ._strtol_r           #  54    0x12bd8c  5      OPC=jmpq_label_1   
  nop                       #  55    0x12bd91  1      OPC=nop            
  nop                       #  56    0x12bd92  1      OPC=nop            
  nop                       #  57    0x12bd93  1      OPC=nop            
  nop                       #  58    0x12bd94  1      OPC=nop            
  nop                       #  59    0x12bd95  1      OPC=nop            
  nop                       #  60    0x12bd96  1      OPC=nop            
  nop                       #  61    0x12bd97  1      OPC=nop            
  nop                       #  62    0x12bd98  1      OPC=nop            
  nop                       #  63    0x12bd99  1      OPC=nop            
  nop                       #  64    0x12bd9a  1      OPC=nop            
  nop                       #  65    0x12bd9b  1      OPC=nop            
  nop                       #  66    0x12bd9c  1      OPC=nop            
  nop                       #  67    0x12bd9d  1      OPC=nop            
  nop                       #  68    0x12bd9e  1      OPC=nop            
  nop                       #  69    0x12bd9f  1      OPC=nop            
                                                                         
.size strtol, .-strtol

