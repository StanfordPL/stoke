  .text
  .globl EditC
  .type EditC, @function

#! file-offset 0x68ae0
#! rip-offset  0x28ae0
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.EditC:                         #        0x28ae0  0      OPC=<label>         
  pushq %r12                    #  1     0x28ae0  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x28ae2  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x28ae3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x28ae6  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x28ae9  2      OPC=movl_r32_r32    
  movl $0x1, %edi               #  6     0x28aeb  5      OPC=movl_r32_imm32  
  nop                           #  7     0x28af0  1      OPC=nop             
  nop                           #  8     0x28af1  1      OPC=nop             
  nop                           #  9     0x28af2  1      OPC=nop             
  nop                           #  10    0x28af3  1      OPC=nop             
  nop                           #  11    0x28af4  1      OPC=nop             
  nop                           #  12    0x28af5  1      OPC=nop             
  nop                           #  13    0x28af6  1      OPC=nop             
  nop                           #  14    0x28af7  1      OPC=nop             
  nop                           #  15    0x28af8  1      OPC=nop             
  nop                           #  16    0x28af9  1      OPC=nop             
  nop                           #  17    0x28afa  1      OPC=nop             
  callq .Constraint_Create      #  18    0x28afb  5      OPC=callq_label     
  movl %eax, %r12d              #  19    0x28b00  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  20    0x28b03  3      OPC=movl_r32_r32    
  movl $0x1, 0x4(%r15,%r12,1)   #  21    0x28b06  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d             #  22    0x28b0f  3      OPC=movl_r32_r32    
  movl %ebx, 0x18(%r15,%r12,1)  #  23    0x28b12  5      OPC=movl_m32_r32    
  movl %r12d, %r12d             #  24    0x28b17  3      OPC=movl_r32_r32    
  movb $0x1, 0xd(%r15,%r12,1)   #  25    0x28b1a  6      OPC=movb_m8_imm8    
  movl %r12d, %r12d             #  26    0x28b20  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r12,1)   #  27    0x28b23  6      OPC=movb_m8_imm8    
  movl %r12d, %edi              #  28    0x28b29  3      OPC=movl_r32_r32    
  nop                           #  29    0x28b2c  1      OPC=nop             
  nop                           #  30    0x28b2d  1      OPC=nop             
  nop                           #  31    0x28b2e  1      OPC=nop             
  nop                           #  32    0x28b2f  1      OPC=nop             
  nop                           #  33    0x28b30  1      OPC=nop             
  nop                           #  34    0x28b31  1      OPC=nop             
  nop                           #  35    0x28b32  1      OPC=nop             
  nop                           #  36    0x28b33  1      OPC=nop             
  nop                           #  37    0x28b34  1      OPC=nop             
  nop                           #  38    0x28b35  1      OPC=nop             
  nop                           #  39    0x28b36  1      OPC=nop             
  nop                           #  40    0x28b37  1      OPC=nop             
  nop                           #  41    0x28b38  1      OPC=nop             
  nop                           #  42    0x28b39  1      OPC=nop             
  nop                           #  43    0x28b3a  1      OPC=nop             
  callq .AddConstraint          #  44    0x28b3b  5      OPC=callq_label     
  movl %r12d, %eax              #  45    0x28b40  3      OPC=movl_r32_r32    
  addl $0x8, %esp               #  46    0x28b43  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  47    0x28b46  3      OPC=addq_r64_r64    
  popq %rbx                     #  48    0x28b49  1      OPC=popq_r64_1      
  popq %r12                     #  49    0x28b4a  2      OPC=popq_r64_1      
  popq %r11                     #  50    0x28b4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  51    0x28b4e  7      OPC=andl_r32_imm32  
  nop                           #  52    0x28b55  1      OPC=nop             
  nop                           #  53    0x28b56  1      OPC=nop             
  nop                           #  54    0x28b57  1      OPC=nop             
  nop                           #  55    0x28b58  1      OPC=nop             
  addq %r15, %r11               #  56    0x28b59  3      OPC=addq_r64_r64    
  jmpq %r11                     #  57    0x28b5c  3      OPC=jmpq_r64        
  nop                           #  58    0x28b5f  1      OPC=nop             
  nop                           #  59    0x28b60  1      OPC=nop             
  nop                           #  60    0x28b61  1      OPC=nop             
  nop                           #  61    0x28b62  1      OPC=nop             
  nop                           #  62    0x28b63  1      OPC=nop             
  nop                           #  63    0x28b64  1      OPC=nop             
  nop                           #  64    0x28b65  1      OPC=nop             
  nop                           #  65    0x28b66  1      OPC=nop             
                                                                             
.size EditC, .-EditC

