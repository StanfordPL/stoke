  .text
  .globl putchar
  .type putchar, @function

#! file-offset 0x1635c0
#! rip-offset  0x1235c0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.putchar:                      #        0x1235c0  0      OPC=<label>       
  pushq %rbx                   #  1     0x1235c0  1      OPC=pushq_r64_1   
  movl %edi, %ebx              #  2     0x1235c1  2      OPC=movl_r32_r32  
  nop                          #  3     0x1235c3  1      OPC=nop           
  nop                          #  4     0x1235c4  1      OPC=nop           
  nop                          #  5     0x1235c5  1      OPC=nop           
  nop                          #  6     0x1235c6  1      OPC=nop           
  nop                          #  7     0x1235c7  1      OPC=nop           
  nop                          #  8     0x1235c8  1      OPC=nop           
  nop                          #  9     0x1235c9  1      OPC=nop           
  nop                          #  10    0x1235ca  1      OPC=nop           
  nop                          #  11    0x1235cb  1      OPC=nop           
  nop                          #  12    0x1235cc  1      OPC=nop           
  nop                          #  13    0x1235cd  1      OPC=nop           
  nop                          #  14    0x1235ce  1      OPC=nop           
  nop                          #  15    0x1235cf  1      OPC=nop           
  nop                          #  16    0x1235d0  1      OPC=nop           
  nop                          #  17    0x1235d1  1      OPC=nop           
  nop                          #  18    0x1235d2  1      OPC=nop           
  nop                          #  19    0x1235d3  1      OPC=nop           
  nop                          #  20    0x1235d4  1      OPC=nop           
  nop                          #  21    0x1235d5  1      OPC=nop           
  nop                          #  22    0x1235d6  1      OPC=nop           
  nop                          #  23    0x1235d7  1      OPC=nop           
  nop                          #  24    0x1235d8  1      OPC=nop           
  nop                          #  25    0x1235d9  1      OPC=nop           
  nop                          #  26    0x1235da  1      OPC=nop           
  callq .__nacl_read_tp        #  27    0x1235db  5      OPC=callq_label   
  leaq -0x480(%rax), %rax      #  28    0x1235e0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi              #  29    0x1235e7  2      OPC=movl_r32_r32  
  popq %rbx                    #  30    0x1235e9  1      OPC=popq_r64_1    
  movl %eax, %eax              #  31    0x1235ea  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %eax     #  32    0x1235ec  4      OPC=movl_r32_m32  
  movl %eax, %eax              #  33    0x1235f0  2      OPC=movl_r32_r32  
  movl 0x8(%r15,%rax,1), %edx  #  34    0x1235f2  5      OPC=movl_r32_m32  
  movl %eax, %edi              #  35    0x1235f7  2      OPC=movl_r32_r32  
  jmpq ._putc_r                #  36    0x1235f9  5      OPC=jmpq_label_1  
  xchgw %ax, %ax               #  37    0x1235fe  2      OPC=xchgw_ax_r16  
                                                                           
.size putchar, .-putchar

