  .text
  .globl fgetwc
  .type fgetwc, @function

#! file-offset 0x187420
#! rip-offset  0x147420
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.fgetwc:                        #        0x147420  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)        #  1     0x147420  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)         #  2     0x147425  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  3     0x14742a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  4     0x14742d  3      OPC=addq_r64_r64   
  movl %edi, %r12d              #  5     0x147430  3      OPC=movl_r32_r32   
  nop                           #  6     0x147433  1      OPC=nop            
  nop                           #  7     0x147434  1      OPC=nop            
  nop                           #  8     0x147435  1      OPC=nop            
  nop                           #  9     0x147436  1      OPC=nop            
  nop                           #  10    0x147437  1      OPC=nop            
  nop                           #  11    0x147438  1      OPC=nop            
  nop                           #  12    0x147439  1      OPC=nop            
  nop                           #  13    0x14743a  1      OPC=nop            
  callq .__nacl_read_tp         #  14    0x14743b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  15    0x147440  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  16    0x147447  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %ebx      #  17    0x147449  4      OPC=movl_r32_m32   
  testq %rbx, %rbx              #  18    0x14744d  3      OPC=testq_r64_r64  
  je .L_147480                  #  19    0x147450  2      OPC=je_label       
  movl %ebx, %ebx               #  20    0x147452  2      OPC=movl_r32_r32   
  movl 0x38(%r15,%rbx,1), %edx  #  21    0x147454  5      OPC=movl_r32_m32   
  testl %edx, %edx              #  22    0x147459  2      OPC=testl_r32_r32  
  nop                           #  23    0x14745b  1      OPC=nop            
  nop                           #  24    0x14745c  1      OPC=nop            
  nop                           #  25    0x14745d  1      OPC=nop            
  nop                           #  26    0x14745e  1      OPC=nop            
  nop                           #  27    0x14745f  1      OPC=nop            
  jne .L_147480                 #  28    0x147460  2      OPC=jne_label      
  movl %ebx, %edi               #  29    0x147462  2      OPC=movl_r32_r32   
  nop                           #  30    0x147464  1      OPC=nop            
  nop                           #  31    0x147465  1      OPC=nop            
  nop                           #  32    0x147466  1      OPC=nop            
  nop                           #  33    0x147467  1      OPC=nop            
  nop                           #  34    0x147468  1      OPC=nop            
  nop                           #  35    0x147469  1      OPC=nop            
  nop                           #  36    0x14746a  1      OPC=nop            
  nop                           #  37    0x14746b  1      OPC=nop            
  nop                           #  38    0x14746c  1      OPC=nop            
  nop                           #  39    0x14746d  1      OPC=nop            
  nop                           #  40    0x14746e  1      OPC=nop            
  nop                           #  41    0x14746f  1      OPC=nop            
  nop                           #  42    0x147470  1      OPC=nop            
  nop                           #  43    0x147471  1      OPC=nop            
  nop                           #  44    0x147472  1      OPC=nop            
  nop                           #  45    0x147473  1      OPC=nop            
  nop                           #  46    0x147474  1      OPC=nop            
  nop                           #  47    0x147475  1      OPC=nop            
  nop                           #  48    0x147476  1      OPC=nop            
  nop                           #  49    0x147477  1      OPC=nop            
  nop                           #  50    0x147478  1      OPC=nop            
  nop                           #  51    0x147479  1      OPC=nop            
  nop                           #  52    0x14747a  1      OPC=nop            
  callq .__sinit                #  53    0x14747b  5      OPC=callq_label    
.L_147480:                      #        0x147480  0      OPC=<label>        
  movl %r12d, %esi              #  54    0x147480  3      OPC=movl_r32_r32   
  movl %ebx, %edi               #  55    0x147483  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12         #  56    0x147485  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx          #  57    0x14748a  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  58    0x14748f  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  59    0x147492  3      OPC=addq_r64_r64   
  jmpq ._fgetwc_r               #  60    0x147495  5      OPC=jmpq_label_1   
  nop                           #  61    0x14749a  1      OPC=nop            
  nop                           #  62    0x14749b  1      OPC=nop            
  nop                           #  63    0x14749c  1      OPC=nop            
  nop                           #  64    0x14749d  1      OPC=nop            
  nop                           #  65    0x14749e  1      OPC=nop            
  nop                           #  66    0x14749f  1      OPC=nop            
                                                                             
.size fgetwc, .-fgetwc

