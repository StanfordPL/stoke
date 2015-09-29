  .text
  .globl __gmpz_init_set_ui
  .type __gmpz_init_set_ui, @function

#! file-offset 0x71d60
#! rip-offset  0x31d60
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmpz_init_set_ui:           #        0x31d60  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)       #  1     0x31d60  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)        #  2     0x31d65  5      OPC=movq_m64_r64    
  movl %edi, %ebx              #  3     0x31d6a  2      OPC=movl_r32_r32    
  subl $0x18, %esp             #  4     0x31d6c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  5     0x31d6f  3      OPC=addq_r64_r64    
  movl 0x1003ead4(%rip), %eax  #  6     0x31d72  6      OPC=movl_r32_m32    
  movl %esi, %r12d             #  7     0x31d78  3      OPC=movl_r32_r32    
  nop                          #  8     0x31d7b  1      OPC=nop             
  nop                          #  9     0x31d7c  1      OPC=nop             
  nop                          #  10    0x31d7d  1      OPC=nop             
  nop                          #  11    0x31d7e  1      OPC=nop             
  nop                          #  12    0x31d7f  1      OPC=nop             
  movl %ebx, %ebx              #  13    0x31d80  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)     #  14    0x31d82  8      OPC=movl_m32_imm32  
  movl $0x4, %edi              #  15    0x31d8a  5      OPC=movl_r32_imm32  
  nop                          #  16    0x31d8f  1      OPC=nop             
  nop                          #  17    0x31d90  1      OPC=nop             
  nop                          #  18    0x31d91  1      OPC=nop             
  nop                          #  19    0x31d92  1      OPC=nop             
  nop                          #  20    0x31d93  1      OPC=nop             
  nop                          #  21    0x31d94  1      OPC=nop             
  nop                          #  22    0x31d95  1      OPC=nop             
  nop                          #  23    0x31d96  1      OPC=nop             
  nop                          #  24    0x31d97  1      OPC=nop             
  andl $0xffffffe0, %eax       #  25    0x31d98  6      OPC=andl_r32_imm32  
  nop                          #  26    0x31d9e  1      OPC=nop             
  nop                          #  27    0x31d9f  1      OPC=nop             
  nop                          #  28    0x31da0  1      OPC=nop             
  addq %r15, %rax              #  29    0x31da1  3      OPC=addq_r64_r64    
  callq %rax                   #  30    0x31da4  2      OPC=callq_r64       
  movl %eax, %eax              #  31    0x31da6  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  32    0x31da8  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)    #  33    0x31daa  4      OPC=movl_m32_r32    
  movl %ebx, %ebx              #  34    0x31dae  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)  #  35    0x31db0  5      OPC=movl_m32_r32    
  xorl %eax, %eax              #  36    0x31db5  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d           #  37    0x31db7  3      OPC=testl_r32_r32   
  movq 0x10(%rsp), %r12        #  38    0x31dba  5      OPC=movq_r64_m64    
  setne %al                    #  39    0x31dbf  3      OPC=setne_r8        
  nop                          #  40    0x31dc2  1      OPC=nop             
  nop                          #  41    0x31dc3  1      OPC=nop             
  nop                          #  42    0x31dc4  1      OPC=nop             
  nop                          #  43    0x31dc5  1      OPC=nop             
  movl %ebx, %ebx              #  44    0x31dc6  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)  #  45    0x31dc8  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx         #  46    0x31dcd  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  47    0x31dd2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  48    0x31dd5  3      OPC=addq_r64_r64    
  popq %r11                    #  49    0x31dd8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  50    0x31dda  7      OPC=andl_r32_imm32  
  nop                          #  51    0x31de1  1      OPC=nop             
  nop                          #  52    0x31de2  1      OPC=nop             
  nop                          #  53    0x31de3  1      OPC=nop             
  nop                          #  54    0x31de4  1      OPC=nop             
  addq %r15, %r11              #  55    0x31de5  3      OPC=addq_r64_r64    
  jmpq %r11                    #  56    0x31de8  3      OPC=jmpq_r64        
  nop                          #  57    0x31deb  1      OPC=nop             
  nop                          #  58    0x31dec  1      OPC=nop             
                                                                            
.size __gmpz_init_set_ui, .-__gmpz_init_set_ui

