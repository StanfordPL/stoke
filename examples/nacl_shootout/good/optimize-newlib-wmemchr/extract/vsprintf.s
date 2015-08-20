  .text
  .globl vsprintf
  .type vsprintf, @function

#! file-offset 0x180ba0
#! rip-offset  0x140ba0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vsprintf:                  #        0x140ba0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x140ba0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x140ba5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x140baa  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x140bac  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x140bb1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x140bb4  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x140bb7  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x140bba  3      OPC=movl_r32_r32   
  nop                       #  9     0x140bbd  1      OPC=nop            
  nop                       #  10    0x140bbe  1      OPC=nop            
  nop                       #  11    0x140bbf  1      OPC=nop            
  nop                       #  12    0x140bc0  1      OPC=nop            
  nop                       #  13    0x140bc1  1      OPC=nop            
  nop                       #  14    0x140bc2  1      OPC=nop            
  nop                       #  15    0x140bc3  1      OPC=nop            
  nop                       #  16    0x140bc4  1      OPC=nop            
  nop                       #  17    0x140bc5  1      OPC=nop            
  nop                       #  18    0x140bc6  1      OPC=nop            
  nop                       #  19    0x140bc7  1      OPC=nop            
  nop                       #  20    0x140bc8  1      OPC=nop            
  nop                       #  21    0x140bc9  1      OPC=nop            
  nop                       #  22    0x140bca  1      OPC=nop            
  nop                       #  23    0x140bcb  1      OPC=nop            
  nop                       #  24    0x140bcc  1      OPC=nop            
  nop                       #  25    0x140bcd  1      OPC=nop            
  nop                       #  26    0x140bce  1      OPC=nop            
  nop                       #  27    0x140bcf  1      OPC=nop            
  nop                       #  28    0x140bd0  1      OPC=nop            
  nop                       #  29    0x140bd1  1      OPC=nop            
  nop                       #  30    0x140bd2  1      OPC=nop            
  nop                       #  31    0x140bd3  1      OPC=nop            
  nop                       #  32    0x140bd4  1      OPC=nop            
  nop                       #  33    0x140bd5  1      OPC=nop            
  nop                       #  34    0x140bd6  1      OPC=nop            
  nop                       #  35    0x140bd7  1      OPC=nop            
  nop                       #  36    0x140bd8  1      OPC=nop            
  nop                       #  37    0x140bd9  1      OPC=nop            
  nop                       #  38    0x140bda  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x140bdb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x140be0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x140be7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x140bea  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x140bed  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x140bef  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x140bf4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x140bf8  5      OPC=movq_r64_m64   
  nop                       #  47    0x140bfd  1      OPC=nop            
  nop                       #  48    0x140bfe  1      OPC=nop            
  nop                       #  49    0x140bff  1      OPC=nop            
  movl %eax, %eax           #  50    0x140c00  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x140c02  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x140c06  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x140c09  3      OPC=addq_r64_r64   
  jmpq ._vsprintf_r         #  54    0x140c0c  5      OPC=jmpq_label_1   
  nop                       #  55    0x140c11  1      OPC=nop            
  nop                       #  56    0x140c12  1      OPC=nop            
  nop                       #  57    0x140c13  1      OPC=nop            
  nop                       #  58    0x140c14  1      OPC=nop            
  nop                       #  59    0x140c15  1      OPC=nop            
  nop                       #  60    0x140c16  1      OPC=nop            
  nop                       #  61    0x140c17  1      OPC=nop            
  nop                       #  62    0x140c18  1      OPC=nop            
  nop                       #  63    0x140c19  1      OPC=nop            
  nop                       #  64    0x140c1a  1      OPC=nop            
  nop                       #  65    0x140c1b  1      OPC=nop            
  nop                       #  66    0x140c1c  1      OPC=nop            
  nop                       #  67    0x140c1d  1      OPC=nop            
  nop                       #  68    0x140c1e  1      OPC=nop            
  nop                       #  69    0x140c1f  1      OPC=nop            
                                                                         
.size vsprintf, .-vsprintf

