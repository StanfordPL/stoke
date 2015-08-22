  .text
  .globl putchar
  .type putchar, @function

#! file-offset 0x163fe0
#! rip-offset  0x123fe0
#! capacity    64 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.putchar:                      #        0x123fe0  0      OPC=<label>       
  pushq %rbx                   #  1     0x123fe0  1      OPC=pushq_r64_1   
  movl %edi, %ebx              #  2     0x123fe1  2      OPC=movl_r32_r32  
  nop                          #  3     0x123fe3  1      OPC=nop           
  nop                          #  4     0x123fe4  1      OPC=nop           
  nop                          #  5     0x123fe5  1      OPC=nop           
  nop                          #  6     0x123fe6  1      OPC=nop           
  nop                          #  7     0x123fe7  1      OPC=nop           
  nop                          #  8     0x123fe8  1      OPC=nop           
  nop                          #  9     0x123fe9  1      OPC=nop           
  nop                          #  10    0x123fea  1      OPC=nop           
  nop                          #  11    0x123feb  1      OPC=nop           
  nop                          #  12    0x123fec  1      OPC=nop           
  nop                          #  13    0x123fed  1      OPC=nop           
  nop                          #  14    0x123fee  1      OPC=nop           
  nop                          #  15    0x123fef  1      OPC=nop           
  nop                          #  16    0x123ff0  1      OPC=nop           
  nop                          #  17    0x123ff1  1      OPC=nop           
  nop                          #  18    0x123ff2  1      OPC=nop           
  nop                          #  19    0x123ff3  1      OPC=nop           
  nop                          #  20    0x123ff4  1      OPC=nop           
  nop                          #  21    0x123ff5  1      OPC=nop           
  nop                          #  22    0x123ff6  1      OPC=nop           
  nop                          #  23    0x123ff7  1      OPC=nop           
  nop                          #  24    0x123ff8  1      OPC=nop           
  nop                          #  25    0x123ff9  1      OPC=nop           
  nop                          #  26    0x123ffa  1      OPC=nop           
  callq .__nacl_read_tp        #  27    0x123ffb  5      OPC=callq_label   
  leaq -0x480(%rax), %rax      #  28    0x124000  7      OPC=leaq_r64_m16  
  movl %ebx, %esi              #  29    0x124007  2      OPC=movl_r32_r32  
  popq %rbx                    #  30    0x124009  1      OPC=popq_r64_1    
  movl %eax, %eax              #  31    0x12400a  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %eax     #  32    0x12400c  4      OPC=movl_r32_m32  
  movl %eax, %eax              #  33    0x124010  2      OPC=movl_r32_r32  
  movl 0x8(%r15,%rax,1), %edx  #  34    0x124012  5      OPC=movl_r32_m32  
  movl %eax, %edi              #  35    0x124017  2      OPC=movl_r32_r32  
  jmpq ._putc_r                #  36    0x124019  5      OPC=jmpq_label_1  
  xchgw %ax, %ax               #  37    0x12401e  2      OPC=xchgw_ax_r16  
                                                                           
.size putchar, .-putchar

