  .text
  .globl List_RemoveFirst
  .type List_RemoveFirst, @function

#! file-offset 0x66100
#! rip-offset  0x26100
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_RemoveFirst:             #        0x26100  0      OPC=<label>         
  movl %edi, %edi              #  1     0x26100  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x26102  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x26104  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  4     0x26109  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)  #  5     0x2610b  5      OPC=cmpl_m32_r32    
  jl .L_26140                  #  6     0x26110  2      OPC=jl_label        
  leal (,%rdx,4), %eax         #  7     0x26112  7      OPC=leal_r32_m16    
  movl %edi, %edi              #  8     0x26119  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax     #  9     0x2611b  4      OPC=addl_r32_m32    
  nop                          #  10    0x2611f  1      OPC=nop             
  movl %eax, %eax              #  11    0x26120  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  12    0x26122  4      OPC=movl_r32_m32    
  addl $0x1, %edx              #  13    0x26126  3      OPC=addl_r32_imm8   
  movl %edi, %edi              #  14    0x26129  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)  #  15    0x2612b  5      OPC=movl_m32_r32    
  popq %r11                    #  16    0x26130  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  17    0x26132  7      OPC=andl_r32_imm32  
  nop                          #  18    0x26139  1      OPC=nop             
  nop                          #  19    0x2613a  1      OPC=nop             
  nop                          #  20    0x2613b  1      OPC=nop             
  nop                          #  21    0x2613c  1      OPC=nop             
  addq %r15, %r11              #  22    0x2613d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  23    0x26140  3      OPC=jmpq_r64        
  nop                          #  24    0x26143  1      OPC=nop             
  nop                          #  25    0x26144  1      OPC=nop             
  nop                          #  26    0x26145  1      OPC=nop             
  nop                          #  27    0x26146  1      OPC=nop             
.L_26140:                      #        0x26147  0      OPC=<label>         
  xorl %eax, %eax              #  28    0x26147  2      OPC=xorl_r32_r32    
  popq %r11                    #  29    0x26149  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  30    0x2614b  7      OPC=andl_r32_imm32  
  nop                          #  31    0x26152  1      OPC=nop             
  nop                          #  32    0x26153  1      OPC=nop             
  nop                          #  33    0x26154  1      OPC=nop             
  nop                          #  34    0x26155  1      OPC=nop             
  addq %r15, %r11              #  35    0x26156  3      OPC=addq_r64_r64    
  jmpq %r11                    #  36    0x26159  3      OPC=jmpq_r64        
  nop                          #  37    0x2615c  1      OPC=nop             
  nop                          #  38    0x2615d  1      OPC=nop             
  nop                          #  39    0x2615e  1      OPC=nop             
  nop                          #  40    0x2615f  1      OPC=nop             
  nop                          #  41    0x26160  1      OPC=nop             
  nop                          #  42    0x26161  1      OPC=nop             
  nop                          #  43    0x26162  1      OPC=nop             
  nop                          #  44    0x26163  1      OPC=nop             
  nop                          #  45    0x26164  1      OPC=nop             
  nop                          #  46    0x26165  1      OPC=nop             
  nop                          #  47    0x26166  1      OPC=nop             
  nop                          #  48    0x26167  1      OPC=nop             
  nop                          #  49    0x26168  1      OPC=nop             
  nop                          #  50    0x26169  1      OPC=nop             
  nop                          #  51    0x2616a  1      OPC=nop             
  nop                          #  52    0x2616b  1      OPC=nop             
  nop                          #  53    0x2616c  1      OPC=nop             
  nop                          #  54    0x2616d  1      OPC=nop             
                                                                            
.size List_RemoveFirst, .-List_RemoveFirst

