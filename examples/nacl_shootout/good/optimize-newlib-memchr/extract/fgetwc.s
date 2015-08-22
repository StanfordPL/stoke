  .text
  .globl fgetwc
  .type fgetwc, @function

#! file-offset 0x187b40
#! rip-offset  0x147b40
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.fgetwc:                        #        0x147b40  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)        #  1     0x147b40  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)         #  2     0x147b45  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  3     0x147b4a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  4     0x147b4d  3      OPC=addq_r64_r64   
  movl %edi, %r12d              #  5     0x147b50  3      OPC=movl_r32_r32   
  nop                           #  6     0x147b53  1      OPC=nop            
  nop                           #  7     0x147b54  1      OPC=nop            
  nop                           #  8     0x147b55  1      OPC=nop            
  nop                           #  9     0x147b56  1      OPC=nop            
  nop                           #  10    0x147b57  1      OPC=nop            
  nop                           #  11    0x147b58  1      OPC=nop            
  nop                           #  12    0x147b59  1      OPC=nop            
  nop                           #  13    0x147b5a  1      OPC=nop            
  callq .__nacl_read_tp         #  14    0x147b5b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  15    0x147b60  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  16    0x147b67  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %ebx      #  17    0x147b69  4      OPC=movl_r32_m32   
  testq %rbx, %rbx              #  18    0x147b6d  3      OPC=testq_r64_r64  
  je .L_147ba0                  #  19    0x147b70  2      OPC=je_label       
  movl %ebx, %ebx               #  20    0x147b72  2      OPC=movl_r32_r32   
  movl 0x38(%r15,%rbx,1), %edx  #  21    0x147b74  5      OPC=movl_r32_m32   
  testl %edx, %edx              #  22    0x147b79  2      OPC=testl_r32_r32  
  nop                           #  23    0x147b7b  1      OPC=nop            
  nop                           #  24    0x147b7c  1      OPC=nop            
  nop                           #  25    0x147b7d  1      OPC=nop            
  nop                           #  26    0x147b7e  1      OPC=nop            
  nop                           #  27    0x147b7f  1      OPC=nop            
  jne .L_147ba0                 #  28    0x147b80  2      OPC=jne_label      
  movl %ebx, %edi               #  29    0x147b82  2      OPC=movl_r32_r32   
  nop                           #  30    0x147b84  1      OPC=nop            
  nop                           #  31    0x147b85  1      OPC=nop            
  nop                           #  32    0x147b86  1      OPC=nop            
  nop                           #  33    0x147b87  1      OPC=nop            
  nop                           #  34    0x147b88  1      OPC=nop            
  nop                           #  35    0x147b89  1      OPC=nop            
  nop                           #  36    0x147b8a  1      OPC=nop            
  nop                           #  37    0x147b8b  1      OPC=nop            
  nop                           #  38    0x147b8c  1      OPC=nop            
  nop                           #  39    0x147b8d  1      OPC=nop            
  nop                           #  40    0x147b8e  1      OPC=nop            
  nop                           #  41    0x147b8f  1      OPC=nop            
  nop                           #  42    0x147b90  1      OPC=nop            
  nop                           #  43    0x147b91  1      OPC=nop            
  nop                           #  44    0x147b92  1      OPC=nop            
  nop                           #  45    0x147b93  1      OPC=nop            
  nop                           #  46    0x147b94  1      OPC=nop            
  nop                           #  47    0x147b95  1      OPC=nop            
  nop                           #  48    0x147b96  1      OPC=nop            
  nop                           #  49    0x147b97  1      OPC=nop            
  nop                           #  50    0x147b98  1      OPC=nop            
  nop                           #  51    0x147b99  1      OPC=nop            
  nop                           #  52    0x147b9a  1      OPC=nop            
  callq .__sinit                #  53    0x147b9b  5      OPC=callq_label    
.L_147ba0:                      #        0x147ba0  0      OPC=<label>        
  movl %r12d, %esi              #  54    0x147ba0  3      OPC=movl_r32_r32   
  movl %ebx, %edi               #  55    0x147ba3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12         #  56    0x147ba5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx          #  57    0x147baa  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  58    0x147baf  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  59    0x147bb2  3      OPC=addq_r64_r64   
  jmpq ._fgetwc_r               #  60    0x147bb5  5      OPC=jmpq_label_1   
  nop                           #  61    0x147bba  1      OPC=nop            
  nop                           #  62    0x147bbb  1      OPC=nop            
  nop                           #  63    0x147bbc  1      OPC=nop            
  nop                           #  64    0x147bbd  1      OPC=nop            
  nop                           #  65    0x147bbe  1      OPC=nop            
  nop                           #  66    0x147bbf  1      OPC=nop            
                                                                             
.size fgetwc, .-fgetwc

