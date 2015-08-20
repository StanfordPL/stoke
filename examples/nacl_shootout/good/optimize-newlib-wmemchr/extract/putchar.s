  .text
  .globl putchar
  .type putchar, @function

#! file-offset 0x1638c0
#! rip-offset  0x1238c0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.putchar:                      #        0x1238c0  0      OPC=<label>       
  pushq %rbx                   #  1     0x1238c0  1      OPC=pushq_r64_1   
  movl %edi, %ebx              #  2     0x1238c1  2      OPC=movl_r32_r32  
  nop                          #  3     0x1238c3  1      OPC=nop           
  nop                          #  4     0x1238c4  1      OPC=nop           
  nop                          #  5     0x1238c5  1      OPC=nop           
  nop                          #  6     0x1238c6  1      OPC=nop           
  nop                          #  7     0x1238c7  1      OPC=nop           
  nop                          #  8     0x1238c8  1      OPC=nop           
  nop                          #  9     0x1238c9  1      OPC=nop           
  nop                          #  10    0x1238ca  1      OPC=nop           
  nop                          #  11    0x1238cb  1      OPC=nop           
  nop                          #  12    0x1238cc  1      OPC=nop           
  nop                          #  13    0x1238cd  1      OPC=nop           
  nop                          #  14    0x1238ce  1      OPC=nop           
  nop                          #  15    0x1238cf  1      OPC=nop           
  nop                          #  16    0x1238d0  1      OPC=nop           
  nop                          #  17    0x1238d1  1      OPC=nop           
  nop                          #  18    0x1238d2  1      OPC=nop           
  nop                          #  19    0x1238d3  1      OPC=nop           
  nop                          #  20    0x1238d4  1      OPC=nop           
  nop                          #  21    0x1238d5  1      OPC=nop           
  nop                          #  22    0x1238d6  1      OPC=nop           
  nop                          #  23    0x1238d7  1      OPC=nop           
  nop                          #  24    0x1238d8  1      OPC=nop           
  nop                          #  25    0x1238d9  1      OPC=nop           
  nop                          #  26    0x1238da  1      OPC=nop           
  callq .__nacl_read_tp        #  27    0x1238db  5      OPC=callq_label   
  leaq -0x480(%rax), %rax      #  28    0x1238e0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi              #  29    0x1238e7  2      OPC=movl_r32_r32  
  popq %rbx                    #  30    0x1238e9  1      OPC=popq_r64_1    
  movl %eax, %eax              #  31    0x1238ea  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %eax     #  32    0x1238ec  4      OPC=movl_r32_m32  
  movl %eax, %eax              #  33    0x1238f0  2      OPC=movl_r32_r32  
  movl 0x8(%r15,%rax,1), %edx  #  34    0x1238f2  5      OPC=movl_r32_m32  
  movl %eax, %edi              #  35    0x1238f7  2      OPC=movl_r32_r32  
  jmpq ._putc_r                #  36    0x1238f9  5      OPC=jmpq_label_1  
  xchgw %ax, %ax               #  37    0x1238fe  2      OPC=xchgw_ax_r16  
                                                                           
.size putchar, .-putchar

