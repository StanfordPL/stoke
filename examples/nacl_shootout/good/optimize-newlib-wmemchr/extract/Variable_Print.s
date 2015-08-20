  .text
  .globl Variable_Print
  .type Variable_Print, @function

#! file-offset 0x66be0
#! rip-offset  0x26be0
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.Variable_Print:                #        0x26be0  0      OPC=<label>         
  pushq %r12                    #  1     0x26be0  2      OPC=pushq_r64_1     
  pushq %rbx                    #  2     0x26be2  1      OPC=pushq_r64_1     
  subl $0x8, %esp               #  3     0x26be3  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  4     0x26be6  3      OPC=addq_r64_r64    
  movl %edi, %ebx               #  5     0x26be9  2      OPC=movl_r32_r32    
  movl %ebx, %ebx               #  6     0x26beb  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r12d     #  7     0x26bed  4      OPC=movl_r32_m32    
  movl %ebx, %ebx               #  8     0x26bf1  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rbx,1), %edi  #  9     0x26bf3  5      OPC=movl_r32_m32    
  nop                           #  10    0x26bf8  1      OPC=nop             
  nop                           #  11    0x26bf9  1      OPC=nop             
  nop                           #  12    0x26bfa  1      OPC=nop             
  callq .StrengthString         #  13    0x26bfb  5      OPC=callq_label     
  movl %eax, %edx               #  14    0x26c00  2      OPC=movl_r32_r32    
  leal 0x18(%rbx), %esi         #  15    0x26c02  3      OPC=leal_r32_m16    
  movl %r12d, %ecx              #  16    0x26c05  3      OPC=movl_r32_r32    
  movl $0x10020aae, %edi        #  17    0x26c08  5      OPC=movl_r32_imm32  
  xorl %eax, %eax               #  18    0x26c0d  2      OPC=xorl_r32_r32    
  addl $0x8, %esp               #  19    0x26c0f  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  20    0x26c12  3      OPC=addq_r64_r64    
  popq %rbx                     #  21    0x26c15  1      OPC=popq_r64_1      
  popq %r12                     #  22    0x26c16  2      OPC=popq_r64_1      
  jmpq .printf                  #  23    0x26c18  5      OPC=jmpq_label_1    
  nop                           #  24    0x26c1d  1      OPC=nop             
  nop                           #  25    0x26c1e  1      OPC=nop             
  nop                           #  26    0x26c1f  1      OPC=nop             
                                                                             
.size Variable_Print, .-Variable_Print

