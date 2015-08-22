  .text
  .globl persistent_write
  .type persistent_write, @function

#! file-offset 0x61f00
#! rip-offset  0x21f00
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.persistent_write:             #        0x21f00  0      OPC=<label>         
  subl $0x8, %esp              #  1     0x21f00  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  2     0x21f03  3      OPC=addq_r64_r64    
  movl %esi, %edi              #  3     0x21f06  2      OPC=movl_r32_r32    
  movl %edx, %esi              #  4     0x21f08  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  5     0x21f0a  2      OPC=movl_r32_r32    
  movl 0x100572ae(%rip), %ecx  #  6     0x21f0c  6      OPC=movl_r32_m32    
  movl $0x1, %edx              #  7     0x21f12  5      OPC=movl_r32_imm32  
  nop                          #  8     0x21f17  1      OPC=nop             
  nop                          #  9     0x21f18  1      OPC=nop             
  nop                          #  10    0x21f19  1      OPC=nop             
  nop                          #  11    0x21f1a  1      OPC=nop             
  callq .arrayfile_fwrite      #  12    0x21f1b  5      OPC=callq_label     
  testl %eax, %eax             #  13    0x21f20  2      OPC=testl_r32_r32   
  je .L_21f40                  #  14    0x21f22  2      OPC=je_label        
  addl $0x8, %esp              #  15    0x21f24  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  16    0x21f27  3      OPC=addq_r64_r64    
  popq %r11                    #  17    0x21f2a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  18    0x21f2c  7      OPC=andl_r32_imm32  
  nop                          #  19    0x21f33  1      OPC=nop             
  nop                          #  20    0x21f34  1      OPC=nop             
  nop                          #  21    0x21f35  1      OPC=nop             
  nop                          #  22    0x21f36  1      OPC=nop             
  addq %r15, %r11              #  23    0x21f37  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0x21f3a  3      OPC=jmpq_r64        
  nop                          #  25    0x21f3d  1      OPC=nop             
  nop                          #  26    0x21f3e  1      OPC=nop             
  nop                          #  27    0x21f3f  1      OPC=nop             
  nop                          #  28    0x21f40  1      OPC=nop             
  nop                          #  29    0x21f41  1      OPC=nop             
  nop                          #  30    0x21f42  1      OPC=nop             
  nop                          #  31    0x21f43  1      OPC=nop             
  nop                          #  32    0x21f44  1      OPC=nop             
  nop                          #  33    0x21f45  1      OPC=nop             
  nop                          #  34    0x21f46  1      OPC=nop             
.L_21f40:                      #        0x21f47  0      OPC=<label>         
  movl $0x100203d0, %ecx       #  35    0x21f47  5      OPC=movl_r32_imm32  
  movl $0x10020450, %edx       #  36    0x21f4c  5      OPC=movl_r32_imm32  
  movl $0x62, %esi             #  37    0x21f51  5      OPC=movl_r32_imm32  
  movl $0x1002038c, %edi       #  38    0x21f56  5      OPC=movl_r32_imm32  
  nop                          #  39    0x21f5b  1      OPC=nop             
  nop                          #  40    0x21f5c  1      OPC=nop             
  nop                          #  41    0x21f5d  1      OPC=nop             
  nop                          #  42    0x21f5e  1      OPC=nop             
  nop                          #  43    0x21f5f  1      OPC=nop             
  nop                          #  44    0x21f60  1      OPC=nop             
  nop                          #  45    0x21f61  1      OPC=nop             
  callq .__assert_func         #  46    0x21f62  5      OPC=callq_label     
                                                                            
.size persistent_write, .-persistent_write

