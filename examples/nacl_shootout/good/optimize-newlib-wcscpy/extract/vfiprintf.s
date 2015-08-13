  .text
  .globl vfiprintf
  .type vfiprintf, @function

#! file-offset 0x17a980
#! rip-offset  0x13a980
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vfiprintf:                 #        0x13a980  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x13a980  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x13a985  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x13a98a  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x13a98c  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x13a991  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x13a994  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x13a997  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x13a99a  3      OPC=movl_r32_r32   
  nop                       #  9     0x13a99d  1      OPC=nop            
  nop                       #  10    0x13a99e  1      OPC=nop            
  nop                       #  11    0x13a99f  1      OPC=nop            
  nop                       #  12    0x13a9a0  1      OPC=nop            
  nop                       #  13    0x13a9a1  1      OPC=nop            
  nop                       #  14    0x13a9a2  1      OPC=nop            
  nop                       #  15    0x13a9a3  1      OPC=nop            
  nop                       #  16    0x13a9a4  1      OPC=nop            
  nop                       #  17    0x13a9a5  1      OPC=nop            
  nop                       #  18    0x13a9a6  1      OPC=nop            
  nop                       #  19    0x13a9a7  1      OPC=nop            
  nop                       #  20    0x13a9a8  1      OPC=nop            
  nop                       #  21    0x13a9a9  1      OPC=nop            
  nop                       #  22    0x13a9aa  1      OPC=nop            
  nop                       #  23    0x13a9ab  1      OPC=nop            
  nop                       #  24    0x13a9ac  1      OPC=nop            
  nop                       #  25    0x13a9ad  1      OPC=nop            
  nop                       #  26    0x13a9ae  1      OPC=nop            
  nop                       #  27    0x13a9af  1      OPC=nop            
  nop                       #  28    0x13a9b0  1      OPC=nop            
  nop                       #  29    0x13a9b1  1      OPC=nop            
  nop                       #  30    0x13a9b2  1      OPC=nop            
  nop                       #  31    0x13a9b3  1      OPC=nop            
  nop                       #  32    0x13a9b4  1      OPC=nop            
  nop                       #  33    0x13a9b5  1      OPC=nop            
  nop                       #  34    0x13a9b6  1      OPC=nop            
  nop                       #  35    0x13a9b7  1      OPC=nop            
  nop                       #  36    0x13a9b8  1      OPC=nop            
  nop                       #  37    0x13a9b9  1      OPC=nop            
  nop                       #  38    0x13a9ba  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x13a9bb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x13a9c0  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x13a9c7  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x13a9ca  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x13a9cd  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x13a9cf  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x13a9d4  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x13a9d8  5      OPC=movq_r64_m64   
  nop                       #  47    0x13a9dd  1      OPC=nop            
  nop                       #  48    0x13a9de  1      OPC=nop            
  nop                       #  49    0x13a9df  1      OPC=nop            
  movl %eax, %eax           #  50    0x13a9e0  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x13a9e2  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x13a9e6  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x13a9e9  3      OPC=addq_r64_r64   
  jmpq ._vfiprintf_r        #  54    0x13a9ec  5      OPC=jmpq_label_1   
  nop                       #  55    0x13a9f1  1      OPC=nop            
  nop                       #  56    0x13a9f2  1      OPC=nop            
  nop                       #  57    0x13a9f3  1      OPC=nop            
  nop                       #  58    0x13a9f4  1      OPC=nop            
  nop                       #  59    0x13a9f5  1      OPC=nop            
  nop                       #  60    0x13a9f6  1      OPC=nop            
  nop                       #  61    0x13a9f7  1      OPC=nop            
  nop                       #  62    0x13a9f8  1      OPC=nop            
  nop                       #  63    0x13a9f9  1      OPC=nop            
  nop                       #  64    0x13a9fa  1      OPC=nop            
  nop                       #  65    0x13a9fb  1      OPC=nop            
  nop                       #  66    0x13a9fc  1      OPC=nop            
  nop                       #  67    0x13a9fd  1      OPC=nop            
  nop                       #  68    0x13a9fe  1      OPC=nop            
  nop                       #  69    0x13a9ff  1      OPC=nop            
                                                                         
.size vfiprintf, .-vfiprintf

