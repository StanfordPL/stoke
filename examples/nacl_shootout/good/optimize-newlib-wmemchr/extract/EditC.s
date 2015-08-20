  .text
  .globl EditC
  .type EditC, @function

#! file-offset 0x68b00
#! rip-offset  0x28b00
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.EditC:                         #        0x28b00  0      OPC=<label>         
  pushq %r12                    #  1     0x28b00  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x28b02  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x28b03  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x28b06  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x28b09  2      OPC=movl_r32_r32    
  movl $0x1, %edi               #  6     0x28b0b  5      OPC=movl_r32_imm32  
  nop                           #  7     0x28b10  1      OPC=nop             
  nop                           #  8     0x28b11  1      OPC=nop             
  nop                           #  9     0x28b12  1      OPC=nop             
  nop                           #  10    0x28b13  1      OPC=nop             
  nop                           #  11    0x28b14  1      OPC=nop             
  nop                           #  12    0x28b15  1      OPC=nop             
  nop                           #  13    0x28b16  1      OPC=nop             
  nop                           #  14    0x28b17  1      OPC=nop             
  nop                           #  15    0x28b18  1      OPC=nop             
  nop                           #  16    0x28b19  1      OPC=nop             
  nop                           #  17    0x28b1a  1      OPC=nop             
  callq .Constraint_Create      #  18    0x28b1b  5      OPC=callq_label     
  movl %eax, %r12d              #  19    0x28b20  3      OPC=movl_r32_r32    
  movl %r12d, %r12d             #  20    0x28b23  3      OPC=movl_r32_r32    
  movl $0x1, 0x4(%r15,%r12,1)   #  21    0x28b26  9      OPC=movl_m32_imm32  
  movl %r12d, %r12d             #  22    0x28b2f  3      OPC=movl_r32_r32    
  movl %ebx, 0x18(%r15,%r12,1)  #  23    0x28b32  5      OPC=movl_m32_r32    
  movl %r12d, %r12d             #  24    0x28b37  3      OPC=movl_r32_r32    
  movb $0x1, 0xd(%r15,%r12,1)   #  25    0x28b3a  6      OPC=movb_m8_imm8    
  movl %r12d, %r12d             #  26    0x28b40  3      OPC=movl_r32_r32    
  movb $0x0, 0xf(%r15,%r12,1)   #  27    0x28b43  6      OPC=movb_m8_imm8    
  movl %r12d, %edi              #  28    0x28b49  3      OPC=movl_r32_r32    
  nop                           #  29    0x28b4c  1      OPC=nop             
  nop                           #  30    0x28b4d  1      OPC=nop             
  nop                           #  31    0x28b4e  1      OPC=nop             
  nop                           #  32    0x28b4f  1      OPC=nop             
  nop                           #  33    0x28b50  1      OPC=nop             
  nop                           #  34    0x28b51  1      OPC=nop             
  nop                           #  35    0x28b52  1      OPC=nop             
  nop                           #  36    0x28b53  1      OPC=nop             
  nop                           #  37    0x28b54  1      OPC=nop             
  nop                           #  38    0x28b55  1      OPC=nop             
  nop                           #  39    0x28b56  1      OPC=nop             
  nop                           #  40    0x28b57  1      OPC=nop             
  nop                           #  41    0x28b58  1      OPC=nop             
  nop                           #  42    0x28b59  1      OPC=nop             
  nop                           #  43    0x28b5a  1      OPC=nop             
  callq .AddConstraint          #  44    0x28b5b  5      OPC=callq_label     
  movl %r12d, %eax              #  45    0x28b60  3      OPC=movl_r32_r32    
  addl $0x8, %esp               #  46    0x28b63  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  47    0x28b66  3      OPC=addq_r64_r64    
  popq %rbx                     #  48    0x28b69  1      OPC=popq_r64_1      
  popq %r12                     #  49    0x28b6a  2      OPC=popq_r64_1      
  popq %r11                     #  50    0x28b6c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  51    0x28b6e  7      OPC=andl_r32_imm32  
  nop                           #  52    0x28b75  1      OPC=nop             
  nop                           #  53    0x28b76  1      OPC=nop             
  nop                           #  54    0x28b77  1      OPC=nop             
  nop                           #  55    0x28b78  1      OPC=nop             
  addq %r15, %r11               #  56    0x28b79  3      OPC=addq_r64_r64    
  jmpq %r11                     #  57    0x28b7c  3      OPC=jmpq_r64        
  nop                           #  58    0x28b7f  1      OPC=nop             
  nop                           #  59    0x28b80  1      OPC=nop             
  nop                           #  60    0x28b81  1      OPC=nop             
  nop                           #  61    0x28b82  1      OPC=nop             
  nop                           #  62    0x28b83  1      OPC=nop             
  nop                           #  63    0x28b84  1      OPC=nop             
  nop                           #  64    0x28b85  1      OPC=nop             
  nop                           #  65    0x28b86  1      OPC=nop             
                                                                             
.size EditC, .-EditC

