  .text
  .globl __gmpz_init_set_ui
  .type __gmpz_init_set_ui, @function

#! file-offset 0x71640
#! rip-offset  0x31640
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__gmpz_init_set_ui:           #        0x31640  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)       #  1     0x31640  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)        #  2     0x31645  5      OPC=movq_m64_r64    
  movl %edi, %ebx              #  3     0x3164a  2      OPC=movl_r32_r32    
  subl $0x18, %esp             #  4     0x3164c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  5     0x3164f  3      OPC=addq_r64_r64    
  movl 0x1003f1f4(%rip), %eax  #  6     0x31652  6      OPC=movl_r32_m32    
  movl %esi, %r12d             #  7     0x31658  3      OPC=movl_r32_r32    
  nop                          #  8     0x3165b  1      OPC=nop             
  nop                          #  9     0x3165c  1      OPC=nop             
  nop                          #  10    0x3165d  1      OPC=nop             
  nop                          #  11    0x3165e  1      OPC=nop             
  nop                          #  12    0x3165f  1      OPC=nop             
  movl %ebx, %ebx              #  13    0x31660  2      OPC=movl_r32_r32    
  movl $0x1, (%r15,%rbx,1)     #  14    0x31662  8      OPC=movl_m32_imm32  
  movl $0x4, %edi              #  15    0x3166a  5      OPC=movl_r32_imm32  
  nop                          #  16    0x3166f  1      OPC=nop             
  nop                          #  17    0x31670  1      OPC=nop             
  nop                          #  18    0x31671  1      OPC=nop             
  nop                          #  19    0x31672  1      OPC=nop             
  nop                          #  20    0x31673  1      OPC=nop             
  nop                          #  21    0x31674  1      OPC=nop             
  nop                          #  22    0x31675  1      OPC=nop             
  nop                          #  23    0x31676  1      OPC=nop             
  nop                          #  24    0x31677  1      OPC=nop             
  andl $0xffffffe0, %eax       #  25    0x31678  6      OPC=andl_r32_imm32  
  nop                          #  26    0x3167e  1      OPC=nop             
  nop                          #  27    0x3167f  1      OPC=nop             
  nop                          #  28    0x31680  1      OPC=nop             
  addq %r15, %rax              #  29    0x31681  3      OPC=addq_r64_r64    
  callq %rax                   #  30    0x31684  2      OPC=callq_r64       
  movl %eax, %eax              #  31    0x31686  2      OPC=movl_r32_r32    
  movl %eax, %eax              #  32    0x31688  2      OPC=movl_r32_r32    
  movl %r12d, (%r15,%rax,1)    #  33    0x3168a  4      OPC=movl_m32_r32    
  movl %ebx, %ebx              #  34    0x3168e  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)  #  35    0x31690  5      OPC=movl_m32_r32    
  xorl %eax, %eax              #  36    0x31695  2      OPC=xorl_r32_r32    
  testl %r12d, %r12d           #  37    0x31697  3      OPC=testl_r32_r32   
  movq 0x10(%rsp), %r12        #  38    0x3169a  5      OPC=movq_r64_m64    
  setne %al                    #  39    0x3169f  3      OPC=setne_r8        
  nop                          #  40    0x316a2  1      OPC=nop             
  nop                          #  41    0x316a3  1      OPC=nop             
  nop                          #  42    0x316a4  1      OPC=nop             
  nop                          #  43    0x316a5  1      OPC=nop             
  movl %ebx, %ebx              #  44    0x316a6  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)  #  45    0x316a8  5      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx         #  46    0x316ad  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  47    0x316b2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  48    0x316b5  3      OPC=addq_r64_r64    
  popq %r11                    #  49    0x316b8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  50    0x316ba  7      OPC=andl_r32_imm32  
  nop                          #  51    0x316c1  1      OPC=nop             
  nop                          #  52    0x316c2  1      OPC=nop             
  nop                          #  53    0x316c3  1      OPC=nop             
  nop                          #  54    0x316c4  1      OPC=nop             
  addq %r15, %r11              #  55    0x316c5  3      OPC=addq_r64_r64    
  jmpq %r11                    #  56    0x316c8  3      OPC=jmpq_r64        
  nop                          #  57    0x316cb  1      OPC=nop             
  nop                          #  58    0x316cc  1      OPC=nop             
                                                                            
.size __gmpz_init_set_ui, .-__gmpz_init_set_ui

