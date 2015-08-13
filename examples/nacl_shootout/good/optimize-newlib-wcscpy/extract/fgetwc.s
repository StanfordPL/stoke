  .text
  .globl fgetwc
  .type fgetwc, @function

#! file-offset 0x187080
#! rip-offset  0x147080
#! capacity    128 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.fgetwc:                        #        0x147080  0      OPC=<label>        
  movq %rbx, -0x10(%rsp)        #  1     0x147080  5      OPC=movq_m64_r64   
  movq %r12, -0x8(%rsp)         #  2     0x147085  5      OPC=movq_m64_r64   
  subl $0x18, %esp              #  3     0x14708a  3      OPC=subl_r32_imm8  
  addq %r15, %rsp               #  4     0x14708d  3      OPC=addq_r64_r64   
  movl %edi, %r12d              #  5     0x147090  3      OPC=movl_r32_r32   
  nop                           #  6     0x147093  1      OPC=nop            
  nop                           #  7     0x147094  1      OPC=nop            
  nop                           #  8     0x147095  1      OPC=nop            
  nop                           #  9     0x147096  1      OPC=nop            
  nop                           #  10    0x147097  1      OPC=nop            
  nop                           #  11    0x147098  1      OPC=nop            
  nop                           #  12    0x147099  1      OPC=nop            
  nop                           #  13    0x14709a  1      OPC=nop            
  callq .__nacl_read_tp         #  14    0x14709b  5      OPC=callq_label    
  leaq -0x480(%rax), %rax       #  15    0x1470a0  7      OPC=leaq_r64_m16   
  movl %eax, %eax               #  16    0x1470a7  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %ebx      #  17    0x1470a9  4      OPC=movl_r32_m32   
  testq %rbx, %rbx              #  18    0x1470ad  3      OPC=testq_r64_r64  
  je .L_1470e0                  #  19    0x1470b0  2      OPC=je_label       
  movl %ebx, %ebx               #  20    0x1470b2  2      OPC=movl_r32_r32   
  movl 0x38(%r15,%rbx,1), %edx  #  21    0x1470b4  5      OPC=movl_r32_m32   
  testl %edx, %edx              #  22    0x1470b9  2      OPC=testl_r32_r32  
  nop                           #  23    0x1470bb  1      OPC=nop            
  nop                           #  24    0x1470bc  1      OPC=nop            
  nop                           #  25    0x1470bd  1      OPC=nop            
  nop                           #  26    0x1470be  1      OPC=nop            
  nop                           #  27    0x1470bf  1      OPC=nop            
  jne .L_1470e0                 #  28    0x1470c0  2      OPC=jne_label      
  movl %ebx, %edi               #  29    0x1470c2  2      OPC=movl_r32_r32   
  nop                           #  30    0x1470c4  1      OPC=nop            
  nop                           #  31    0x1470c5  1      OPC=nop            
  nop                           #  32    0x1470c6  1      OPC=nop            
  nop                           #  33    0x1470c7  1      OPC=nop            
  nop                           #  34    0x1470c8  1      OPC=nop            
  nop                           #  35    0x1470c9  1      OPC=nop            
  nop                           #  36    0x1470ca  1      OPC=nop            
  nop                           #  37    0x1470cb  1      OPC=nop            
  nop                           #  38    0x1470cc  1      OPC=nop            
  nop                           #  39    0x1470cd  1      OPC=nop            
  nop                           #  40    0x1470ce  1      OPC=nop            
  nop                           #  41    0x1470cf  1      OPC=nop            
  nop                           #  42    0x1470d0  1      OPC=nop            
  nop                           #  43    0x1470d1  1      OPC=nop            
  nop                           #  44    0x1470d2  1      OPC=nop            
  nop                           #  45    0x1470d3  1      OPC=nop            
  nop                           #  46    0x1470d4  1      OPC=nop            
  nop                           #  47    0x1470d5  1      OPC=nop            
  nop                           #  48    0x1470d6  1      OPC=nop            
  nop                           #  49    0x1470d7  1      OPC=nop            
  nop                           #  50    0x1470d8  1      OPC=nop            
  nop                           #  51    0x1470d9  1      OPC=nop            
  nop                           #  52    0x1470da  1      OPC=nop            
  callq .__sinit                #  53    0x1470db  5      OPC=callq_label    
.L_1470e0:                      #        0x1470e0  0      OPC=<label>        
  movl %r12d, %esi              #  54    0x1470e0  3      OPC=movl_r32_r32   
  movl %ebx, %edi               #  55    0x1470e3  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12         #  56    0x1470e5  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx          #  57    0x1470ea  5      OPC=movq_r64_m64   
  addl $0x18, %esp              #  58    0x1470ef  3      OPC=addl_r32_imm8  
  addq %r15, %rsp               #  59    0x1470f2  3      OPC=addq_r64_r64   
  jmpq ._fgetwc_r               #  60    0x1470f5  5      OPC=jmpq_label_1   
  nop                           #  61    0x1470fa  1      OPC=nop            
  nop                           #  62    0x1470fb  1      OPC=nop            
  nop                           #  63    0x1470fc  1      OPC=nop            
  nop                           #  64    0x1470fd  1      OPC=nop            
  nop                           #  65    0x1470fe  1      OPC=nop            
  nop                           #  66    0x1470ff  1      OPC=nop            
                                                                             
.size fgetwc, .-fgetwc

