  .text
  .globl __gmpz_init_set_ui
  .type __gmpz_init_set_ui, @function

#! file-offset 0x71340
#! rip-offset  0x31340
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmpz_init_set_ui:           #        0x31340  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)       #  1     0x31340  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)        #  2     0x31345  5      OPC=movq_m64_r64    
  movl %edi, %ebx              #  3     0x3134a  2      OPC=movl_r32_r32    
  subl $0x18, %esp             #  4     0x3134c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  5     0x3134f  3      OPC=addq_r64_r64    
  movl 0x1003f4f4(%rip), %eax  #  6     0x31352  6      OPC=movl_r32_m32    
  movl %esi, %r12d             #  7     0x31358  3      OPC=movl_r32_r32    
  nop                          #  8     0x3135b  1      OPC=nop             
  nop                          #  9     0x3135c  1      OPC=nop             
  nop                          #  10    0x3135d  1      OPC=nop             
  nop                          #  11    0x3135e  1      OPC=nop             
  nop                          #  12    0x3135f  1      OPC=nop             
  movl %ebx, %ebx              #  13    0x31360  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)     #  14    0x31362  8      OPC=movl_m32_imm32  
  movl $0x4, %edi              #  15    0x3136a  5      OPC=movl_r32_imm32  
  nop                          #  16    0x3136f  1      OPC=nop             
  nop                          #  17    0x31370  1      OPC=nop             
  nop                          #  18    0x31371  1      OPC=nop             
  nop                          #  19    0x31372  1      OPC=nop             
  nop                          #  20    0x31373  1      OPC=nop             
  nop                          #  21    0x31374  1      OPC=nop             
  nop                          #  22    0x31375  1      OPC=nop             
  nop                          #  23    0x31376  1      OPC=nop             
  nop                          #  24    0x31377  1      OPC=nop             
  andl $0xffffffe0, %eax       #  25    0x31378  6      OPC=andl_r32_imm32  
  nop                          #  26    0x3137e  1      OPC=nop             
  nop                          #  27    0x3137f  1      OPC=nop             
  nop                          #  28    0x31380  1      OPC=nop             
  addq %r15, %rax              #  29    0x31381  3      OPC=addq_r64_r64    
  callq %rax                   #  30    0x31384  2      OPC=callq_r64       
  movl %eax, %eax              #  31    0x31386  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  32    0x31388  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)    #  33    0x3138a  4      OPC=movl_m32_r32    
  movl %ebx, %ebx              #  34    0x3138e  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)  #  35    0x31390  5      OPC=movl_m32_r32    
  xorl %eax, %eax              #  36    0x31395  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d           #  37    0x31397  3      OPC=testl_r32_r32   
  movq 0x10(%rsp), %r12        #  38    0x3139a  5      OPC=movq_r64_m64    
  setne %al                    #  39    0x3139f  3      OPC=setne_r8        
  nop                          #  40    0x313a2  1      OPC=nop             
  nop                          #  41    0x313a3  1      OPC=nop             
  nop                          #  42    0x313a4  1      OPC=nop             
  nop                          #  43    0x313a5  1      OPC=nop             
  movl %ebx, %ebx              #  44    0x313a6  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)  #  45    0x313a8  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx         #  46    0x313ad  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  47    0x313b2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  48    0x313b5  3      OPC=addq_r64_r64    
  popq %r11                    #  49    0x313b8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  50    0x313ba  7      OPC=andl_r32_imm32  
  nop                          #  51    0x313c1  1      OPC=nop             
  nop                          #  52    0x313c2  1      OPC=nop             
  nop                          #  53    0x313c3  1      OPC=nop             
  nop                          #  54    0x313c4  1      OPC=nop             
  addq %r15, %r11              #  55    0x313c5  3      OPC=addq_r64_r64    
  jmpq %r11                    #  56    0x313c8  3      OPC=jmpq_r64        
  nop                          #  57    0x313cb  1      OPC=nop             
  nop                          #  58    0x313cc  1      OPC=nop             
                                                                            
.size __gmpz_init_set_ui, .-__gmpz_init_set_ui

