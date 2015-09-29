  .text
  .globl __gmp_tmp_reentrant_alloc
  .type __gmp_tmp_reentrant_alloc, @function

#! file-offset 0x786a0
#! rip-offset  0x386a0
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmp_tmp_reentrant_alloc:     #        0x386a0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)         #  1     0x386a0  5      OPC=movq_m64_r64    
  leal 0x8(%rsi), %r12d         #  2     0x386a5  4      OPC=leal_r32_m16    
  movq %rbx, -0x10(%rsp)        #  3     0x386a9  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0x386ae  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0x386b1  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  6     0x386b4  2      OPC=movl_r32_r32    
  movl 0x10038190(%rip), %eax   #  7     0x386b6  6      OPC=movl_r32_m32    
  movl %r12d, %edi              #  8     0x386bc  3      OPC=movl_r32_r32    
  nop                           #  9     0x386bf  1      OPC=nop             
  nop                           #  10    0x386c0  1      OPC=nop             
  nop                           #  11    0x386c1  1      OPC=nop             
  nop                           #  12    0x386c2  1      OPC=nop             
  nop                           #  13    0x386c3  1      OPC=nop             
  nop                           #  14    0x386c4  1      OPC=nop             
  nop                           #  15    0x386c5  1      OPC=nop             
  nop                           #  16    0x386c6  1      OPC=nop             
  nop                           #  17    0x386c7  1      OPC=nop             
  nop                           #  18    0x386c8  1      OPC=nop             
  nop                           #  19    0x386c9  1      OPC=nop             
  nop                           #  20    0x386ca  1      OPC=nop             
  nop                           #  21    0x386cb  1      OPC=nop             
  nop                           #  22    0x386cc  1      OPC=nop             
  nop                           #  23    0x386cd  1      OPC=nop             
  nop                           #  24    0x386ce  1      OPC=nop             
  nop                           #  25    0x386cf  1      OPC=nop             
  nop                           #  26    0x386d0  1      OPC=nop             
  nop                           #  27    0x386d1  1      OPC=nop             
  nop                           #  28    0x386d2  1      OPC=nop             
  nop                           #  29    0x386d3  1      OPC=nop             
  nop                           #  30    0x386d4  1      OPC=nop             
  nop                           #  31    0x386d5  1      OPC=nop             
  nop                           #  32    0x386d6  1      OPC=nop             
  nop                           #  33    0x386d7  1      OPC=nop             
  andl $0xffffffe0, %eax        #  34    0x386d8  6      OPC=andl_r32_imm32  
  nop                           #  35    0x386de  1      OPC=nop             
  nop                           #  36    0x386df  1      OPC=nop             
  nop                           #  37    0x386e0  1      OPC=nop             
  addq %r15, %rax               #  38    0x386e1  3      OPC=addq_r64_r64    
  callq %rax                    #  39    0x386e4  2      OPC=callq_r64       
  movl %ebx, %ebx               #  40    0x386e6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx      #  41    0x386e8  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  42    0x386ec  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  43    0x386ee  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rax,1)  #  44    0x386f0  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  45    0x386f5  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  46    0x386f7  4      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  47    0x386fb  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)      #  48    0x386fd  4      OPC=movl_m32_r32    
  addl $0x8, %eax               #  49    0x38701  3      OPC=addl_r32_imm8   
  xchgw %ax, %ax                #  50    0x38704  2      OPC=xchgw_ax_r16    
  movq 0x8(%rsp), %rbx          #  51    0x38706  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12         #  52    0x3870b  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  53    0x38710  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  54    0x38713  3      OPC=addq_r64_r64    
  popq %r11                     #  55    0x38716  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  56    0x38718  7      OPC=andl_r32_imm32  
  nop                           #  57    0x3871f  1      OPC=nop             
  nop                           #  58    0x38720  1      OPC=nop             
  nop                           #  59    0x38721  1      OPC=nop             
  nop                           #  60    0x38722  1      OPC=nop             
  addq %r15, %r11               #  61    0x38723  3      OPC=addq_r64_r64    
  jmpq %r11                     #  62    0x38726  3      OPC=jmpq_r64        
  nop                           #  63    0x38729  1      OPC=nop             
  nop                           #  64    0x3872a  1      OPC=nop             
  nop                           #  65    0x3872b  1      OPC=nop             
  nop                           #  66    0x3872c  1      OPC=nop             
                                                                             
.size __gmp_tmp_reentrant_alloc, .-__gmp_tmp_reentrant_alloc

