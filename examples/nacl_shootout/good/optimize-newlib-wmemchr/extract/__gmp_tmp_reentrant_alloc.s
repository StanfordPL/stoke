  .text
  .globl __gmp_tmp_reentrant_alloc
  .type __gmp_tmp_reentrant_alloc, @function

#! file-offset 0x77f80
#! rip-offset  0x37f80
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.__gmp_tmp_reentrant_alloc:     #        0x37f80  0      OPC=<label>         
  movq %r12, -0x8(%rsp)         #  1     0x37f80  5      OPC=movq_m64_r64    
  leal 0x8(%rsi), %r12d         #  2     0x37f85  4      OPC=leal_r32_m16    
  movq %rbx, -0x10(%rsp)        #  3     0x37f89  5      OPC=movq_m64_r64    
  subl $0x18, %esp              #  4     0x37f8e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  5     0x37f91  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  6     0x37f94  2      OPC=movl_r32_r32    
  movl 0x100388b0(%rip), %eax   #  7     0x37f96  6      OPC=movl_r32_m32    
  movl %r12d, %edi              #  8     0x37f9c  3      OPC=movl_r32_r32    
  nop                           #  9     0x37f9f  1      OPC=nop             
  nop                           #  10    0x37fa0  1      OPC=nop             
  nop                           #  11    0x37fa1  1      OPC=nop             
  nop                           #  12    0x37fa2  1      OPC=nop             
  nop                           #  13    0x37fa3  1      OPC=nop             
  nop                           #  14    0x37fa4  1      OPC=nop             
  nop                           #  15    0x37fa5  1      OPC=nop             
  nop                           #  16    0x37fa6  1      OPC=nop             
  nop                           #  17    0x37fa7  1      OPC=nop             
  nop                           #  18    0x37fa8  1      OPC=nop             
  nop                           #  19    0x37fa9  1      OPC=nop             
  nop                           #  20    0x37faa  1      OPC=nop             
  nop                           #  21    0x37fab  1      OPC=nop             
  nop                           #  22    0x37fac  1      OPC=nop             
  nop                           #  23    0x37fad  1      OPC=nop             
  nop                           #  24    0x37fae  1      OPC=nop             
  nop                           #  25    0x37faf  1      OPC=nop             
  nop                           #  26    0x37fb0  1      OPC=nop             
  nop                           #  27    0x37fb1  1      OPC=nop             
  nop                           #  28    0x37fb2  1      OPC=nop             
  nop                           #  29    0x37fb3  1      OPC=nop             
  nop                           #  30    0x37fb4  1      OPC=nop             
  nop                           #  31    0x37fb5  1      OPC=nop             
  nop                           #  32    0x37fb6  1      OPC=nop             
  nop                           #  33    0x37fb7  1      OPC=nop             
  andl $0xffffffe0, %eax        #  34    0x37fb8  6      OPC=andl_r32_imm32  
  nop                           #  35    0x37fbe  1      OPC=nop             
  nop                           #  36    0x37fbf  1      OPC=nop             
  nop                           #  37    0x37fc0  1      OPC=nop             
  addq %r15, %rax               #  38    0x37fc1  3      OPC=addq_r64_r64    
  callq %rax                    #  39    0x37fc4  2      OPC=callq_r64       
  movl %ebx, %ebx               #  40    0x37fc6  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx      #  41    0x37fc8  4      OPC=movl_r32_m32    
  movl %eax, %eax               #  42    0x37fcc  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  43    0x37fce  2      OPC=movl_r32_r32    
  movl %r12d, 0x4(%r15,%rax,1)  #  44    0x37fd0  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  45    0x37fd5  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rax,1)      #  46    0x37fd7  4      OPC=movl_m32_r32    
  movl %ebx, %ebx               #  47    0x37fdb  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)      #  48    0x37fdd  4      OPC=movl_m32_r32    
  addl $0x8, %eax               #  49    0x37fe1  3      OPC=addl_r32_imm8   
  xchgw %ax, %ax                #  50    0x37fe4  2      OPC=xchgw_ax_r16    
  movq 0x8(%rsp), %rbx          #  51    0x37fe6  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12         #  52    0x37feb  5      OPC=movq_r64_m64    
  addl $0x18, %esp              #  53    0x37ff0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  54    0x37ff3  3      OPC=addq_r64_r64    
  popq %r11                     #  55    0x37ff6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  56    0x37ff8  7      OPC=andl_r32_imm32  
  nop                           #  57    0x37fff  1      OPC=nop             
  nop                           #  58    0x38000  1      OPC=nop             
  nop                           #  59    0x38001  1      OPC=nop             
  nop                           #  60    0x38002  1      OPC=nop             
  addq %r15, %r11               #  61    0x38003  3      OPC=addq_r64_r64    
  jmpq %r11                     #  62    0x38006  3      OPC=jmpq_r64        
  nop                           #  63    0x38009  1      OPC=nop             
  nop                           #  64    0x3800a  1      OPC=nop             
  nop                           #  65    0x3800b  1      OPC=nop             
  nop                           #  66    0x3800c  1      OPC=nop             
                                                                             
.size __gmp_tmp_reentrant_alloc, .-__gmp_tmp_reentrant_alloc

