  .text
  .globl fread
  .type fread, @function

#! file-offset 0x15bd40
#! rip-offset  0x11bd40
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.fread:                     #        0x11bd40  0      OPC=<label>        
  movq %rbx, -0x20(%rsp)    #  1     0x11bd40  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)    #  2     0x11bd45  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x11bd4a  2      OPC=movl_r32_r32   
  movq %r13, -0x10(%rsp)    #  4     0x11bd4c  5      OPC=movq_m64_r64   
  movq %r14, -0x8(%rsp)     #  5     0x11bd51  5      OPC=movq_m64_r64   
  subl $0x28, %esp          #  6     0x11bd56  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  7     0x11bd59  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  8     0x11bd5c  3      OPC=movl_r32_r32   
  nop                       #  9     0x11bd5f  1      OPC=nop            
  movl %edx, %r13d          #  10    0x11bd60  3      OPC=movl_r32_r32   
  movl %ecx, %r14d          #  11    0x11bd63  3      OPC=movl_r32_r32   
  nop                       #  12    0x11bd66  1      OPC=nop            
  nop                       #  13    0x11bd67  1      OPC=nop            
  nop                       #  14    0x11bd68  1      OPC=nop            
  nop                       #  15    0x11bd69  1      OPC=nop            
  nop                       #  16    0x11bd6a  1      OPC=nop            
  nop                       #  17    0x11bd6b  1      OPC=nop            
  nop                       #  18    0x11bd6c  1      OPC=nop            
  nop                       #  19    0x11bd6d  1      OPC=nop            
  nop                       #  20    0x11bd6e  1      OPC=nop            
  nop                       #  21    0x11bd6f  1      OPC=nop            
  nop                       #  22    0x11bd70  1      OPC=nop            
  nop                       #  23    0x11bd71  1      OPC=nop            
  nop                       #  24    0x11bd72  1      OPC=nop            
  nop                       #  25    0x11bd73  1      OPC=nop            
  nop                       #  26    0x11bd74  1      OPC=nop            
  nop                       #  27    0x11bd75  1      OPC=nop            
  nop                       #  28    0x11bd76  1      OPC=nop            
  nop                       #  29    0x11bd77  1      OPC=nop            
  nop                       #  30    0x11bd78  1      OPC=nop            
  nop                       #  31    0x11bd79  1      OPC=nop            
  nop                       #  32    0x11bd7a  1      OPC=nop            
  callq .__nacl_read_tp     #  33    0x11bd7b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  34    0x11bd80  7      OPC=leaq_r64_m16   
  movl %r14d, %r8d          #  35    0x11bd87  3      OPC=movl_r32_r32   
  movl %r13d, %ecx          #  36    0x11bd8a  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  37    0x11bd8d  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  38    0x11bd90  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12     #  39    0x11bd92  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx      #  40    0x11bd97  5      OPC=movq_r64_m64   
  nop                       #  41    0x11bd9c  1      OPC=nop            
  nop                       #  42    0x11bd9d  1      OPC=nop            
  nop                       #  43    0x11bd9e  1      OPC=nop            
  nop                       #  44    0x11bd9f  1      OPC=nop            
  movq 0x18(%rsp), %r13     #  45    0x11bda0  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14     #  46    0x11bda5  5      OPC=movq_r64_m64   
  movl %eax, %eax           #  47    0x11bdaa  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  48    0x11bdac  4      OPC=movl_r32_m32   
  addl $0x28, %esp          #  49    0x11bdb0  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  50    0x11bdb3  3      OPC=addq_r64_r64   
  jmpq ._fread_r            #  51    0x11bdb6  5      OPC=jmpq_label_1   
  nop                       #  52    0x11bdbb  1      OPC=nop            
  nop                       #  53    0x11bdbc  1      OPC=nop            
  nop                       #  54    0x11bdbd  1      OPC=nop            
  nop                       #  55    0x11bdbe  1      OPC=nop            
  nop                       #  56    0x11bdbf  1      OPC=nop            
                                                                         
.size fread, .-fread

