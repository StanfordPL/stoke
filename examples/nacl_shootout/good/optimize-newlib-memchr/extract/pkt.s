  .text
  .globl pkt
  .type pkt, @function

#! file-offset 0x65f20
#! rip-offset  0x25f20
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.pkt:                           #        0x25f20  0      OPC=<label>         
  pushq %r13                    #  1     0x25f20  2      OPC=pushq_r64_1     
  pushq %r12                    #  2     0x25f22  2      OPC=pushq_r64_1     
  pushq %rbx                    #  3     0x25f24  1      OPC=pushq_r64_1     
  movl %esi, %ebx               #  4     0x25f25  2      OPC=movl_r32_r32    
  movl %edx, %r12d              #  5     0x25f27  3      OPC=movl_r32_r32    
  movl %edi, %r13d              #  6     0x25f2a  3      OPC=movl_r32_r32    
  movl $0x14, %edi              #  7     0x25f2d  5      OPC=movl_r32_imm32  
  nop                           #  8     0x25f32  1      OPC=nop             
  nop                           #  9     0x25f33  1      OPC=nop             
  nop                           #  10    0x25f34  1      OPC=nop             
  nop                           #  11    0x25f35  1      OPC=nop             
  nop                           #  12    0x25f36  1      OPC=nop             
  nop                           #  13    0x25f37  1      OPC=nop             
  nop                           #  14    0x25f38  1      OPC=nop             
  nop                           #  15    0x25f39  1      OPC=nop             
  nop                           #  16    0x25f3a  1      OPC=nop             
  callq .malloc                 #  17    0x25f3b  5      OPC=callq_label     
  movl %eax, %eax               #  18    0x25f40  2      OPC=movl_r32_r32    
  movl %eax, %eax               #  19    0x25f42  2      OPC=movl_r32_r32    
  movb $0x0, 0x10(%r15,%rax,1)  #  20    0x25f44  6      OPC=movb_m8_imm8    
  movl %eax, %eax               #  21    0x25f4a  2      OPC=movl_r32_r32    
  movb $0x0, 0x11(%r15,%rax,1)  #  22    0x25f4c  6      OPC=movb_m8_imm8    
  movl %eax, %eax               #  23    0x25f52  2      OPC=movl_r32_r32    
  movb $0x0, 0x12(%r15,%rax,1)  #  24    0x25f54  6      OPC=movb_m8_imm8    
  nop                           #  25    0x25f5a  1      OPC=nop             
  nop                           #  26    0x25f5b  1      OPC=nop             
  nop                           #  27    0x25f5c  1      OPC=nop             
  nop                           #  28    0x25f5d  1      OPC=nop             
  nop                           #  29    0x25f5e  1      OPC=nop             
  nop                           #  30    0x25f5f  1      OPC=nop             
  movl %eax, %eax               #  31    0x25f60  2      OPC=movl_r32_r32    
  movb $0x0, 0x13(%r15,%rax,1)  #  32    0x25f62  6      OPC=movb_m8_imm8    
  movl %eax, %eax               #  33    0x25f68  2      OPC=movl_r32_r32    
  movl %r13d, (%r15,%rax,1)     #  34    0x25f6a  4      OPC=movl_m32_r32    
  movl %eax, %eax               #  35    0x25f6e  2      OPC=movl_r32_r32    
  movl %ebx, 0x4(%r15,%rax,1)   #  36    0x25f70  5      OPC=movl_m32_r32    
  movl %eax, %eax               #  37    0x25f75  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rax,1)  #  38    0x25f77  5      OPC=movl_m32_r32    
  nop                           #  39    0x25f7c  1      OPC=nop             
  nop                           #  40    0x25f7d  1      OPC=nop             
  nop                           #  41    0x25f7e  1      OPC=nop             
  nop                           #  42    0x25f7f  1      OPC=nop             
  movl %eax, %eax               #  43    0x25f80  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rax,1)   #  44    0x25f82  9      OPC=movl_m32_imm32  
  popq %rbx                     #  45    0x25f8b  1      OPC=popq_r64_1      
  popq %r12                     #  46    0x25f8c  2      OPC=popq_r64_1      
  popq %r13                     #  47    0x25f8e  2      OPC=popq_r64_1      
  popq %r11                     #  48    0x25f90  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  49    0x25f92  7      OPC=andl_r32_imm32  
  nop                           #  50    0x25f99  1      OPC=nop             
  nop                           #  51    0x25f9a  1      OPC=nop             
  nop                           #  52    0x25f9b  1      OPC=nop             
  nop                           #  53    0x25f9c  1      OPC=nop             
  addq %r15, %r11               #  54    0x25f9d  3      OPC=addq_r64_r64    
  jmpq %r11                     #  55    0x25fa0  3      OPC=jmpq_r64        
  nop                           #  56    0x25fa3  1      OPC=nop             
  nop                           #  57    0x25fa4  1      OPC=nop             
  nop                           #  58    0x25fa5  1      OPC=nop             
  nop                           #  59    0x25fa6  1      OPC=nop             
                                                                             
.size pkt, .-pkt

