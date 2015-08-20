  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x17ac80
#! rip-offset  0x13ac80
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vfiprintf:                 #        0x13ac80  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x13ac80  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x13ac85  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x13ac8a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x13ac8c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x13ac91  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x13ac94  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x13ac97  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x13ac9a  3      OPC=movl_r32_r32   
  nop                       #  9     0x13ac9d  1      OPC=nop            
  nop                       #  10    0x13ac9e  1      OPC=nop            
  nop                       #  11    0x13ac9f  1      OPC=nop            
  nop                       #  12    0x13aca0  1      OPC=nop            
  nop                       #  13    0x13aca1  1      OPC=nop            
  nop                       #  14    0x13aca2  1      OPC=nop            
  nop                       #  15    0x13aca3  1      OPC=nop            
  nop                       #  16    0x13aca4  1      OPC=nop            
  nop                       #  17    0x13aca5  1      OPC=nop            
  nop                       #  18    0x13aca6  1      OPC=nop            
  nop                       #  19    0x13aca7  1      OPC=nop            
  nop                       #  20    0x13aca8  1      OPC=nop            
  nop                       #  21    0x13aca9  1      OPC=nop            
  nop                       #  22    0x13acaa  1      OPC=nop            
  nop                       #  23    0x13acab  1      OPC=nop            
  nop                       #  24    0x13acac  1      OPC=nop            
  nop                       #  25    0x13acad  1      OPC=nop            
  nop                       #  26    0x13acae  1      OPC=nop            
  nop                       #  27    0x13acaf  1      OPC=nop            
  nop                       #  28    0x13acb0  1      OPC=nop            
  nop                       #  29    0x13acb1  1      OPC=nop            
  nop                       #  30    0x13acb2  1      OPC=nop            
  nop                       #  31    0x13acb3  1      OPC=nop            
  nop                       #  32    0x13acb4  1      OPC=nop            
  nop                       #  33    0x13acb5  1      OPC=nop            
  nop                       #  34    0x13acb6  1      OPC=nop            
  nop                       #  35    0x13acb7  1      OPC=nop            
  nop                       #  36    0x13acb8  1      OPC=nop            
  nop                       #  37    0x13acb9  1      OPC=nop            
  nop                       #  38    0x13acba  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x13acbb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x13acc0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x13acc7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x13acca  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x13accd  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x13accf  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x13acd4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x13acd8  5      OPC=movq_r64_m64   
  nop                       #  47    0x13acdd  1      OPC=nop            
  nop                       #  48    0x13acde  1      OPC=nop            
  nop                       #  49    0x13acdf  1      OPC=nop            
  movl %eax, %eax           #  50    0x13ace0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x13ace2  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x13ace6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x13ace9  3      OPC=addq_r64_r64   
  jmpq ._vfiprintf_r        #  54    0x13acec  5      OPC=jmpq_label_1   
  nop                       #  55    0x13acf1  1      OPC=nop            
  nop                       #  56    0x13acf2  1      OPC=nop            
  nop                       #  57    0x13acf3  1      OPC=nop            
  nop                       #  58    0x13acf4  1      OPC=nop            
  nop                       #  59    0x13acf5  1      OPC=nop            
  nop                       #  60    0x13acf6  1      OPC=nop            
  nop                       #  61    0x13acf7  1      OPC=nop            
  nop                       #  62    0x13acf8  1      OPC=nop            
  nop                       #  63    0x13acf9  1      OPC=nop            
  nop                       #  64    0x13acfa  1      OPC=nop            
  nop                       #  65    0x13acfb  1      OPC=nop            
  nop                       #  66    0x13acfc  1      OPC=nop            
  nop                       #  67    0x13acfd  1      OPC=nop            
  nop                       #  68    0x13acfe  1      OPC=nop            
  nop                       #  69    0x13acff  1      OPC=nop            
                                                                         
.size vfiprintf, .-vfiprintf

