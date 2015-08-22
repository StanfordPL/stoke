  .text
  .globl vsprintf
  .type vsprintf, @function

#! file-offset 0x1812c0
#! rip-offset  0x1412c0
#! capacity    128 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.vsprintf:                  #        0x1412c0  0      OPC=<label>        
  movq %rbx, -0x18(%rsp)    #  1     0x1412c0  5      OPC=movq_m64_r64   
  movq %r12, -0x10(%rsp)    #  2     0x1412c5  5      OPC=movq_m64_r64   
  movl %edi, %ebx           #  3     0x1412ca  2      OPC=movl_r32_r32   
  movq %r13, -0x8(%rsp)     #  4     0x1412cc  5      OPC=movq_m64_r64   
  subl $0x18, %esp          #  5     0x1412d1  3      OPC=subl_r32_imm8  
  addq %r15, %rsp           #  6     0x1412d4  3      OPC=addq_r64_r64   
  movl %esi, %r12d          #  7     0x1412d7  3      OPC=movl_r32_r32   
  movl %edx, %r13d          #  8     0x1412da  3      OPC=movl_r32_r32   
  nop                       #  9     0x1412dd  1      OPC=nop            
  nop                       #  10    0x1412de  1      OPC=nop            
  nop                       #  11    0x1412df  1      OPC=nop            
  nop                       #  12    0x1412e0  1      OPC=nop            
  nop                       #  13    0x1412e1  1      OPC=nop            
  nop                       #  14    0x1412e2  1      OPC=nop            
  nop                       #  15    0x1412e3  1      OPC=nop            
  nop                       #  16    0x1412e4  1      OPC=nop            
  nop                       #  17    0x1412e5  1      OPC=nop            
  nop                       #  18    0x1412e6  1      OPC=nop            
  nop                       #  19    0x1412e7  1      OPC=nop            
  nop                       #  20    0x1412e8  1      OPC=nop            
  nop                       #  21    0x1412e9  1      OPC=nop            
  nop                       #  22    0x1412ea  1      OPC=nop            
  nop                       #  23    0x1412eb  1      OPC=nop            
  nop                       #  24    0x1412ec  1      OPC=nop            
  nop                       #  25    0x1412ed  1      OPC=nop            
  nop                       #  26    0x1412ee  1      OPC=nop            
  nop                       #  27    0x1412ef  1      OPC=nop            
  nop                       #  28    0x1412f0  1      OPC=nop            
  nop                       #  29    0x1412f1  1      OPC=nop            
  nop                       #  30    0x1412f2  1      OPC=nop            
  nop                       #  31    0x1412f3  1      OPC=nop            
  nop                       #  32    0x1412f4  1      OPC=nop            
  nop                       #  33    0x1412f5  1      OPC=nop            
  nop                       #  34    0x1412f6  1      OPC=nop            
  nop                       #  35    0x1412f7  1      OPC=nop            
  nop                       #  36    0x1412f8  1      OPC=nop            
  nop                       #  37    0x1412f9  1      OPC=nop            
  nop                       #  38    0x1412fa  1      OPC=nop            
  callq .__nacl_read_tp     #  39    0x1412fb  5      OPC=callq_label    
  leaq -0x480(%rax), %rax   #  40    0x141300  7      OPC=leaq_r64_m16   
  movl %r13d, %ecx          #  41    0x141307  3      OPC=movl_r32_r32   
  movl %r12d, %edx          #  42    0x14130a  3      OPC=movl_r32_r32   
  movl %ebx, %esi           #  43    0x14130d  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12      #  44    0x14130f  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx         #  45    0x141314  4      OPC=movq_r64_m64   
  movq 0x10(%rsp), %r13     #  46    0x141318  5      OPC=movq_r64_m64   
  nop                       #  47    0x14131d  1      OPC=nop            
  nop                       #  48    0x14131e  1      OPC=nop            
  nop                       #  49    0x14131f  1      OPC=nop            
  movl %eax, %eax           #  50    0x141320  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi  #  51    0x141322  4      OPC=movl_r32_m32   
  addl $0x18, %esp          #  52    0x141326  3      OPC=addl_r32_imm8  
  addq %r15, %rsp           #  53    0x141329  3      OPC=addq_r64_r64   
  jmpq ._vsprintf_r         #  54    0x14132c  5      OPC=jmpq_label_1   
  nop                       #  55    0x141331  1      OPC=nop            
  nop                       #  56    0x141332  1      OPC=nop            
  nop                       #  57    0x141333  1      OPC=nop            
  nop                       #  58    0x141334  1      OPC=nop            
  nop                       #  59    0x141335  1      OPC=nop            
  nop                       #  60    0x141336  1      OPC=nop            
  nop                       #  61    0x141337  1      OPC=nop            
  nop                       #  62    0x141338  1      OPC=nop            
  nop                       #  63    0x141339  1      OPC=nop            
  nop                       #  64    0x14133a  1      OPC=nop            
  nop                       #  65    0x14133b  1      OPC=nop            
  nop                       #  66    0x14133c  1      OPC=nop            
  nop                       #  67    0x14133d  1      OPC=nop            
  nop                       #  68    0x14133e  1      OPC=nop            
  nop                       #  69    0x14133f  1      OPC=nop            
                                                                         
.size vsprintf, .-vsprintf

